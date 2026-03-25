#!/bin/bash


function ctrlc()
{
   echo "Program interrupted...exiting!"
   exit
}
trap ctrlc SIGINT


# global variables
down=0
polar="no"
mkdir -p /var/run/netns
mkdir -p /sys/fs/bpf/tc/globals


# Parsing options
OPTS=$(getopt -o tdc: \
   --long down,config: -- "$@")

if [ "$?" -ne 0 ]; then
   exit 1;
fi

eval set -- "$OPTS"
while [ "$#" -gt 0 ]; do
  case "$1" in
     -d | --down)
          down=1
          shift
          ;;
     -c | --config)
          config_file=$2
          shift 2
          ;;
     --)  shift
          break
          ;;
  esac
done


if [ "$down" -eq 1 ]; then
  docker kill $(docker ps -a -q)
  #docker stop $(docker ps -a -q) -t 1
  docker container prune -f
  rm  /var/run/netns/*
  rm -rf /sys/fs/bpf/*
  rm -rf frr
  ip link del bleobr type bridge
  exit
fi


if [ "$config_file" = "" ]; then
   echo "Please, specify the config file (--config)"
   exit
fi
source $config_file


isup=$(ip link | grep bleobr)
if [ ! "$isup" = "" ]; then
  echo "System is running, shut it down first!"
  exit
fi


if ! [ -x "$updatemap" ]; then
   echo "file $updatemap does not exist (or is not an executable)"
   exit
fi

if ! [ -f "$setprop" ]; then
   echo "file $setprop does not exist"
   exit
fi

if [ $mapsize -lt $(($maxp*$maxs*6)) ]; then
   echo "eBPF map size should be at least $(($maxp*$maxs*6)). \
Please, recompile both setprop.o and updatemap files"
   exit
fi



# Functions
num2ip () {
  local b1=$(($1 & 255))
  local b2=$((($1 >> 8) & 255))
  local b3=$((($1 >> 16) & 255))
  local b4=$((($1 >> 24) & 255))
  echo $b4.$b3.$b2.$b1
}

get_neighps () {
  local p=$1
  local s=$2
  local type=$3

  case "$type" in
     "up")
         if [ "$s" -eq $(($maxs-1)) ]; then printf "p%02ds00" $p
         else printf "p%02ds%02d" $p $(($s+1))
         fi
         ;;
    "right")
         if [ "$p" -eq $(($maxp-1)) ]; then printf "p00s%02d" $s
         else printf "p%02ds%02d" $(($p+1)) $s
         fi
         ;;
  esac
}

get_nodeid () {
# First node has id = 1
  local p=${1:1:2}
  local s=${1:4:2}

  p=$((10#$p))
  s=$((10#$s))

  echo $(($p * $maxs + $s + 1))
}



get_ip () {
  local id1=$(($1 & 2047))
  local id2=$(($2 & 2047))
  local dev=$3

  byte1=$(($id1 & 255))
  byte2=$(($id2 & 255))

  b3id1=$(( (id1 & 1792) >> 3 ))
  b3id2=$(( (id2 & 1792) >> 6 ))

  if [ "$dev" = "north" ]   || [ "$dev" = "east" ]; then byte3=$(($b3id1 + $b3id2 + 1)); fi
  if [ "$dev" = "south" ]   || [ "$dev" = "west" ]; then byte3=$(($b3id1 + $b3id2 + 2)); fi
  if [ "$dev" = "sattogs" ] || [ "$dev" = "termtogs" ]; then byte3=$(($b3id1 + $b3id2 + 1)); fi
  if [ "$dev" = "gstosat" ] || [ "$dev" = "gstoterm" ]; then byte3=$(($b3id1 + $b3id2 + 2)); fi

  echo "10.$byte1.$byte2.$byte3"
}


get_lo () {
  local id1=$(($1 & 2047))

  local b1=$(($id1 & 255))
  local b2=$(( (($id1 & 1792) >> 3)))

  echo "172.16.$b1.$b2"
}


mk_frr () {
cat <<EOF > frr.conf
frr version 8.1
frr defaults traditional
no ipv6 forwarding
domainname
!
router ospf
 network 10.0.0.0/8 area 0.0.0.0
 network 172.16.0.0/16 area 0.0.0.0
 exit
!
interface lo
 ip ospf passive 0.0.0.0
 exit
!
EOF
}


# Creating satellites
for (( p=0; p<$maxp; p++ )); do
  for (( s=0; s<$maxs; s++ )); do
     node=`printf "p%02ds%02d" $p $s`
     echo -n "Creating container $node..."
     docker run -dit --privileged --name $node -v /sys/fs/bpf:/sys/fs/bpf $docker_img /bin/bash >/dev/null 2>&1
     PID=`docker inspect -f '{{.State.Pid}}' $node`
     ln -s /proc/"$PID"/ns/net /var/run/netns/$node
     ip netns exec $node ip link delete eth0
     echo "done!"
  done
done

# Creating Ground Stations (GS)
for (( i=1; i <= $numgs; i++ )); do
    gs=gs${i}
    echo -n "Creating ground stations $gs..."
    docker run -dit --privileged --name $gs -v /sys/fs/bpf:/sys/fs/bpf $docker_img /bin/bash >/dev/null 2>&1
    PID=`docker inspect -f '{{.State.Pid}}' $gs`
    ln -s /proc/"$PID"/ns/net /var/run/netns/$gs
    ip netns exec $gs ip link delete eth0
    echo "done!"
done


# Creating terminals
for (( i=1; i <= $numterm; i++ )); do
    term=term${i}
    echo -n "Creating terminals $term..."
    docker run -dit --privileged --name $term -v /sys/fs/bpf:/sys/fs/bpf $docker_img /bin/bash >/dev/null 2>&1
    PID=`docker inspect -f '{{.State.Pid}}' $term`
    ln -s /proc/"$PID"/ns/net /var/run/netns/$term
    ip netns exec $term ip link delete eth0
    echo "done!"
done



# North and South interfaces creation
for (( p=0; p<$maxp; p++ )); do
  for (( s=0; s<$maxs; s++ )); do
     node=`printf "p%02ds%02d" $p $s`
     nodeup=$(get_neighps $p $s "up")
     nodeid=$(get_nodeid $node)
     nodeidup=$(get_nodeid $nodeup)

     if [ "$ip" = "yes" ]; then
        nodeip=$(get_ip $nodeid $nodeidup "north")
        nodeipup=$(get_ip $nodeid $nodeidup "south")
     fi

     echo -n "Creating north and south links between $node -- $nodeup..."
     ip link add ${node}north type veth peer name ${nodeup}south

     ip link set ${node}north netns $node
     ip netns exec $node ip link set ${node}north up
     if [ "$ip" = "yes" ]; then
        ip netns exec $node ip addr add $nodeip/30 dev ${node}north
     fi
     ip netns exec $node ip link set lo up;

     ip link set ${nodeup}south netns $nodeup
     ip netns exec $nodeup ip link set ${nodeup}south up
     if [ "$ip" = "yes" ]; then
        ip netns exec $nodeup ip addr add $nodeipup/30 dev ${nodeup}south
     fi

     echo "done!"
  done
done


# East and West interfaces creation
for (( p=0; p<$maxp; p++ )); do
  for (( s=0; s<$maxs; s++ )); do
     node=`printf "p%02ds%02d" $p $s`
     noderight=$(get_neighps $p $s "right")
     nodeid=$(get_nodeid $node)
     nodeidright=$(get_nodeid $noderight)

     if [ "$ip" = "yes" ]; then
        nodeip=$(get_ip $nodeid $nodeidright "east")
        nodeipright=$(get_ip $nodeid $nodeidright "west")
     fi

     echo -n "Creating east and west links between $node -- $noderight..."
     ip link add ${node}east type veth peer name ${noderight}west

     ip link set ${node}east netns $node
     ip netns exec $node ip link set ${node}east up
     if [ "$ip" = "yes" ]; then
        ip netns exec $node ip addr add $nodeip/30 dev ${node}east
     fi

     ip link set ${noderight}west netns $noderight
     ip netns exec $noderight ip link set ${noderight}west up
     if [ "$ip" = "yes" ]; then
        ip netns exec $noderight ip addr add $nodeipright/30 dev ${noderight}west
     fi

     echo "done!"
  done
done

# All satellites are connected to GS through a layer-2 linux bridge
ip link add bleobr type bridge
ip link set dev bleobr up


# LinkToGS interface creation
for (( p=0; p<$maxp; p++ )); do
  for (( s=0; s<$maxs; s++ )); do
     node=`printf "p%02ds%02d" $p $s`
     nodeid=$(get_nodeid $node)

     echo -n "Creating LinkToGS link between $node -- bridge..."
     ip link add ${node}LinkToGS type veth peer name ifbr${nodeid}

     ip link set ${node}LinkToGS netns $node
     ip netns exec $node ip link set ${node}LinkToGS up
     ip link set ifbr${nodeid} up
     ip link set ifbr${nodeid} master bleobr
     echo "done!"
  done
done


# GS interface creation
for (( i=1; i<=$numgs; i++ )); do
   gs=gs${i}
   gsid=$(( $maxp * $maxs + $i ))

   echo -n "Creating $gs link ..."
   ip link add ifgs${gsid} type veth peer name ifbr${gsid}

   ip link set ifgs${gsid} netns $gs
   ip netns exec $gs ip link set ifgs${gsid} up
   ip link set ifbr${gsid} up
   ip link set ifbr${gsid} master bleobr
   echo "done!"
done


# Term interface creation
for pair in $(echo $termc | tr ";" "\n"); do
    term=${pair%-*}
    termid=$(( $maxp * $maxs + $numgs + ${term#term} ))
    gs=${pair#*-}
    gsid=$(( $maxp * $maxs + ${gs#gs} ))

    echo -n "Creating $term link ..."
    ip link add ${term}${gs} type veth peer name ${gs}${term}

    ip link set ${term}${gs} netns $term
    ip netns exec $term ip link set ${term}${gs} up
    ip link set ${gs}${term} netns $gs
    ip netns exec $gs ip link set ${gs}${term} up
    echo "done!"
done


# loopback interface creation
for (( p=0; p<$maxp; p++ )); do
  for (( s=0; s<$maxs; s++ )); do
     node=`printf "p%02ds%02d" $p $s`
     nodeid=$(get_nodeid $node)

     echo -n "Creating loopback at node $node..."
     ip netns exec $node ip link set lo up
     if [ "$ip" = "yes" ]; then
        nodeip=$(get_lo $nodeid)
        ip netns exec $node ip addr add $nodeip/32 dev lo
     fi
     echo "done!"
  done
done
for (( i=1; i<=$numgs; i++ )); do
    gs=gs${i}
    echo -n "Creating loopback at $gs ..."
    ip netns exec $gs ip link set lo up
    if [ "$ip" = "yes" ]; then
        gsid=$(( $maxp * $maxs + $i ))
        gsip=$(get_lo $gsid)
        ip netns exec $gs ip addr add $gsip/32 dev lo
     fi
     echo "done!"
done



# Creating eBPF map and updating delays
echo -n "Setting up delays at nodes ..."
for (( p=0; p<$maxp; p++ )); do
  for (( s=0; s<$maxs; s++ )); do
     node=`printf "p%02ds%02d" $p $s`
     if_west=`ip netns exec $node ip link | grep west | awk -F ":" '{print $1}'`
     if_south=`ip netns exec $node ip link | grep south | awk -F ":" '{print $1}'`
     if_north=`ip netns exec $node ip link | grep north | awk -F ":" '{print $1}'`
     if_east=`ip netns exec $node ip link | grep east | awk -F ":" '{print $1}'`
     if_linktogs=`ip netns exec $node ip link | grep LinkToGS | awk -F ":" '{print $1}'`

     $updatemap --dev $if_west --delay $delay_west
     $updatemap --dev $if_south --delay $delay_south
     $updatemap --dev $if_east --delay $delay_east
     $updatemap --dev $if_north --delay $delay_north
     $updatemap --dev $if_linktogs --delay 0

     $tracer --dev $if_west
     $tracer --dev $if_south
     $tracer --dev $if_east
     $tracer --dev $if_north
     $tracer --dev $if_linktogs
  done
done
echo "done!"


echo -n "Setting up delays at gs ..."
for (( i=1; i<=$numgs; i++ )); do
     gs=gs${i}
     if_ifgs=`ip netns exec $gs ip link | grep ifgs | awk -F ":" '{print $1}'`
     $updatemap --dev $if_ifgs --delay 0
     $tracer --dev $if_ifgs
done
echo "done!"


# Loading and attaching the eBPF module
for (( p=0; p<$maxp; p++ )); do
  for (( s=0; s<$maxs; s++ )); do
     node=`printf "p%02ds%02d" $p $s`
     echo -n "Setting up traffic control (tc) in node $node..."
     setprop_docker=$(basename ${setprop})

     docker cp $setprop $node:/root >/dev/null 2>&1
     docker exec --privileged $node sh -c "tc qdisc  add dev ${node}west clsact"
     docker exec --privileged $node sh -c "tc qdisc  add dev ${node}west root fq"
     docker exec --privileged $node sh -c "tc filter add dev ${node}west egress bpf da obj /root/$setprop_docker sec tc_propagation"

     docker exec --privileged $node sh -c "tc qdisc  add dev ${node}north clsact"
     docker exec --privileged $node sh -c "tc qdisc  add dev ${node}north root fq"
     docker exec --privileged $node sh -c "tc filter add dev ${node}north egress bpf da obj /root/$setprop_docker sec tc_propagation"

     docker exec --privileged $node sh -c "tc qdisc  add dev ${node}east clsact"
     docker exec --privileged $node sh -c "tc qdisc  add dev ${node}east root fq"
     docker exec --privileged $node sh -c "tc filter add dev ${node}east egress bpf da obj /root/$setprop_docker sec tc_propagation"

     docker exec --privileged $node sh -c "tc qdisc  add dev ${node}south clsact"
     docker exec --privileged $node sh -c "tc qdisc  add dev ${node}south root fq"
     docker exec --privileged $node sh -c "tc filter add dev ${node}south egress bpf da obj /root/$setprop_docker sec tc_propagation"

     docker exec --privileged $node sh -c "tc qdisc  add dev ${node}LinkToGS clsact"
     docker exec --privileged $node sh -c "tc qdisc  add dev ${node}LinkToGS root fq"
     docker exec --privileged $node sh -c "tc filter add dev ${node}LinkToGS egress bpf da obj /root/$setprop_docker sec tc_propagation"
     echo "done!"
  done
done
for (( i=1; i<=$numgs; i++ )); do
     gs=gs${i}
     echo -n "Setting up traffic control (tc) in $gs ..."
     gsid=$(( $maxp * $maxs + $i ))
     docker cp $setprop $gs:/root >/dev/null 2>&1
     docker exec --privileged $gs sh -c "tc qdisc  add dev ifgs${gsid} clsact"
     docker exec --privileged $gs sh -c "tc qdisc  add dev ifgs${gsid} root fq"
     docker exec --privileged $gs sh -c "tc filter add dev ifgs${gsid} egress bpf da obj /root/$setprop_docker sec tc_propagation"
     echo "done!"
done


# Creating the seam
echo -n "Creating the seam..."
for (( s=0; s<$maxs; s++ )); do
   node=`printf "p00s%02d" $s`
   docker exec --privileged $node sh -c "tc filter del dev ${node}west egress"
   # This command also deletes east interface at the other site
   ip netns exec $node ip link delete ${node}west
done

echo "done!"



# Starting OSPF
if [ "$ospf" = "yes" ] && [ "$ip" = "yes" ] ; then
if [ "$polar" = "yes" ]; then
   echo -n "Disconnection east interfaces in polar zones..."
   for pair in $(echo $polarrange | tr ";" "\n"); do
       firstS=$((10#${pair:0:2}))
       lastS=$((10#${pair:3}))
       for (( p=0; p<$maxp; p++ )); do
           for (( s=$firstS; s<=$lastS; s++ )); do
               node=`printf "p%02ds%02d" $p $s`
               ip netns exec $node ip link set ${node}east down
           done
       done
   done
fi
   mk_frr;
   for (( p=0; p<$maxp; p++ )); do
     for (( s=0; s<$maxs; s++ )); do
        node=`printf "p%02ds%02d" $p $s`
        echo -n "Starting OSPF in node $node..."

        nodeid=$(get_nodeid $node)
        nodeip=$(num2ip $nodeid)

        docker cp frr.conf $node:/etc/frr/frr.conf >/dev/null 2>&1
        docker exec -dit --privileged $node /usr/lib/frr/watchfrr -d -F traditional zebra ospfd staticd
        echo "done!"
     done
   done
   for (( i=1; i<=$numgs; i++ )); do
      gs=gs${i}
      gsid=$(( $maxp * $maxs + $i ))
      gsip=$(num2ip $gsid)
      echo -n "Starting OSPF in $gs ..."

      docker cp frr.conf $gs:/etc/frr/frr.conf >/dev/null 2>&1
      docker exec -dit --privileged $gs /usr/lib/frr/watchfrr -d -F traditional zebra ospfd staticd
      echo "done!"
   done
   rm frr.conf
fi


# Setting up initial state
./topology_init.sh


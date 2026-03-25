#!/bin/bash
set -e

# Initial topology

echo ">>> ip netns exec p00s02 ip link set dev p00s02east down"
ip netns exec p00s02 ip link set dev p00s02east down
echo ">>> ip netns exec p00s06 ip link set dev p00s06east down"
ip netns exec p00s06 ip link set dev p00s06east down
echo ">>> ip netns exec p01s02 ip link set dev p01s02east down"
ip netns exec p01s02 ip link set dev p01s02east down
echo ">>> ip netns exec p01s02 ip link set dev p01s02west down"
ip netns exec p01s02 ip link set dev p01s02west down
echo ">>> ip netns exec p01s06 ip link set dev p01s06east down"
ip netns exec p01s06 ip link set dev p01s06east down
echo ">>> ip netns exec p01s06 ip link set dev p01s06west down"
ip netns exec p01s06 ip link set dev p01s06west down
echo ">>> ip netns exec p02s02 ip link set dev p02s02east down"
ip netns exec p02s02 ip link set dev p02s02east down
echo ">>> ip netns exec p02s02 ip link set dev p02s02west down"
ip netns exec p02s02 ip link set dev p02s02west down
echo ">>> ip netns exec p02s06 ip link set dev p02s06east down"
ip netns exec p02s06 ip link set dev p02s06east down
echo ">>> ip netns exec p02s06 ip link set dev p02s06west down"
ip netns exec p02s06 ip link set dev p02s06west down
echo ">>> ip netns exec p03s02 ip link set dev p03s02east down"
ip netns exec p03s02 ip link set dev p03s02east down
echo ">>> ip netns exec p03s02 ip link set dev p03s02west down"
ip netns exec p03s02 ip link set dev p03s02west down
echo ">>> ip netns exec p03s06 ip link set dev p03s06east down"
ip netns exec p03s06 ip link set dev p03s06east down
echo ">>> ip netns exec p03s06 ip link set dev p03s06west down"
ip netns exec p03s06 ip link set dev p03s06west down
echo ">>> ip netns exec p04s02 ip link set dev p04s02east down"
ip netns exec p04s02 ip link set dev p04s02east down
echo ">>> ip netns exec p04s02 ip link set dev p04s02west down"
ip netns exec p04s02 ip link set dev p04s02west down
echo ">>> ip netns exec p04s06 ip link set dev p04s06east down"
ip netns exec p04s06 ip link set dev p04s06east down
echo ">>> ip netns exec p04s06 ip link set dev p04s06west down"
ip netns exec p04s06 ip link set dev p04s06west down
echo ">>> ip netns exec p05s02 ip link set dev p05s02east down"
ip netns exec p05s02 ip link set dev p05s02east down
echo ">>> ip netns exec p05s02 ip link set dev p05s02west down"
ip netns exec p05s02 ip link set dev p05s02west down
echo ">>> ip netns exec p05s06 ip link set dev p05s06east down"
ip netns exec p05s06 ip link set dev p05s06east down
echo ">>> ip netns exec p05s06 ip link set dev p05s06west down"
ip netns exec p05s06 ip link set dev p05s06west down
echo ">>> ip netns exec p06s02 ip link set dev p06s02east down"
ip netns exec p06s02 ip link set dev p06s02east down
echo ">>> ip netns exec p06s02 ip link set dev p06s02west down"
ip netns exec p06s02 ip link set dev p06s02west down
echo ">>> ip netns exec p06s06 ip link set dev p06s06east down"
ip netns exec p06s06 ip link set dev p06s06east down
echo ">>> ip netns exec p06s06 ip link set dev p06s06west down"
ip netns exec p06s06 ip link set dev p06s06west down
echo ">>> ip netns exec p07s02 ip link set dev p07s02east down"
ip netns exec p07s02 ip link set dev p07s02east down
echo ">>> ip netns exec p07s02 ip link set dev p07s02west down"
ip netns exec p07s02 ip link set dev p07s02west down
echo ">>> ip netns exec p07s06 ip link set dev p07s06east down"
ip netns exec p07s06 ip link set dev p07s06east down
echo ">>> ip netns exec p07s06 ip link set dev p07s06west down"
ip netns exec p07s06 ip link set dev p07s06west down
echo ">>> ip netns exec p08s02 ip link set dev p08s02east down"
ip netns exec p08s02 ip link set dev p08s02east down
echo ">>> ip netns exec p08s02 ip link set dev p08s02west down"
ip netns exec p08s02 ip link set dev p08s02west down
echo ">>> ip netns exec p08s06 ip link set dev p08s06east down"
ip netns exec p08s06 ip link set dev p08s06east down
echo ">>> ip netns exec p08s06 ip link set dev p08s06west down"
ip netns exec p08s06 ip link set dev p08s06west down
echo ">>> ip netns exec p09s02 ip link set dev p09s02east down"
ip netns exec p09s02 ip link set dev p09s02east down
echo ">>> ip netns exec p09s02 ip link set dev p09s02west down"
ip netns exec p09s02 ip link set dev p09s02west down
echo ">>> ip netns exec p09s06 ip link set dev p09s06east down"
ip netns exec p09s06 ip link set dev p09s06east down
echo ">>> ip netns exec p09s06 ip link set dev p09s06west down"
ip netns exec p09s06 ip link set dev p09s06west down
echo ">>> ip netns exec p10s02 ip link set dev p10s02east down"
ip netns exec p10s02 ip link set dev p10s02east down
echo ">>> ip netns exec p10s02 ip link set dev p10s02west down"
ip netns exec p10s02 ip link set dev p10s02west down
echo ">>> ip netns exec p10s06 ip link set dev p10s06east down"
ip netns exec p10s06 ip link set dev p10s06east down
echo ">>> ip netns exec p10s06 ip link set dev p10s06west down"
ip netns exec p10s06 ip link set dev p10s06west down
echo ">>> ip netns exec p11s02 ip link set dev p11s02west down"
ip netns exec p11s02 ip link set dev p11s02west down
echo ">>> ip netns exec p11s06 ip link set dev p11s06west down"
ip netns exec p11s06 ip link set dev p11s06west down
echo ">>> iface=$(ip netns exec p00s00 ip link | grep p00s00north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s00 ip link | grep p00s00north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p00s00 ip link | grep p00s00south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s00 ip link | grep p00s00south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p00s00 ip link | grep p00s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s00 ip link | grep p00s00east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p00s01 ip link | grep p00s01south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s01 ip link | grep p00s01south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p00s01 ip link | grep p00s01north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s01 ip link | grep p00s01north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p00s01 ip link | grep p00s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s01 ip link | grep p00s01east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p00s02 ip link | grep p00s02south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s02 ip link | grep p00s02south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p00s02 ip link | grep p00s02north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s02 ip link | grep p00s02north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p00s02 ip link | grep p00s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s02 ip link | grep p00s02east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p00s03 ip link | grep p00s03south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s03 ip link | grep p00s03south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p00s03 ip link | grep p00s03north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s03 ip link | grep p00s03north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p00s03 ip link | grep p00s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s03 ip link | grep p00s03east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p00s04 ip link | grep p00s04south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s04 ip link | grep p00s04south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p00s04 ip link | grep p00s04north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s04 ip link | grep p00s04north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p00s04 ip link | grep p00s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s04 ip link | grep p00s04east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p00s05 ip link | grep p00s05south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s05 ip link | grep p00s05south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p00s05 ip link | grep p00s05north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s05 ip link | grep p00s05north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p00s05 ip link | grep p00s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s05 ip link | grep p00s05east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p00s06 ip link | grep p00s06south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s06 ip link | grep p00s06south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p00s06 ip link | grep p00s06north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s06 ip link | grep p00s06north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p00s06 ip link | grep p00s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s06 ip link | grep p00s06east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p00s07 ip link | grep p00s07north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s07 ip link | grep p00s07north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p00s07 ip link | grep p00s07south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s07 ip link | grep p00s07south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p00s07 ip link | grep p00s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s07 ip link | grep p00s07east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s00 ip link | grep p01s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s00 ip link | grep p01s00west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p01s00 ip link | grep p01s00north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s00 ip link | grep p01s00north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p01s00 ip link | grep p01s00south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s00 ip link | grep p01s00south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p01s00 ip link | grep p01s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s00 ip link | grep p01s00east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p01s01 ip link | grep p01s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s01 ip link | grep p01s01west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s01 ip link | grep p01s01south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s01 ip link | grep p01s01south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p01s01 ip link | grep p01s01north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s01 ip link | grep p01s01north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p01s01 ip link | grep p01s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s01 ip link | grep p01s01east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s02 ip link | grep p01s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s02 ip link | grep p01s02west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p01s02 ip link | grep p01s02south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s02 ip link | grep p01s02south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p01s02 ip link | grep p01s02north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s02 ip link | grep p01s02north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p01s02 ip link | grep p01s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s02 ip link | grep p01s02east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p01s03 ip link | grep p01s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s03 ip link | grep p01s03west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s03 ip link | grep p01s03south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s03 ip link | grep p01s03south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p01s03 ip link | grep p01s03north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s03 ip link | grep p01s03north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p01s03 ip link | grep p01s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s03 ip link | grep p01s03east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s04 ip link | grep p01s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s04 ip link | grep p01s04west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p01s04 ip link | grep p01s04south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s04 ip link | grep p01s04south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p01s04 ip link | grep p01s04north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s04 ip link | grep p01s04north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p01s04 ip link | grep p01s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s04 ip link | grep p01s04east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p01s05 ip link | grep p01s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s05 ip link | grep p01s05west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s05 ip link | grep p01s05south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s05 ip link | grep p01s05south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p01s05 ip link | grep p01s05north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s05 ip link | grep p01s05north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p01s05 ip link | grep p01s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s05 ip link | grep p01s05east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s06 ip link | grep p01s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s06 ip link | grep p01s06west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p01s06 ip link | grep p01s06south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s06 ip link | grep p01s06south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p01s06 ip link | grep p01s06north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s06 ip link | grep p01s06north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p01s06 ip link | grep p01s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s06 ip link | grep p01s06east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p01s07 ip link | grep p01s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s07 ip link | grep p01s07west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s07 ip link | grep p01s07north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s07 ip link | grep p01s07north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p01s07 ip link | grep p01s07south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s07 ip link | grep p01s07south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p01s07 ip link | grep p01s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s07 ip link | grep p01s07east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s00 ip link | grep p02s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s00 ip link | grep p02s00west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p02s00 ip link | grep p02s00north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s00 ip link | grep p02s00north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p02s00 ip link | grep p02s00south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s00 ip link | grep p02s00south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p02s00 ip link | grep p02s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s00 ip link | grep p02s00east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p02s01 ip link | grep p02s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s01 ip link | grep p02s01west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s01 ip link | grep p02s01south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s01 ip link | grep p02s01south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p02s01 ip link | grep p02s01north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s01 ip link | grep p02s01north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p02s01 ip link | grep p02s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s01 ip link | grep p02s01east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s02 ip link | grep p02s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s02 ip link | grep p02s02west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p02s02 ip link | grep p02s02south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s02 ip link | grep p02s02south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p02s02 ip link | grep p02s02north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s02 ip link | grep p02s02north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p02s02 ip link | grep p02s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s02 ip link | grep p02s02east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s00 ip link | grep p03s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s00 ip link | grep p03s00west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p03s00 ip link | grep p03s00north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s00 ip link | grep p03s00north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p03s00 ip link | grep p03s00south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s00 ip link | grep p03s00south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p03s00 ip link | grep p03s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s00 ip link | grep p03s00east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p03s01 ip link | grep p03s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s01 ip link | grep p03s01west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s01 ip link | grep p03s01south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s01 ip link | grep p03s01south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p03s01 ip link | grep p03s01north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s01 ip link | grep p03s01north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p03s01 ip link | grep p03s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s01 ip link | grep p03s01east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s02 ip link | grep p03s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s02 ip link | grep p03s02west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p03s02 ip link | grep p03s02south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s02 ip link | grep p03s02south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p03s02 ip link | grep p03s02north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s02 ip link | grep p03s02north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p03s02 ip link | grep p03s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s02 ip link | grep p03s02east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s00 ip link | grep p04s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s00 ip link | grep p04s00west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p04s00 ip link | grep p04s00north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s00 ip link | grep p04s00north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p04s00 ip link | grep p04s00south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s00 ip link | grep p04s00south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p04s00 ip link | grep p04s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s00 ip link | grep p04s00east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p04s01 ip link | grep p04s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s01 ip link | grep p04s01west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s01 ip link | grep p04s01south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s01 ip link | grep p04s01south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p04s01 ip link | grep p04s01north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s01 ip link | grep p04s01north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p04s01 ip link | grep p04s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s01 ip link | grep p04s01east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p04s07 ip link | grep p04s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s07 ip link | grep p04s07west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s07 ip link | grep p04s07north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s07 ip link | grep p04s07north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p04s07 ip link | grep p04s07south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s07 ip link | grep p04s07south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p04s07 ip link | grep p04s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s07 ip link | grep p04s07east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s00 ip link | grep p05s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s00 ip link | grep p05s00west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p05s00 ip link | grep p05s00north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s00 ip link | grep p05s00north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p05s00 ip link | grep p05s00south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s00 ip link | grep p05s00south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p05s00 ip link | grep p05s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s00 ip link | grep p05s00east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p05s01 ip link | grep p05s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s01 ip link | grep p05s01west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s01 ip link | grep p05s01south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s01 ip link | grep p05s01south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p05s01 ip link | grep p05s01north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s01 ip link | grep p05s01north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p05s01 ip link | grep p05s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s01 ip link | grep p05s01east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p05s05 ip link | grep p05s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s05 ip link | grep p05s05west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s05 ip link | grep p05s05south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s05 ip link | grep p05s05south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p05s05 ip link | grep p05s05north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s05 ip link | grep p05s05north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p05s05 ip link | grep p05s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s05 ip link | grep p05s05east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p05s07 ip link | grep p05s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s07 ip link | grep p05s07west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s07 ip link | grep p05s07north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s07 ip link | grep p05s07north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p05s07 ip link | grep p05s07south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s07 ip link | grep p05s07south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p05s07 ip link | grep p05s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s07 ip link | grep p05s07east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s00 ip link | grep p06s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s00 ip link | grep p06s00west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p06s00 ip link | grep p06s00north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s00 ip link | grep p06s00north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p06s00 ip link | grep p06s00south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s00 ip link | grep p06s00south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p06s00 ip link | grep p06s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s00 ip link | grep p06s00east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p06s01 ip link | grep p06s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s01 ip link | grep p06s01west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s01 ip link | grep p06s01south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s01 ip link | grep p06s01south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p06s01 ip link | grep p06s01north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s01 ip link | grep p06s01north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p06s01 ip link | grep p06s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s01 ip link | grep p06s01east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s02 ip link | grep p06s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s02 ip link | grep p06s02west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p06s02 ip link | grep p06s02south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s02 ip link | grep p06s02south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p06s02 ip link | grep p06s02north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s02 ip link | grep p06s02north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p06s02 ip link | grep p06s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s02 ip link | grep p06s02east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p06s03 ip link | grep p06s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s03 ip link | grep p06s03west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s03 ip link | grep p06s03south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s03 ip link | grep p06s03south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p06s03 ip link | grep p06s03north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s03 ip link | grep p06s03north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p06s03 ip link | grep p06s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s03 ip link | grep p06s03east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s04 ip link | grep p06s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s04 ip link | grep p06s04west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p06s04 ip link | grep p06s04south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s04 ip link | grep p06s04south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p06s04 ip link | grep p06s04north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s04 ip link | grep p06s04north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p06s04 ip link | grep p06s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s04 ip link | grep p06s04east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p06s05 ip link | grep p06s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s05 ip link | grep p06s05west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s05 ip link | grep p06s05south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s05 ip link | grep p06s05south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p06s05 ip link | grep p06s05north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s05 ip link | grep p06s05north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p06s05 ip link | grep p06s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s05 ip link | grep p06s05east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s06 ip link | grep p06s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s06 ip link | grep p06s06west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p06s06 ip link | grep p06s06south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s06 ip link | grep p06s06south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p06s06 ip link | grep p06s06north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s06 ip link | grep p06s06north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p06s06 ip link | grep p06s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s06 ip link | grep p06s06east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p06s07 ip link | grep p06s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s07 ip link | grep p06s07west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s07 ip link | grep p06s07north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s07 ip link | grep p06s07north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p06s07 ip link | grep p06s07south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s07 ip link | grep p06s07south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p06s07 ip link | grep p06s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s07 ip link | grep p06s07east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s00 ip link | grep p07s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s00 ip link | grep p07s00west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p07s00 ip link | grep p07s00north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s00 ip link | grep p07s00north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p07s00 ip link | grep p07s00south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s00 ip link | grep p07s00south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p07s00 ip link | grep p07s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s00 ip link | grep p07s00east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p07s01 ip link | grep p07s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s01 ip link | grep p07s01west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s01 ip link | grep p07s01south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s01 ip link | grep p07s01south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p07s01 ip link | grep p07s01north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s01 ip link | grep p07s01north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p07s01 ip link | grep p07s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s01 ip link | grep p07s01east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s02 ip link | grep p07s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s02 ip link | grep p07s02west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p07s02 ip link | grep p07s02south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s02 ip link | grep p07s02south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p07s02 ip link | grep p07s02north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s02 ip link | grep p07s02north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p07s02 ip link | grep p07s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s02 ip link | grep p07s02east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p07s03 ip link | grep p07s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s03 ip link | grep p07s03west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s03 ip link | grep p07s03south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s03 ip link | grep p07s03south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p07s03 ip link | grep p07s03north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s03 ip link | grep p07s03north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p07s03 ip link | grep p07s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s03 ip link | grep p07s03east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s04 ip link | grep p07s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s04 ip link | grep p07s04west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p07s04 ip link | grep p07s04south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s04 ip link | grep p07s04south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p07s04 ip link | grep p07s04north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s04 ip link | grep p07s04north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p07s04 ip link | grep p07s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s04 ip link | grep p07s04east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p07s05 ip link | grep p07s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s05 ip link | grep p07s05west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s05 ip link | grep p07s05south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s05 ip link | grep p07s05south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p07s05 ip link | grep p07s05north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s05 ip link | grep p07s05north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p07s05 ip link | grep p07s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s05 ip link | grep p07s05east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s06 ip link | grep p07s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s06 ip link | grep p07s06west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p07s06 ip link | grep p07s06south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s06 ip link | grep p07s06south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p07s06 ip link | grep p07s06north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s06 ip link | grep p07s06north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p07s06 ip link | grep p07s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s06 ip link | grep p07s06east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p07s07 ip link | grep p07s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s07 ip link | grep p07s07west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s07 ip link | grep p07s07north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s07 ip link | grep p07s07north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p07s07 ip link | grep p07s07south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s07 ip link | grep p07s07south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p07s07 ip link | grep p07s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s07 ip link | grep p07s07east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s00 ip link | grep p08s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s00 ip link | grep p08s00west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p08s00 ip link | grep p08s00north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s00 ip link | grep p08s00north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p08s00 ip link | grep p08s00south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s00 ip link | grep p08s00south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p08s00 ip link | grep p08s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s00 ip link | grep p08s00east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p08s01 ip link | grep p08s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s01 ip link | grep p08s01west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s01 ip link | grep p08s01south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s01 ip link | grep p08s01south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p08s01 ip link | grep p08s01north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s01 ip link | grep p08s01north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p08s01 ip link | grep p08s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s01 ip link | grep p08s01east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s02 ip link | grep p08s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s02 ip link | grep p08s02west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p08s02 ip link | grep p08s02south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s02 ip link | grep p08s02south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p08s02 ip link | grep p08s02north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s02 ip link | grep p08s02north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p08s02 ip link | grep p08s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s02 ip link | grep p08s02east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p08s03 ip link | grep p08s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s03 ip link | grep p08s03west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s03 ip link | grep p08s03south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s03 ip link | grep p08s03south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p08s03 ip link | grep p08s03north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s03 ip link | grep p08s03north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p08s03 ip link | grep p08s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s03 ip link | grep p08s03east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s04 ip link | grep p08s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s04 ip link | grep p08s04west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p08s04 ip link | grep p08s04south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s04 ip link | grep p08s04south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p08s04 ip link | grep p08s04north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s04 ip link | grep p08s04north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p08s04 ip link | grep p08s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s04 ip link | grep p08s04east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p08s05 ip link | grep p08s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s05 ip link | grep p08s05west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s05 ip link | grep p08s05south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s05 ip link | grep p08s05south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p08s05 ip link | grep p08s05north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s05 ip link | grep p08s05north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p08s05 ip link | grep p08s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s05 ip link | grep p08s05east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s06 ip link | grep p08s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s06 ip link | grep p08s06west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p08s06 ip link | grep p08s06south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s06 ip link | grep p08s06south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p08s06 ip link | grep p08s06north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s06 ip link | grep p08s06north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p08s06 ip link | grep p08s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s06 ip link | grep p08s06east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p08s07 ip link | grep p08s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s07 ip link | grep p08s07west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s07 ip link | grep p08s07north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s07 ip link | grep p08s07north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p08s07 ip link | grep p08s07south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s07 ip link | grep p08s07south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p08s07 ip link | grep p08s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s07 ip link | grep p08s07east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s00 ip link | grep p09s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s00 ip link | grep p09s00west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p09s00 ip link | grep p09s00north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s00 ip link | grep p09s00north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p09s00 ip link | grep p09s00south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s00 ip link | grep p09s00south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p09s00 ip link | grep p09s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s00 ip link | grep p09s00east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p09s01 ip link | grep p09s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s01 ip link | grep p09s01west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s01 ip link | grep p09s01south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s01 ip link | grep p09s01south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p09s01 ip link | grep p09s01north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s01 ip link | grep p09s01north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p09s01 ip link | grep p09s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s01 ip link | grep p09s01east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s02 ip link | grep p09s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s02 ip link | grep p09s02west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p09s02 ip link | grep p09s02south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s02 ip link | grep p09s02south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p09s02 ip link | grep p09s02north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s02 ip link | grep p09s02north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p09s02 ip link | grep p09s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s02 ip link | grep p09s02east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p09s03 ip link | grep p09s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s03 ip link | grep p09s03west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s03 ip link | grep p09s03south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s03 ip link | grep p09s03south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p09s03 ip link | grep p09s03north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s03 ip link | grep p09s03north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p09s03 ip link | grep p09s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s03 ip link | grep p09s03east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s04 ip link | grep p09s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s04 ip link | grep p09s04west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p09s04 ip link | grep p09s04south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s04 ip link | grep p09s04south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p09s04 ip link | grep p09s04north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s04 ip link | grep p09s04north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p09s04 ip link | grep p09s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s04 ip link | grep p09s04east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p09s05 ip link | grep p09s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s05 ip link | grep p09s05west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s05 ip link | grep p09s05south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s05 ip link | grep p09s05south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p09s05 ip link | grep p09s05north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s05 ip link | grep p09s05north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p09s05 ip link | grep p09s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s05 ip link | grep p09s05east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s06 ip link | grep p09s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s06 ip link | grep p09s06west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p09s06 ip link | grep p09s06south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s06 ip link | grep p09s06south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p09s06 ip link | grep p09s06north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s06 ip link | grep p09s06north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p09s06 ip link | grep p09s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s06 ip link | grep p09s06east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p09s07 ip link | grep p09s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s07 ip link | grep p09s07west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s07 ip link | grep p09s07north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s07 ip link | grep p09s07north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p09s07 ip link | grep p09s07south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s07 ip link | grep p09s07south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p09s07 ip link | grep p09s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s07 ip link | grep p09s07east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s00 ip link | grep p10s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s00 ip link | grep p10s00west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p10s00 ip link | grep p10s00north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s00 ip link | grep p10s00north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p10s00 ip link | grep p10s00south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s00 ip link | grep p10s00south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p10s00 ip link | grep p10s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s00 ip link | grep p10s00east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p10s01 ip link | grep p10s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s01 ip link | grep p10s01west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s01 ip link | grep p10s01south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s01 ip link | grep p10s01south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p10s01 ip link | grep p10s01north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s01 ip link | grep p10s01north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p10s01 ip link | grep p10s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s01 ip link | grep p10s01east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s02 ip link | grep p10s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s02 ip link | grep p10s02west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p10s02 ip link | grep p10s02south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s02 ip link | grep p10s02south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p10s02 ip link | grep p10s02north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s02 ip link | grep p10s02north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p10s02 ip link | grep p10s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s02 ip link | grep p10s02east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p10s03 ip link | grep p10s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s03 ip link | grep p10s03west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s03 ip link | grep p10s03south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s03 ip link | grep p10s03south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p10s03 ip link | grep p10s03north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s03 ip link | grep p10s03north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p10s03 ip link | grep p10s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s03 ip link | grep p10s03east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s04 ip link | grep p10s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s04 ip link | grep p10s04west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p10s04 ip link | grep p10s04south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s04 ip link | grep p10s04south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p10s04 ip link | grep p10s04north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s04 ip link | grep p10s04north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p10s04 ip link | grep p10s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s04 ip link | grep p10s04east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p10s05 ip link | grep p10s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s05 ip link | grep p10s05west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s05 ip link | grep p10s05south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s05 ip link | grep p10s05south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p10s05 ip link | grep p10s05north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s05 ip link | grep p10s05north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p10s05 ip link | grep p10s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s05 ip link | grep p10s05east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s06 ip link | grep p10s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s06 ip link | grep p10s06west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p10s06 ip link | grep p10s06south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s06 ip link | grep p10s06south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p10s06 ip link | grep p10s06north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s06 ip link | grep p10s06north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p10s06 ip link | grep p10s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s06 ip link | grep p10s06east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p10s07 ip link | grep p10s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s07 ip link | grep p10s07west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s07 ip link | grep p10s07north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s07 ip link | grep p10s07north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p10s07 ip link | grep p10s07south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s07 ip link | grep p10s07south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p10s07 ip link | grep p10s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s07 ip link | grep p10s07east | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p11s00 ip link | grep p11s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s00 ip link | grep p11s00west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p11s00 ip link | grep p11s00north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s00 ip link | grep p11s00north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p11s00 ip link | grep p11s00south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s00 ip link | grep p11s00south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p11s01 ip link | grep p11s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s01 ip link | grep p11s01west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p11s01 ip link | grep p11s01south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s01 ip link | grep p11s01south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p11s01 ip link | grep p11s01north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s01 ip link | grep p11s01north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p11s02 ip link | grep p11s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s02 ip link | grep p11s02west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p11s02 ip link | grep p11s02south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s02 ip link | grep p11s02south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p11s02 ip link | grep p11s02north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s02 ip link | grep p11s02north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p11s03 ip link | grep p11s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s03 ip link | grep p11s03west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p11s03 ip link | grep p11s03south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s03 ip link | grep p11s03south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p11s03 ip link | grep p11s03north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s03 ip link | grep p11s03north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p11s04 ip link | grep p11s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s04 ip link | grep p11s04west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p11s04 ip link | grep p11s04south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s04 ip link | grep p11s04south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p11s04 ip link | grep p11s04north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s04 ip link | grep p11s04north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p11s05 ip link | grep p11s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s05 ip link | grep p11s05west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p11s05 ip link | grep p11s05south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s05 ip link | grep p11s05south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p11s05 ip link | grep p11s05north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s05 ip link | grep p11s05north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p11s06 ip link | grep p11s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s06 ip link | grep p11s06west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p11s06 ip link | grep p11s06south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s06 ip link | grep p11s06south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p11s06 ip link | grep p11s06north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s06 ip link | grep p11s06north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p11s07 ip link | grep p11s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s07 ip link | grep p11s07west | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p11s07 ip link | grep p11s07north | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s07 ip link | grep p11s07north | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0
echo ">>> iface=$(ip netns exec p11s07 ip link | grep p11s07south | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s07 ip link | grep p11s07south | awk -F ":" '{print $1}')
echo ">>> /home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0"
/home/pote/ItS-IoT/updatemap --dev $iface --delay 30.0

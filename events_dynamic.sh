#!/bin/bash
set -e

echo "=== START SIMULATION ==="
sleep 17

echo "=== EVENT time 17 ==="
echo ">>> iface=$(ip netns exec p04s07 ip link | grep p04s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s07 ip link | grep p04s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 17

echo "=== EVENT time 34 ==="
echo ">>> iface=$(ip netns exec p04s07 ip link | grep p04s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s07 ip link | grep p04s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 19

echo "=== EVENT time 53 ==="
echo ">>> iface=$(ip netns exec p04s07 ip link | grep p04s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s07 ip link | grep p04s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0

sleep 2

echo "=== EVENT time 55 ==="
echo ">>> ip netns exec p03s07 ip addr add 10.32.97.1/30 dev p03s07LinkToGS"
ip netns exec p03s07 ip addr add 10.32.97.1/30 dev p03s07LinkToGS
echo ">>> ip netns exec gs1 ip addr add 10.32.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr add 10.32.97.2/30 dev ifgs97
echo ">>> ip netns exec p04s07 ip addr del 10.40.97.1/30 dev p04s07LinkToGS"
ip netns exec p04s07 ip addr del 10.40.97.1/30 dev p04s07LinkToGS
echo ">>> ip netns exec gs1 ip addr del 10.40.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr del 10.40.97.2/30 dev ifgs97
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p04s07 ip link | grep p04s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s07 ip link | grep p04s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0

sleep 22

echo "=== EVENT time 77 ==="
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 21

echo "=== EVENT time 98 ==="
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 20

echo "=== EVENT time 118 ==="
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 20

echo "=== EVENT time 138 ==="
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 23

echo "=== EVENT time 161 ==="
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 8

echo "=== EVENT time 169 ==="
echo ">>> iface=$(ip netns exec p00s00 ip link | grep p00s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s00 ip link | grep p00s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p01s00 ip link | grep p01s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s00 ip link | grep p01s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p01s00 ip link | grep p01s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s00 ip link | grep p01s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p02s00 ip link | grep p02s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s00 ip link | grep p02s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p02s00 ip link | grep p02s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s00 ip link | grep p02s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p03s00 ip link | grep p03s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s00 ip link | grep p03s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p03s00 ip link | grep p03s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s00 ip link | grep p03s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p04s00 ip link | grep p04s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s00 ip link | grep p04s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p04s00 ip link | grep p04s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s00 ip link | grep p04s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p05s00 ip link | grep p05s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s00 ip link | grep p05s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p05s00 ip link | grep p05s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s00 ip link | grep p05s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p06s00 ip link | grep p06s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s00 ip link | grep p06s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p06s00 ip link | grep p06s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s00 ip link | grep p06s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p07s00 ip link | grep p07s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s00 ip link | grep p07s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p07s00 ip link | grep p07s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s00 ip link | grep p07s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p08s00 ip link | grep p08s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s00 ip link | grep p08s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p08s00 ip link | grep p08s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s00 ip link | grep p08s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p09s00 ip link | grep p09s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s00 ip link | grep p09s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p09s00 ip link | grep p09s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s00 ip link | grep p09s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p10s00 ip link | grep p10s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s00 ip link | grep p10s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p10s00 ip link | grep p10s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s00 ip link | grep p10s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p11s00 ip link | grep p11s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s00 ip link | grep p11s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0

sleep 1

echo "=== EVENT time 170 ==="
echo ">>> iface=$(ip netns exec p00s04 ip link | grep p00s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s04 ip link | grep p00s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p01s04 ip link | grep p01s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s04 ip link | grep p01s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p01s04 ip link | grep p01s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s04 ip link | grep p01s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p06s04 ip link | grep p06s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s04 ip link | grep p06s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p06s04 ip link | grep p06s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s04 ip link | grep p06s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p07s04 ip link | grep p07s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s04 ip link | grep p07s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p07s04 ip link | grep p07s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s04 ip link | grep p07s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p08s04 ip link | grep p08s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s04 ip link | grep p08s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p08s04 ip link | grep p08s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s04 ip link | grep p08s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p09s04 ip link | grep p09s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s04 ip link | grep p09s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p09s04 ip link | grep p09s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s04 ip link | grep p09s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p10s04 ip link | grep p10s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s04 ip link | grep p10s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p10s04 ip link | grep p10s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s04 ip link | grep p10s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p11s04 ip link | grep p11s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s04 ip link | grep p11s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0

sleep 30

echo "=== EVENT time 200 ==="
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 28

echo "=== EVENT time 228 ==="
echo ">>> iface=$(ip netns exec p00s06 ip link | grep p00s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s06 ip link | grep p00s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p01s06 ip link | grep p01s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s06 ip link | grep p01s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p01s06 ip link | grep p01s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s06 ip link | grep p01s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p06s06 ip link | grep p06s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s06 ip link | grep p06s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p06s06 ip link | grep p06s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s06 ip link | grep p06s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p07s06 ip link | grep p07s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s06 ip link | grep p07s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p07s06 ip link | grep p07s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s06 ip link | grep p07s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p08s06 ip link | grep p08s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s06 ip link | grep p08s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p08s06 ip link | grep p08s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s06 ip link | grep p08s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p09s06 ip link | grep p09s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s06 ip link | grep p09s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p09s06 ip link | grep p09s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s06 ip link | grep p09s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p10s06 ip link | grep p10s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s06 ip link | grep p10s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p10s06 ip link | grep p10s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s06 ip link | grep p10s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p11s06 ip link | grep p11s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s06 ip link | grep p11s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0

sleep 1

echo "=== EVENT time 229 ==="
echo ">>> iface=$(ip netns exec p00s02 ip link | grep p00s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s02 ip link | grep p00s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p01s02 ip link | grep p01s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s02 ip link | grep p01s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p01s02 ip link | grep p01s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s02 ip link | grep p01s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p02s02 ip link | grep p02s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s02 ip link | grep p02s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p02s02 ip link | grep p02s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s02 ip link | grep p02s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p03s02 ip link | grep p03s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s02 ip link | grep p03s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p03s02 ip link | grep p03s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s02 ip link | grep p03s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p06s02 ip link | grep p06s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s02 ip link | grep p06s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p06s02 ip link | grep p06s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s02 ip link | grep p06s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p07s02 ip link | grep p07s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s02 ip link | grep p07s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p07s02 ip link | grep p07s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s02 ip link | grep p07s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p08s02 ip link | grep p08s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s02 ip link | grep p08s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p08s02 ip link | grep p08s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s02 ip link | grep p08s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p09s02 ip link | grep p09s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s02 ip link | grep p09s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p09s02 ip link | grep p09s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s02 ip link | grep p09s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p10s02 ip link | grep p10s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s02 ip link | grep p10s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p10s02 ip link | grep p10s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s02 ip link | grep p10s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p11s02 ip link | grep p11s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s02 ip link | grep p11s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0

sleep 21

echo "=== EVENT time 250 ==="
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 21

echo "=== EVENT time 271 ==="
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 19

echo "=== EVENT time 290 ==="
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 18

echo "=== EVENT time 308 ==="
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 19

echo "=== EVENT time 327 ==="
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 19

echo "=== EVENT time 346 ==="
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0

sleep 13

echo "=== EVENT time 359 ==="
echo ">>> ip netns exec p02s07 ip addr add 10.24.97.1/30 dev p02s07LinkToGS"
ip netns exec p02s07 ip addr add 10.24.97.1/30 dev p02s07LinkToGS
echo ">>> ip netns exec gs1 ip addr add 10.24.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr add 10.24.97.2/30 dev ifgs97
echo ">>> ip netns exec p03s07 ip addr del 10.32.97.1/30 dev p03s07LinkToGS"
ip netns exec p03s07 ip addr del 10.32.97.1/30 dev p03s07LinkToGS
echo ">>> ip netns exec gs1 ip addr del 10.32.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr del 10.32.97.2/30 dev ifgs97
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0

sleep 10

echo "=== EVENT time 369 ==="
echo ">>> iface=$(ip netns exec p00s00 ip link | grep p00s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s00 ip link | grep p00s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p01s00 ip link | grep p01s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s00 ip link | grep p01s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p01s00 ip link | grep p01s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s00 ip link | grep p01s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p02s00 ip link | grep p02s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s00 ip link | grep p02s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p02s00 ip link | grep p02s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s00 ip link | grep p02s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p03s00 ip link | grep p03s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s00 ip link | grep p03s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p03s00 ip link | grep p03s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s00 ip link | grep p03s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p04s00 ip link | grep p04s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s00 ip link | grep p04s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p04s00 ip link | grep p04s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s00 ip link | grep p04s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p05s00 ip link | grep p05s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s00 ip link | grep p05s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p05s00 ip link | grep p05s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s00 ip link | grep p05s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p06s00 ip link | grep p06s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s00 ip link | grep p06s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p06s00 ip link | grep p06s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s00 ip link | grep p06s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p07s00 ip link | grep p07s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s00 ip link | grep p07s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p07s00 ip link | grep p07s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s00 ip link | grep p07s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p08s00 ip link | grep p08s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s00 ip link | grep p08s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p08s00 ip link | grep p08s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s00 ip link | grep p08s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p09s00 ip link | grep p09s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s00 ip link | grep p09s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p09s00 ip link | grep p09s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s00 ip link | grep p09s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p10s00 ip link | grep p10s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s00 ip link | grep p10s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p10s00 ip link | grep p10s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s00 ip link | grep p10s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p11s00 ip link | grep p11s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s00 ip link | grep p11s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0

sleep 2

echo "=== EVENT time 371 ==="
echo ">>> iface=$(ip netns exec p00s04 ip link | grep p00s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s04 ip link | grep p00s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p01s04 ip link | grep p01s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s04 ip link | grep p01s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p01s04 ip link | grep p01s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s04 ip link | grep p01s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p06s04 ip link | grep p06s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s04 ip link | grep p06s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p06s04 ip link | grep p06s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s04 ip link | grep p06s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p07s04 ip link | grep p07s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s04 ip link | grep p07s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p07s04 ip link | grep p07s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s04 ip link | grep p07s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p08s04 ip link | grep p08s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s04 ip link | grep p08s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p08s04 ip link | grep p08s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s04 ip link | grep p08s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p09s04 ip link | grep p09s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s04 ip link | grep p09s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p09s04 ip link | grep p09s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s04 ip link | grep p09s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p10s04 ip link | grep p10s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s04 ip link | grep p10s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p10s04 ip link | grep p10s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s04 ip link | grep p10s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p11s04 ip link | grep p11s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s04 ip link | grep p11s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0

sleep 9

echo "=== EVENT time 380 ==="
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 19

echo "=== EVENT time 399 ==="
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 16

echo "=== EVENT time 415 ==="
echo ">>> iface=$(ip netns exec p00s06 ip link | grep p00s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s06 ip link | grep p00s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s06 ip link | grep p01s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s06 ip link | grep p01s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s06 ip link | grep p01s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s06 ip link | grep p01s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s06 ip link | grep p06s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s06 ip link | grep p06s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s06 ip link | grep p06s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s06 ip link | grep p06s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s06 ip link | grep p07s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s06 ip link | grep p07s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s06 ip link | grep p07s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s06 ip link | grep p07s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s06 ip link | grep p08s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s06 ip link | grep p08s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s06 ip link | grep p08s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s06 ip link | grep p08s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s06 ip link | grep p09s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s06 ip link | grep p09s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s06 ip link | grep p09s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s06 ip link | grep p09s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s06 ip link | grep p10s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s06 ip link | grep p10s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s06 ip link | grep p10s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s06 ip link | grep p10s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p11s06 ip link | grep p11s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s06 ip link | grep p11s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0

sleep 2

echo "=== EVENT time 417 ==="
echo ">>> iface=$(ip netns exec p00s02 ip link | grep p00s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s02 ip link | grep p00s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s02 ip link | grep p01s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s02 ip link | grep p01s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s02 ip link | grep p01s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s02 ip link | grep p01s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s02 ip link | grep p02s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s02 ip link | grep p02s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s02 ip link | grep p02s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s02 ip link | grep p02s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec p03s02 ip link | grep p03s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s02 ip link | grep p03s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s02 ip link | grep p03s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s02 ip link | grep p03s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s02 ip link | grep p06s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s02 ip link | grep p06s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s02 ip link | grep p06s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s02 ip link | grep p06s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s02 ip link | grep p07s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s02 ip link | grep p07s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s02 ip link | grep p07s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s02 ip link | grep p07s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s02 ip link | grep p08s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s02 ip link | grep p08s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s02 ip link | grep p08s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s02 ip link | grep p08s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s02 ip link | grep p09s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s02 ip link | grep p09s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s02 ip link | grep p09s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s02 ip link | grep p09s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s02 ip link | grep p10s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s02 ip link | grep p10s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s02 ip link | grep p10s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s02 ip link | grep p10s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p11s02 ip link | grep p11s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s02 ip link | grep p11s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 8

echo "=== EVENT time 425 ==="
echo ">>> ip netns exec p05s06 ip addr add 10.47.98.1/30 dev p05s06LinkToGS"
ip netns exec p05s06 ip addr add 10.47.98.1/30 dev p05s06LinkToGS
echo ">>> ip netns exec gs2 ip addr add 10.47.98.2/30 dev ifgs98"
ip netns exec gs2 ip addr add 10.47.98.2/30 dev ifgs98
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 10

echo "=== EVENT time 435 ==="
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 18

echo "=== EVENT time 453 ==="
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 6

echo "=== EVENT time 459 ==="
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 12

echo "=== EVENT time 471 ==="
echo ">>> ip netns exec p05s06 ip addr del 10.47.98.1/30 dev p05s06LinkToGS"
ip netns exec p05s06 ip addr del 10.47.98.1/30 dev p05s06LinkToGS
echo ">>> ip netns exec gs2 ip addr del 10.47.98.2/30 dev ifgs98"
ip netns exec gs2 ip addr del 10.47.98.2/30 dev ifgs98
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0

sleep 1

echo "=== EVENT time 472 ==="
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 27

echo "=== EVENT time 499 ==="
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 3.0"
/usr/local/bin/updatemap --dev $iface --delay 3.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 3.0"
/usr/local/bin/updatemap --dev $iface --delay 3.0

sleep 59

echo "=== EVENT time 558 ==="
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 18

echo "=== EVENT time 576 ==="
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 1

echo "=== EVENT time 577 ==="
echo ">>> ip netns exec p04s06 ip addr add 10.39.97.1/30 dev p04s06LinkToGS"
ip netns exec p04s06 ip addr add 10.39.97.1/30 dev p04s06LinkToGS
echo ">>> ip netns exec gs1 ip addr add 10.39.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr add 10.39.97.2/30 dev ifgs97
echo ">>> ip netns exec p02s07 ip addr add 10.24.98.1/30 dev p02s07LinkToGS"
ip netns exec p02s07 ip addr add 10.24.98.1/30 dev p02s07LinkToGS
echo ">>> ip netns exec gs2 ip addr add 10.24.98.2/30 dev ifgs98"
ip netns exec gs2 ip addr add 10.24.98.2/30 dev ifgs98
echo ">>> ip netns exec p02s07 ip addr del 10.24.97.1/30 dev p02s07LinkToGS"
ip netns exec p02s07 ip addr del 10.24.97.1/30 dev p02s07LinkToGS
echo ">>> ip netns exec gs1 ip addr del 10.24.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr del 10.24.97.2/30 dev ifgs97
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 3.0"
/usr/local/bin/updatemap --dev $iface --delay 3.0
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 3.0"
/usr/local/bin/updatemap --dev $iface --delay 3.0

sleep 18

echo "=== EVENT time 595 ==="
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 4

echo "=== EVENT time 599 ==="
echo ">>> iface=$(ip netns exec p00s07 ip link | grep p00s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s07 ip link | grep p00s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p01s07 ip link | grep p01s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s07 ip link | grep p01s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p01s07 ip link | grep p01s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s07 ip link | grep p01s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p04s07 ip link | grep p04s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s07 ip link | grep p04s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p04s07 ip link | grep p04s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s07 ip link | grep p04s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p05s07 ip link | grep p05s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s07 ip link | grep p05s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p05s07 ip link | grep p05s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s07 ip link | grep p05s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p06s07 ip link | grep p06s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s07 ip link | grep p06s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p06s07 ip link | grep p06s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s07 ip link | grep p06s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p07s07 ip link | grep p07s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s07 ip link | grep p07s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p07s07 ip link | grep p07s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s07 ip link | grep p07s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p08s07 ip link | grep p08s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s07 ip link | grep p08s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p08s07 ip link | grep p08s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s07 ip link | grep p08s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p09s07 ip link | grep p09s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s07 ip link | grep p09s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p09s07 ip link | grep p09s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s07 ip link | grep p09s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p10s07 ip link | grep p10s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s07 ip link | grep p10s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p10s07 ip link | grep p10s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s07 ip link | grep p10s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p11s07 ip link | grep p11s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s07 ip link | grep p11s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0

sleep 3

echo "=== EVENT time 602 ==="
echo ">>> iface=$(ip netns exec p00s06 ip link | grep p00s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s06 ip link | grep p00s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p01s06 ip link | grep p01s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s06 ip link | grep p01s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p01s06 ip link | grep p01s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s06 ip link | grep p01s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p06s06 ip link | grep p06s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s06 ip link | grep p06s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p06s06 ip link | grep p06s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s06 ip link | grep p06s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p07s06 ip link | grep p07s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s06 ip link | grep p07s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p07s06 ip link | grep p07s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s06 ip link | grep p07s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p08s06 ip link | grep p08s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s06 ip link | grep p08s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p08s06 ip link | grep p08s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s06 ip link | grep p08s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p09s06 ip link | grep p09s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s06 ip link | grep p09s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p09s06 ip link | grep p09s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s06 ip link | grep p09s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p10s06 ip link | grep p10s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s06 ip link | grep p10s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p10s06 ip link | grep p10s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s06 ip link | grep p10s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p11s06 ip link | grep p11s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s06 ip link | grep p11s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0

sleep 4

echo "=== EVENT time 606 ==="
echo ">>> iface=$(ip netns exec p00s02 ip link | grep p00s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s02 ip link | grep p00s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p00s03 ip link | grep p00s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s03 ip link | grep p00s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p01s02 ip link | grep p01s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s02 ip link | grep p01s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p01s02 ip link | grep p01s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s02 ip link | grep p01s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p01s03 ip link | grep p01s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s03 ip link | grep p01s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p01s03 ip link | grep p01s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s03 ip link | grep p01s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p02s02 ip link | grep p02s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s02 ip link | grep p02s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p02s02 ip link | grep p02s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s02 ip link | grep p02s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p03s02 ip link | grep p03s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s02 ip link | grep p03s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p03s02 ip link | grep p03s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s02 ip link | grep p03s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p06s02 ip link | grep p06s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s02 ip link | grep p06s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p06s02 ip link | grep p06s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s02 ip link | grep p06s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p06s03 ip link | grep p06s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s03 ip link | grep p06s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p06s03 ip link | grep p06s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s03 ip link | grep p06s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p07s02 ip link | grep p07s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s02 ip link | grep p07s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p07s02 ip link | grep p07s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s02 ip link | grep p07s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p07s03 ip link | grep p07s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s03 ip link | grep p07s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p07s03 ip link | grep p07s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s03 ip link | grep p07s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p08s02 ip link | grep p08s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s02 ip link | grep p08s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p08s02 ip link | grep p08s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s02 ip link | grep p08s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p08s03 ip link | grep p08s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s03 ip link | grep p08s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p08s03 ip link | grep p08s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s03 ip link | grep p08s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p09s02 ip link | grep p09s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s02 ip link | grep p09s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p09s02 ip link | grep p09s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s02 ip link | grep p09s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p09s03 ip link | grep p09s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s03 ip link | grep p09s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p09s03 ip link | grep p09s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s03 ip link | grep p09s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p10s02 ip link | grep p10s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s02 ip link | grep p10s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p10s02 ip link | grep p10s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s02 ip link | grep p10s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p10s03 ip link | grep p10s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s03 ip link | grep p10s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p10s03 ip link | grep p10s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s03 ip link | grep p10s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p11s02 ip link | grep p11s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s02 ip link | grep p11s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p11s03 ip link | grep p11s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s03 ip link | grep p11s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0

sleep 11

echo "=== EVENT time 617 ==="
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 3.0"
/usr/local/bin/updatemap --dev $iface --delay 3.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 3.0"
/usr/local/bin/updatemap --dev $iface --delay 3.0

sleep 23

echo "=== EVENT time 640 ==="
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 17

echo "=== EVENT time 657 ==="
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 16

echo "=== EVENT time 673 ==="
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 14

echo "=== EVENT time 687 ==="
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 1

echo "=== EVENT time 688 ==="
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 1

echo "=== EVENT time 689 ==="
echo ">>> iface=$(ip netns exec p00s00 ip link | grep p00s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s00 ip link | grep p00s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p01s00 ip link | grep p01s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s00 ip link | grep p01s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p01s00 ip link | grep p01s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s00 ip link | grep p01s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p02s00 ip link | grep p02s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s00 ip link | grep p02s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p02s00 ip link | grep p02s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s00 ip link | grep p02s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p03s00 ip link | grep p03s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s00 ip link | grep p03s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p03s00 ip link | grep p03s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s00 ip link | grep p03s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p04s00 ip link | grep p04s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s00 ip link | grep p04s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p04s00 ip link | grep p04s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s00 ip link | grep p04s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p05s00 ip link | grep p05s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s00 ip link | grep p05s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p05s00 ip link | grep p05s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s00 ip link | grep p05s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p06s00 ip link | grep p06s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s00 ip link | grep p06s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p06s00 ip link | grep p06s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s00 ip link | grep p06s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p07s00 ip link | grep p07s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s00 ip link | grep p07s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p07s00 ip link | grep p07s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s00 ip link | grep p07s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p08s00 ip link | grep p08s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s00 ip link | grep p08s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p08s00 ip link | grep p08s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s00 ip link | grep p08s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p09s00 ip link | grep p09s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s00 ip link | grep p09s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p09s00 ip link | grep p09s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s00 ip link | grep p09s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p10s00 ip link | grep p10s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s00 ip link | grep p10s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p10s00 ip link | grep p10s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s00 ip link | grep p10s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p11s00 ip link | grep p11s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s00 ip link | grep p11s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0

sleep 4

echo "=== EVENT time 693 ==="
echo ">>> iface=$(ip netns exec p00s04 ip link | grep p00s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s04 ip link | grep p00s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p01s04 ip link | grep p01s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s04 ip link | grep p01s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p01s04 ip link | grep p01s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s04 ip link | grep p01s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p06s04 ip link | grep p06s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s04 ip link | grep p06s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p06s04 ip link | grep p06s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s04 ip link | grep p06s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p07s04 ip link | grep p07s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s04 ip link | grep p07s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p07s04 ip link | grep p07s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s04 ip link | grep p07s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p08s04 ip link | grep p08s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s04 ip link | grep p08s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p08s04 ip link | grep p08s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s04 ip link | grep p08s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p09s04 ip link | grep p09s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s04 ip link | grep p09s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p09s04 ip link | grep p09s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s04 ip link | grep p09s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p10s04 ip link | grep p10s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s04 ip link | grep p10s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p10s04 ip link | grep p10s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s04 ip link | grep p10s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p11s04 ip link | grep p11s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s04 ip link | grep p11s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0

sleep 5

echo "=== EVENT time 698 ==="
echo ">>> ip netns exec p02s07 ip addr del 10.24.98.1/30 dev p02s07LinkToGS"
ip netns exec p02s07 ip addr del 10.24.98.1/30 dev p02s07LinkToGS
echo ">>> ip netns exec gs2 ip addr del 10.24.98.2/30 dev ifgs98"
ip netns exec gs2 ip addr del 10.24.98.2/30 dev ifgs98
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0

sleep 5

echo "=== EVENT time 703 ==="
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 15

echo "=== EVENT time 718 ==="
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 15

echo "=== EVENT time 733 ==="
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 16

echo "=== EVENT time 749 ==="
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 14

echo "=== EVENT time 763 ==="
echo ">>> iface=$(ip netns exec p00s07 ip link | grep p00s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s07 ip link | grep p00s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s07 ip link | grep p01s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s07 ip link | grep p01s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s07 ip link | grep p01s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s07 ip link | grep p01s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s07 ip link | grep p04s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s07 ip link | grep p04s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s07 ip link | grep p04s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s07 ip link | grep p04s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s07 ip link | grep p05s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s07 ip link | grep p05s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s07 ip link | grep p05s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s07 ip link | grep p05s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s07 ip link | grep p06s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s07 ip link | grep p06s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s07 ip link | grep p06s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s07 ip link | grep p06s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s07 ip link | grep p07s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s07 ip link | grep p07s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s07 ip link | grep p07s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s07 ip link | grep p07s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s07 ip link | grep p08s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s07 ip link | grep p08s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s07 ip link | grep p08s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s07 ip link | grep p08s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s07 ip link | grep p09s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s07 ip link | grep p09s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s07 ip link | grep p09s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s07 ip link | grep p09s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s07 ip link | grep p10s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s07 ip link | grep p10s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s07 ip link | grep p10s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s07 ip link | grep p10s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p11s07 ip link | grep p11s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s07 ip link | grep p11s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0

sleep 2

echo "=== EVENT time 765 ==="
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 3

echo "=== EVENT time 768 ==="
echo ">>> iface=$(ip netns exec p00s01 ip link | grep p00s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s01 ip link | grep p00s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p00s05 ip link | grep p00s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s05 ip link | grep p00s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p01s01 ip link | grep p01s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s01 ip link | grep p01s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p01s01 ip link | grep p01s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s01 ip link | grep p01s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p01s05 ip link | grep p01s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s05 ip link | grep p01s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p01s05 ip link | grep p01s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s05 ip link | grep p01s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p02s01 ip link | grep p02s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s01 ip link | grep p02s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p02s01 ip link | grep p02s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s01 ip link | grep p02s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p03s01 ip link | grep p03s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s01 ip link | grep p03s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p03s01 ip link | grep p03s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s01 ip link | grep p03s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p04s01 ip link | grep p04s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s01 ip link | grep p04s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p04s01 ip link | grep p04s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s01 ip link | grep p04s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p05s01 ip link | grep p05s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s01 ip link | grep p05s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p05s01 ip link | grep p05s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s01 ip link | grep p05s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p05s05 ip link | grep p05s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s05 ip link | grep p05s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p05s05 ip link | grep p05s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s05 ip link | grep p05s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p06s01 ip link | grep p06s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s01 ip link | grep p06s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p06s01 ip link | grep p06s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s01 ip link | grep p06s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p06s05 ip link | grep p06s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s05 ip link | grep p06s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p06s05 ip link | grep p06s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s05 ip link | grep p06s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p07s01 ip link | grep p07s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s01 ip link | grep p07s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p07s01 ip link | grep p07s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s01 ip link | grep p07s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p07s05 ip link | grep p07s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s05 ip link | grep p07s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p07s05 ip link | grep p07s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s05 ip link | grep p07s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p08s01 ip link | grep p08s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s01 ip link | grep p08s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p08s01 ip link | grep p08s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s01 ip link | grep p08s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p08s05 ip link | grep p08s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s05 ip link | grep p08s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p08s05 ip link | grep p08s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s05 ip link | grep p08s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p09s01 ip link | grep p09s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s01 ip link | grep p09s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p09s01 ip link | grep p09s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s01 ip link | grep p09s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p09s05 ip link | grep p09s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s05 ip link | grep p09s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p09s05 ip link | grep p09s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s05 ip link | grep p09s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p10s01 ip link | grep p10s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s01 ip link | grep p10s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p10s01 ip link | grep p10s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s01 ip link | grep p10s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p10s05 ip link | grep p10s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s05 ip link | grep p10s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p10s05 ip link | grep p10s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s05 ip link | grep p10s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p11s01 ip link | grep p11s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s01 ip link | grep p11s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p11s05 ip link | grep p11s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s05 ip link | grep p11s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0

sleep 4

echo "=== EVENT time 772 ==="
echo ">>> iface=$(ip netns exec p00s03 ip link | grep p00s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s03 ip link | grep p00s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s03 ip link | grep p01s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s03 ip link | grep p01s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s03 ip link | grep p01s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s03 ip link | grep p01s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s03 ip link | grep p06s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s03 ip link | grep p06s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s03 ip link | grep p06s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s03 ip link | grep p06s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s03 ip link | grep p07s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s03 ip link | grep p07s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s03 ip link | grep p07s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s03 ip link | grep p07s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s03 ip link | grep p08s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s03 ip link | grep p08s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s03 ip link | grep p08s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s03 ip link | grep p08s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s03 ip link | grep p09s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s03 ip link | grep p09s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s03 ip link | grep p09s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s03 ip link | grep p09s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s03 ip link | grep p10s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s03 ip link | grep p10s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s03 ip link | grep p10s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s03 ip link | grep p10s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p11s03 ip link | grep p11s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s03 ip link | grep p11s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0

sleep 10

echo "=== EVENT time 782 ==="
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 19

echo "=== EVENT time 801 ==="
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0

sleep 1

echo "=== EVENT time 802 ==="
echo ">>> ip netns exec p03s06 ip addr add 10.31.97.1/30 dev p03s06LinkToGS"
ip netns exec p03s06 ip addr add 10.31.97.1/30 dev p03s06LinkToGS
echo ">>> ip netns exec gs1 ip addr add 10.31.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr add 10.31.97.2/30 dev ifgs97
echo ">>> ip netns exec p04s06 ip addr del 10.39.97.1/30 dev p04s06LinkToGS"
ip netns exec p04s06 ip addr del 10.39.97.1/30 dev p04s06LinkToGS
echo ">>> ip netns exec gs1 ip addr del 10.39.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr del 10.39.97.2/30 dev ifgs97
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0

sleep 22

echo "=== EVENT time 824 ==="
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 21

echo "=== EVENT time 845 ==="
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 20

echo "=== EVENT time 865 ==="
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 20

echo "=== EVENT time 885 ==="
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 22

echo "=== EVENT time 907 ==="
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 30

echo "=== EVENT time 937 ==="
echo ">>> iface=$(ip netns exec p00s07 ip link | grep p00s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s07 ip link | grep p00s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p01s07 ip link | grep p01s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s07 ip link | grep p01s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p01s07 ip link | grep p01s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s07 ip link | grep p01s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p04s07 ip link | grep p04s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s07 ip link | grep p04s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p04s07 ip link | grep p04s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s07 ip link | grep p04s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p05s07 ip link | grep p05s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s07 ip link | grep p05s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p05s07 ip link | grep p05s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s07 ip link | grep p05s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p06s07 ip link | grep p06s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s07 ip link | grep p06s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p06s07 ip link | grep p06s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s07 ip link | grep p06s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p07s07 ip link | grep p07s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s07 ip link | grep p07s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p07s07 ip link | grep p07s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s07 ip link | grep p07s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p08s07 ip link | grep p08s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s07 ip link | grep p08s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p08s07 ip link | grep p08s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s07 ip link | grep p08s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p09s07 ip link | grep p09s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s07 ip link | grep p09s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p09s07 ip link | grep p09s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s07 ip link | grep p09s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p10s07 ip link | grep p10s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s07 ip link | grep p10s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p10s07 ip link | grep p10s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s07 ip link | grep p10s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p11s07 ip link | grep p11s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s07 ip link | grep p11s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0

sleep 3

echo "=== EVENT time 940 ==="
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 9

echo "=== EVENT time 949 ==="
echo ">>> iface=$(ip netns exec p00s03 ip link | grep p00s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s03 ip link | grep p00s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p01s03 ip link | grep p01s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s03 ip link | grep p01s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p01s03 ip link | grep p01s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s03 ip link | grep p01s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p06s03 ip link | grep p06s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s03 ip link | grep p06s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p06s03 ip link | grep p06s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s03 ip link | grep p06s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p07s03 ip link | grep p07s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s03 ip link | grep p07s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p07s03 ip link | grep p07s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s03 ip link | grep p07s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p08s03 ip link | grep p08s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s03 ip link | grep p08s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p08s03 ip link | grep p08s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s03 ip link | grep p08s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p09s03 ip link | grep p09s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s03 ip link | grep p09s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p09s03 ip link | grep p09s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s03 ip link | grep p09s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p10s03 ip link | grep p10s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s03 ip link | grep p10s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p10s03 ip link | grep p10s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s03 ip link | grep p10s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p11s03 ip link | grep p11s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s03 ip link | grep p11s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0

sleep 34

echo "=== EVENT time 983 ==="
echo ">>> iface=$(ip netns exec p00s05 ip link | grep p00s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s05 ip link | grep p00s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p01s05 ip link | grep p01s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s05 ip link | grep p01s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p01s05 ip link | grep p01s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s05 ip link | grep p01s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p05s05 ip link | grep p05s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s05 ip link | grep p05s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p05s05 ip link | grep p05s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s05 ip link | grep p05s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p06s05 ip link | grep p06s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s05 ip link | grep p06s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p06s05 ip link | grep p06s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s05 ip link | grep p06s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p07s05 ip link | grep p07s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s05 ip link | grep p07s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p07s05 ip link | grep p07s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s05 ip link | grep p07s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p08s05 ip link | grep p08s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s05 ip link | grep p08s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p08s05 ip link | grep p08s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s05 ip link | grep p08s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p09s05 ip link | grep p09s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s05 ip link | grep p09s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p09s05 ip link | grep p09s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s05 ip link | grep p09s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p10s05 ip link | grep p10s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s05 ip link | grep p10s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p10s05 ip link | grep p10s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s05 ip link | grep p10s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p11s05 ip link | grep p11s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s05 ip link | grep p11s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0

sleep 1

echo "=== EVENT time 984 ==="
echo ">>> iface=$(ip netns exec p00s01 ip link | grep p00s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s01 ip link | grep p00s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p01s01 ip link | grep p01s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s01 ip link | grep p01s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p01s01 ip link | grep p01s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s01 ip link | grep p01s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p02s01 ip link | grep p02s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s01 ip link | grep p02s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p02s01 ip link | grep p02s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s01 ip link | grep p02s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p03s01 ip link | grep p03s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s01 ip link | grep p03s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p03s01 ip link | grep p03s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s01 ip link | grep p03s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p04s01 ip link | grep p04s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s01 ip link | grep p04s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p04s01 ip link | grep p04s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s01 ip link | grep p04s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p05s01 ip link | grep p05s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s01 ip link | grep p05s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p05s01 ip link | grep p05s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s01 ip link | grep p05s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p06s01 ip link | grep p06s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s01 ip link | grep p06s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p06s01 ip link | grep p06s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s01 ip link | grep p06s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p07s01 ip link | grep p07s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s01 ip link | grep p07s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p07s01 ip link | grep p07s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s01 ip link | grep p07s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p08s01 ip link | grep p08s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s01 ip link | grep p08s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p08s01 ip link | grep p08s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s01 ip link | grep p08s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p09s01 ip link | grep p09s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s01 ip link | grep p09s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p09s01 ip link | grep p09s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s01 ip link | grep p09s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p10s01 ip link | grep p10s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s01 ip link | grep p10s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p10s01 ip link | grep p10s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s01 ip link | grep p10s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p11s01 ip link | grep p11s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s01 ip link | grep p11s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0

sleep 17

echo "=== EVENT time 1001 ==="
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 20

echo "=== EVENT time 1021 ==="
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 19

echo "=== EVENT time 1040 ==="
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 18

echo "=== EVENT time 1058 ==="
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 19

echo "=== EVENT time 1077 ==="
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 19

echo "=== EVENT time 1096 ==="
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0

sleep 10

echo "=== EVENT time 1106 ==="
echo ">>> ip netns exec p02s06 ip addr add 10.23.97.1/30 dev p02s06LinkToGS"
ip netns exec p02s06 ip addr add 10.23.97.1/30 dev p02s06LinkToGS
echo ">>> ip netns exec gs1 ip addr add 10.23.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr add 10.23.97.2/30 dev ifgs97
echo ">>> ip netns exec p03s06 ip addr del 10.31.97.1/30 dev p03s06LinkToGS"
ip netns exec p03s06 ip addr del 10.31.97.1/30 dev p03s06LinkToGS
echo ">>> ip netns exec gs1 ip addr del 10.31.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr del 10.31.97.2/30 dev ifgs97
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0

sleep 21

echo "=== EVENT time 1127 ==="
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 14

echo "=== EVENT time 1141 ==="
echo ">>> ip netns exec p05s05 ip addr add 10.46.98.1/30 dev p05s05LinkToGS"
ip netns exec p05s05 ip addr add 10.46.98.1/30 dev p05s05LinkToGS
echo ">>> ip netns exec gs2 ip addr add 10.46.98.2/30 dev ifgs98"
ip netns exec gs2 ip addr add 10.46.98.2/30 dev ifgs98
echo ">>> iface=$(ip netns exec p05s05 ip link | grep p05s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s05 ip link | grep p05s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 6

echo "=== EVENT time 1147 ==="
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 7

echo "=== EVENT time 1154 ==="
echo ">>> iface=$(ip netns exec p00s07 ip link | grep p00s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s07 ip link | grep p00s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p01s07 ip link | grep p01s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s07 ip link | grep p01s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p01s07 ip link | grep p01s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s07 ip link | grep p01s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p04s07 ip link | grep p04s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s07 ip link | grep p04s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p04s07 ip link | grep p04s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s07 ip link | grep p04s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p05s07 ip link | grep p05s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s07 ip link | grep p05s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p05s07 ip link | grep p05s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s07 ip link | grep p05s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p06s07 ip link | grep p06s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s07 ip link | grep p06s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p06s07 ip link | grep p06s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s07 ip link | grep p06s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p07s07 ip link | grep p07s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s07 ip link | grep p07s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p07s07 ip link | grep p07s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s07 ip link | grep p07s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p08s07 ip link | grep p08s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s07 ip link | grep p08s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p08s07 ip link | grep p08s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s07 ip link | grep p08s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p09s07 ip link | grep p09s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s07 ip link | grep p09s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p09s07 ip link | grep p09s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s07 ip link | grep p09s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p10s07 ip link | grep p10s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s07 ip link | grep p10s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p10s07 ip link | grep p10s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s07 ip link | grep p10s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p11s07 ip link | grep p11s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s07 ip link | grep p11s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0

sleep 12

echo "=== EVENT time 1166 ==="
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 1

echo "=== EVENT time 1167 ==="
echo ">>> iface=$(ip netns exec p00s05 ip link | grep p00s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s05 ip link | grep p00s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s05 ip link | grep p01s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s05 ip link | grep p01s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s05 ip link | grep p01s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s05 ip link | grep p01s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s05 ip link | grep p05s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s05 ip link | grep p05s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s05 ip link | grep p05s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s05 ip link | grep p05s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s05 ip link | grep p06s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s05 ip link | grep p06s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s05 ip link | grep p06s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s05 ip link | grep p06s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s05 ip link | grep p07s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s05 ip link | grep p07s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s05 ip link | grep p07s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s05 ip link | grep p07s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s05 ip link | grep p08s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s05 ip link | grep p08s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s05 ip link | grep p08s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s05 ip link | grep p08s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s05 ip link | grep p09s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s05 ip link | grep p09s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s05 ip link | grep p09s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s05 ip link | grep p09s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s05 ip link | grep p10s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s05 ip link | grep p10s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s05 ip link | grep p10s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s05 ip link | grep p10s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p11s05 ip link | grep p11s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s05 ip link | grep p11s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0

sleep 2

echo "=== EVENT time 1169 ==="
echo ">>> iface=$(ip netns exec p00s01 ip link | grep p00s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s01 ip link | grep p00s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s01 ip link | grep p01s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s01 ip link | grep p01s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s01 ip link | grep p01s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s01 ip link | grep p01s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s01 ip link | grep p02s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s01 ip link | grep p02s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s01 ip link | grep p02s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s01 ip link | grep p02s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s01 ip link | grep p03s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s01 ip link | grep p03s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s01 ip link | grep p03s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s01 ip link | grep p03s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s01 ip link | grep p04s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s01 ip link | grep p04s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s01 ip link | grep p04s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s01 ip link | grep p04s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s01 ip link | grep p05s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s01 ip link | grep p05s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s01 ip link | grep p05s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s01 ip link | grep p05s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s01 ip link | grep p06s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s01 ip link | grep p06s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s01 ip link | grep p06s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s01 ip link | grep p06s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s01 ip link | grep p07s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s01 ip link | grep p07s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s01 ip link | grep p07s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s01 ip link | grep p07s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s01 ip link | grep p08s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s01 ip link | grep p08s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s01 ip link | grep p08s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s01 ip link | grep p08s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s01 ip link | grep p09s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s01 ip link | grep p09s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s01 ip link | grep p09s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s01 ip link | grep p09s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s01 ip link | grep p10s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s01 ip link | grep p10s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s01 ip link | grep p10s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s01 ip link | grep p10s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p11s01 ip link | grep p11s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s01 ip link | grep p11s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0

sleep 3

echo "=== EVENT time 1172 ==="
echo ">>> iface=$(ip netns exec p00s03 ip link | grep p00s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s03 ip link | grep p00s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p01s03 ip link | grep p01s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s03 ip link | grep p01s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p01s03 ip link | grep p01s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s03 ip link | grep p01s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p06s03 ip link | grep p06s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s03 ip link | grep p06s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p06s03 ip link | grep p06s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s03 ip link | grep p06s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p07s03 ip link | grep p07s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s03 ip link | grep p07s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p07s03 ip link | grep p07s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s03 ip link | grep p07s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p08s03 ip link | grep p08s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s03 ip link | grep p08s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p08s03 ip link | grep p08s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s03 ip link | grep p08s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p09s03 ip link | grep p09s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s03 ip link | grep p09s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p09s03 ip link | grep p09s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s03 ip link | grep p09s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p10s03 ip link | grep p10s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s03 ip link | grep p10s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p10s03 ip link | grep p10s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s03 ip link | grep p10s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p11s03 ip link | grep p11s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s03 ip link | grep p11s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0

sleep 10

echo "=== EVENT time 1182 ==="
echo ">>> iface=$(ip netns exec p05s05 ip link | grep p05s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s05 ip link | grep p05s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 3

echo "=== EVENT time 1185 ==="
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 19

echo "=== EVENT time 1204 ==="
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 3

echo "=== EVENT time 1207 ==="
echo ">>> iface=$(ip netns exec p05s05 ip link | grep p05s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s05 ip link | grep p05s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 15

echo "=== EVENT time 1222 ==="
echo ">>> ip netns exec p05s05 ip addr del 10.46.98.1/30 dev p05s05LinkToGS"
ip netns exec p05s05 ip addr del 10.46.98.1/30 dev p05s05LinkToGS
echo ">>> ip netns exec gs2 ip addr del 10.46.98.2/30 dev ifgs98"
ip netns exec gs2 ip addr del 10.46.98.2/30 dev ifgs98
echo ">>> iface=$(ip netns exec p05s05 ip link | grep p05s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s05 ip link | grep p05s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0

sleep 5

echo "=== EVENT time 1227 ==="
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 81

echo "=== EVENT time 1308 ==="
echo ">>> ip netns exec p04s05 ip addr add 10.38.97.1/30 dev p04s05LinkToGS"
ip netns exec p04s05 ip addr add 10.38.97.1/30 dev p04s05LinkToGS
echo ">>> ip netns exec gs1 ip addr add 10.38.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr add 10.38.97.2/30 dev ifgs97
echo ">>> ip netns exec p02s06 ip addr add 10.23.98.1/30 dev p02s06LinkToGS"
ip netns exec p02s06 ip addr add 10.23.98.1/30 dev p02s06LinkToGS
echo ">>> ip netns exec gs2 ip addr add 10.23.98.2/30 dev ifgs98"
ip netns exec gs2 ip addr add 10.23.98.2/30 dev ifgs98
echo ">>> ip netns exec p02s06 ip addr del 10.23.97.1/30 dev p02s06LinkToGS"
ip netns exec p02s06 ip addr del 10.23.97.1/30 dev p02s06LinkToGS
echo ">>> ip netns exec gs1 ip addr del 10.23.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr del 10.23.97.2/30 dev ifgs97
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 3.0"
/usr/local/bin/updatemap --dev $iface --delay 3.0
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 3.0"
/usr/local/bin/updatemap --dev $iface --delay 3.0

sleep 17

echo "=== EVENT time 1325 ==="
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 18

echo "=== EVENT time 1343 ==="
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 17

echo "=== EVENT time 1360 ==="
echo ">>> iface=$(ip netns exec p00s05 ip link | grep p00s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s05 ip link | grep p00s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p01s05 ip link | grep p01s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s05 ip link | grep p01s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p01s05 ip link | grep p01s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s05 ip link | grep p01s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p05s05 ip link | grep p05s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s05 ip link | grep p05s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p05s05 ip link | grep p05s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s05 ip link | grep p05s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p06s05 ip link | grep p06s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s05 ip link | grep p06s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p06s05 ip link | grep p06s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s05 ip link | grep p06s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p07s05 ip link | grep p07s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s05 ip link | grep p07s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p07s05 ip link | grep p07s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s05 ip link | grep p07s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p08s05 ip link | grep p08s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s05 ip link | grep p08s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p08s05 ip link | grep p08s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s05 ip link | grep p08s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p09s05 ip link | grep p09s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s05 ip link | grep p09s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p09s05 ip link | grep p09s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s05 ip link | grep p09s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p10s05 ip link | grep p10s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s05 ip link | grep p10s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p10s05 ip link | grep p10s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s05 ip link | grep p10s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p11s05 ip link | grep p11s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s05 ip link | grep p11s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0

sleep 4

echo "=== EVENT time 1364 ==="
echo ">>> iface=$(ip netns exec p00s01 ip link | grep p00s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s01 ip link | grep p00s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p01s01 ip link | grep p01s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s01 ip link | grep p01s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p01s01 ip link | grep p01s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s01 ip link | grep p01s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p02s01 ip link | grep p02s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s01 ip link | grep p02s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p02s01 ip link | grep p02s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s01 ip link | grep p02s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p03s01 ip link | grep p03s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s01 ip link | grep p03s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p03s01 ip link | grep p03s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s01 ip link | grep p03s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p04s01 ip link | grep p04s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s01 ip link | grep p04s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p04s01 ip link | grep p04s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s01 ip link | grep p04s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p05s01 ip link | grep p05s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s01 ip link | grep p05s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p05s01 ip link | grep p05s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s01 ip link | grep p05s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p06s01 ip link | grep p06s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s01 ip link | grep p06s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p06s01 ip link | grep p06s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s01 ip link | grep p06s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p07s01 ip link | grep p07s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s01 ip link | grep p07s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p07s01 ip link | grep p07s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s01 ip link | grep p07s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p08s01 ip link | grep p08s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s01 ip link | grep p08s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p08s01 ip link | grep p08s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s01 ip link | grep p08s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p09s01 ip link | grep p09s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s01 ip link | grep p09s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p09s01 ip link | grep p09s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s01 ip link | grep p09s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p10s01 ip link | grep p10s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s01 ip link | grep p10s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p10s01 ip link | grep p10s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s01 ip link | grep p10s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p11s01 ip link | grep p11s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s01 ip link | grep p11s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0

sleep 3

echo "=== EVENT time 1367 ==="
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 3.0"
/usr/local/bin/updatemap --dev $iface --delay 3.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 3.0"
/usr/local/bin/updatemap --dev $iface --delay 3.0

sleep 29

echo "=== EVENT time 1396 ==="
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 8

echo "=== EVENT time 1404 ==="
echo ">>> iface=$(ip netns exec p00s06 ip link | grep p00s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s06 ip link | grep p00s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s06 ip link | grep p01s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s06 ip link | grep p01s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s06 ip link | grep p01s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s06 ip link | grep p01s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s06 ip link | grep p06s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s06 ip link | grep p06s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s06 ip link | grep p06s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s06 ip link | grep p06s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s06 ip link | grep p07s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s06 ip link | grep p07s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s06 ip link | grep p07s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s06 ip link | grep p07s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s06 ip link | grep p08s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s06 ip link | grep p08s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s06 ip link | grep p08s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s06 ip link | grep p08s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s06 ip link | grep p09s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s06 ip link | grep p09s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s06 ip link | grep p09s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s06 ip link | grep p09s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s06 ip link | grep p10s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s06 ip link | grep p10s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s06 ip link | grep p10s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s06 ip link | grep p10s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p11s06 ip link | grep p11s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s06 ip link | grep p11s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0

sleep 4

echo "=== EVENT time 1408 ==="
echo ">>> iface=$(ip netns exec p00s02 ip link | grep p00s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s02 ip link | grep p00s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s02 ip link | grep p01s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s02 ip link | grep p01s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s02 ip link | grep p01s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s02 ip link | grep p01s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s02 ip link | grep p02s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s02 ip link | grep p02s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s02 ip link | grep p02s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s02 ip link | grep p02s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s02 ip link | grep p03s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s02 ip link | grep p03s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s02 ip link | grep p03s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s02 ip link | grep p03s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s02 ip link | grep p06s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s02 ip link | grep p06s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s02 ip link | grep p06s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s02 ip link | grep p06s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s02 ip link | grep p07s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s02 ip link | grep p07s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s02 ip link | grep p07s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s02 ip link | grep p07s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s02 ip link | grep p08s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s02 ip link | grep p08s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s02 ip link | grep p08s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s02 ip link | grep p08s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s02 ip link | grep p09s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s02 ip link | grep p09s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s02 ip link | grep p09s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s02 ip link | grep p09s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s02 ip link | grep p10s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s02 ip link | grep p10s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s02 ip link | grep p10s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s02 ip link | grep p10s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p11s02 ip link | grep p11s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s02 ip link | grep p11s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0

sleep 4

echo "=== EVENT time 1412 ==="
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 1

echo "=== EVENT time 1413 ==="
echo ">>> ip netns exec p02s06 ip addr del 10.23.98.1/30 dev p02s06LinkToGS"
ip netns exec p02s06 ip addr del 10.23.98.1/30 dev p02s06LinkToGS
echo ">>> ip netns exec gs2 ip addr del 10.23.98.2/30 dev ifgs98"
ip netns exec gs2 ip addr del 10.23.98.2/30 dev ifgs98
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0

sleep 17

echo "=== EVENT time 1430 ==="
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 17

echo "=== EVENT time 1447 ==="
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 16

echo "=== EVENT time 1463 ==="
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 15

echo "=== EVENT time 1478 ==="
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 15

echo "=== EVENT time 1493 ==="
echo ">>> iface=$(ip netns exec p00s04 ip link | grep p00s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s04 ip link | grep p00s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p01s04 ip link | grep p01s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s04 ip link | grep p01s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p01s04 ip link | grep p01s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s04 ip link | grep p01s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p06s04 ip link | grep p06s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s04 ip link | grep p06s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p06s04 ip link | grep p06s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s04 ip link | grep p06s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p07s04 ip link | grep p07s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s04 ip link | grep p07s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p07s04 ip link | grep p07s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s04 ip link | grep p07s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p08s04 ip link | grep p08s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s04 ip link | grep p08s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p08s04 ip link | grep p08s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s04 ip link | grep p08s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p09s04 ip link | grep p09s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s04 ip link | grep p09s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p09s04 ip link | grep p09s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s04 ip link | grep p09s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p10s04 ip link | grep p10s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s04 ip link | grep p10s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p10s04 ip link | grep p10s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s04 ip link | grep p10s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p11s04 ip link | grep p11s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s04 ip link | grep p11s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0

sleep 1

echo "=== EVENT time 1494 ==="
echo ">>> iface=$(ip netns exec p00s00 ip link | grep p00s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s00 ip link | grep p00s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p01s00 ip link | grep p01s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s00 ip link | grep p01s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p01s00 ip link | grep p01s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s00 ip link | grep p01s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p02s00 ip link | grep p02s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s00 ip link | grep p02s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p02s00 ip link | grep p02s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s00 ip link | grep p02s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p03s00 ip link | grep p03s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s00 ip link | grep p03s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p03s00 ip link | grep p03s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s00 ip link | grep p03s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p04s00 ip link | grep p04s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s00 ip link | grep p04s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p04s00 ip link | grep p04s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s00 ip link | grep p04s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec p05s00 ip link | grep p05s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s00 ip link | grep p05s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p05s00 ip link | grep p05s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s00 ip link | grep p05s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p06s00 ip link | grep p06s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s00 ip link | grep p06s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p06s00 ip link | grep p06s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s00 ip link | grep p06s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p07s00 ip link | grep p07s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s00 ip link | grep p07s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p07s00 ip link | grep p07s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s00 ip link | grep p07s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p08s00 ip link | grep p08s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s00 ip link | grep p08s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p08s00 ip link | grep p08s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s00 ip link | grep p08s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p09s00 ip link | grep p09s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s00 ip link | grep p09s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p09s00 ip link | grep p09s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s00 ip link | grep p09s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p10s00 ip link | grep p10s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s00 ip link | grep p10s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p10s00 ip link | grep p10s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s00 ip link | grep p10s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p11s00 ip link | grep p11s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s00 ip link | grep p11s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 16

echo "=== EVENT time 1510 ==="
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 17

echo "=== EVENT time 1527 ==="
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 19

echo "=== EVENT time 1546 ==="
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0

sleep 3

echo "=== EVENT time 1549 ==="
echo ">>> ip netns exec p03s05 ip addr add 10.30.97.1/30 dev p03s05LinkToGS"
ip netns exec p03s05 ip addr add 10.30.97.1/30 dev p03s05LinkToGS
echo ">>> ip netns exec gs1 ip addr add 10.30.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr add 10.30.97.2/30 dev ifgs97
echo ">>> ip netns exec p04s05 ip addr del 10.38.97.1/30 dev p04s05LinkToGS"
ip netns exec p04s05 ip addr del 10.38.97.1/30 dev p04s05LinkToGS
echo ">>> ip netns exec gs1 ip addr del 10.38.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr del 10.38.97.2/30 dev ifgs97
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0

sleep 22

echo "=== EVENT time 1571 ==="
echo ">>> iface=$(ip netns exec p00s06 ip link | grep p00s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s06 ip link | grep p00s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p01s06 ip link | grep p01s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s06 ip link | grep p01s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p01s06 ip link | grep p01s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s06 ip link | grep p01s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p06s06 ip link | grep p06s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s06 ip link | grep p06s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p06s06 ip link | grep p06s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s06 ip link | grep p06s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p07s06 ip link | grep p07s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s06 ip link | grep p07s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p07s06 ip link | grep p07s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s06 ip link | grep p07s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p08s06 ip link | grep p08s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s06 ip link | grep p08s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p08s06 ip link | grep p08s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s06 ip link | grep p08s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p09s06 ip link | grep p09s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s06 ip link | grep p09s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p09s06 ip link | grep p09s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s06 ip link | grep p09s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p10s06 ip link | grep p10s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s06 ip link | grep p10s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p10s06 ip link | grep p10s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s06 ip link | grep p10s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p11s06 ip link | grep p11s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s06 ip link | grep p11s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 5

echo "=== EVENT time 1576 ==="
echo ">>> iface=$(ip netns exec p00s02 ip link | grep p00s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s02 ip link | grep p00s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p01s02 ip link | grep p01s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s02 ip link | grep p01s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p01s02 ip link | grep p01s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s02 ip link | grep p01s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p02s02 ip link | grep p02s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s02 ip link | grep p02s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p02s02 ip link | grep p02s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s02 ip link | grep p02s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p03s02 ip link | grep p03s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s02 ip link | grep p03s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p03s02 ip link | grep p03s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s02 ip link | grep p03s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p06s02 ip link | grep p06s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s02 ip link | grep p06s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p06s02 ip link | grep p06s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s02 ip link | grep p06s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p07s02 ip link | grep p07s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s02 ip link | grep p07s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p07s02 ip link | grep p07s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s02 ip link | grep p07s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p08s02 ip link | grep p08s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s02 ip link | grep p08s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p08s02 ip link | grep p08s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s02 ip link | grep p08s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p09s02 ip link | grep p09s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s02 ip link | grep p09s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p09s02 ip link | grep p09s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s02 ip link | grep p09s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p10s02 ip link | grep p10s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s02 ip link | grep p10s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p10s02 ip link | grep p10s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s02 ip link | grep p10s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p11s02 ip link | grep p11s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s02 ip link | grep p11s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0

sleep 16

echo "=== EVENT time 1592 ==="
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 20

echo "=== EVENT time 1612 ==="
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 20

echo "=== EVENT time 1632 ==="
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 22

echo "=== EVENT time 1654 ==="
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 31

echo "=== EVENT time 1685 ==="
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 21

echo "=== EVENT time 1706 ==="
echo ">>> iface=$(ip netns exec p00s04 ip link | grep p00s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s04 ip link | grep p00s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p01s04 ip link | grep p01s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s04 ip link | grep p01s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p01s04 ip link | grep p01s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s04 ip link | grep p01s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p06s04 ip link | grep p06s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s04 ip link | grep p06s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p06s04 ip link | grep p06s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s04 ip link | grep p06s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p07s04 ip link | grep p07s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s04 ip link | grep p07s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p07s04 ip link | grep p07s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s04 ip link | grep p07s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p08s04 ip link | grep p08s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s04 ip link | grep p08s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p08s04 ip link | grep p08s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s04 ip link | grep p08s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p09s04 ip link | grep p09s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s04 ip link | grep p09s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p09s04 ip link | grep p09s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s04 ip link | grep p09s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p10s04 ip link | grep p10s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s04 ip link | grep p10s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p10s04 ip link | grep p10s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s04 ip link | grep p10s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p11s04 ip link | grep p11s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s04 ip link | grep p11s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0

sleep 2

echo "=== EVENT time 1708 ==="
echo ">>> iface=$(ip netns exec p00s00 ip link | grep p00s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s00 ip link | grep p00s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p01s00 ip link | grep p01s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s00 ip link | grep p01s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p01s00 ip link | grep p01s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s00 ip link | grep p01s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p02s00 ip link | grep p02s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s00 ip link | grep p02s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p02s00 ip link | grep p02s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s00 ip link | grep p02s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p03s00 ip link | grep p03s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s00 ip link | grep p03s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p03s00 ip link | grep p03s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s00 ip link | grep p03s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p04s00 ip link | grep p04s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s00 ip link | grep p04s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p04s00 ip link | grep p04s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s00 ip link | grep p04s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p05s00 ip link | grep p05s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s00 ip link | grep p05s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p05s00 ip link | grep p05s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s00 ip link | grep p05s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p06s00 ip link | grep p06s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s00 ip link | grep p06s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p06s00 ip link | grep p06s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s00 ip link | grep p06s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p07s00 ip link | grep p07s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s00 ip link | grep p07s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p07s00 ip link | grep p07s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s00 ip link | grep p07s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p08s00 ip link | grep p08s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s00 ip link | grep p08s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p08s00 ip link | grep p08s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s00 ip link | grep p08s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p09s00 ip link | grep p09s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s00 ip link | grep p09s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p09s00 ip link | grep p09s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s00 ip link | grep p09s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p10s00 ip link | grep p10s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s00 ip link | grep p10s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p10s00 ip link | grep p10s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s00 ip link | grep p10s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p11s00 ip link | grep p11s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s00 ip link | grep p11s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0

sleep 41

echo "=== EVENT time 1749 ==="
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 14

echo "=== EVENT time 1763 ==="
echo ">>> iface=$(ip netns exec p00s06 ip link | grep p00s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s06 ip link | grep p00s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p01s06 ip link | grep p01s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s06 ip link | grep p01s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p01s06 ip link | grep p01s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s06 ip link | grep p01s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p06s06 ip link | grep p06s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s06 ip link | grep p06s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p06s06 ip link | grep p06s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s06 ip link | grep p06s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p07s06 ip link | grep p07s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s06 ip link | grep p07s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p07s06 ip link | grep p07s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s06 ip link | grep p07s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p08s06 ip link | grep p08s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s06 ip link | grep p08s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p08s06 ip link | grep p08s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s06 ip link | grep p08s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p09s06 ip link | grep p09s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s06 ip link | grep p09s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p09s06 ip link | grep p09s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s06 ip link | grep p09s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p10s06 ip link | grep p10s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s06 ip link | grep p10s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p10s06 ip link | grep p10s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s06 ip link | grep p10s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p11s06 ip link | grep p11s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s06 ip link | grep p11s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0

sleep 6

echo "=== EVENT time 1769 ==="
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 1

echo "=== EVENT time 1770 ==="
echo ">>> iface=$(ip netns exec p00s02 ip link | grep p00s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s02 ip link | grep p00s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p01s02 ip link | grep p01s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s02 ip link | grep p01s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p01s02 ip link | grep p01s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s02 ip link | grep p01s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p02s02 ip link | grep p02s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s02 ip link | grep p02s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p02s02 ip link | grep p02s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s02 ip link | grep p02s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p03s02 ip link | grep p03s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s02 ip link | grep p03s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p03s02 ip link | grep p03s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s02 ip link | grep p03s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p06s02 ip link | grep p06s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s02 ip link | grep p06s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p06s02 ip link | grep p06s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s02 ip link | grep p06s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p07s02 ip link | grep p07s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s02 ip link | grep p07s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p07s02 ip link | grep p07s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s02 ip link | grep p07s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p08s02 ip link | grep p08s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s02 ip link | grep p08s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p08s02 ip link | grep p08s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s02 ip link | grep p08s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p09s02 ip link | grep p09s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s02 ip link | grep p09s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p09s02 ip link | grep p09s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s02 ip link | grep p09s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p10s02 ip link | grep p10s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s02 ip link | grep p10s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p10s02 ip link | grep p10s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s02 ip link | grep p10s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p11s02 ip link | grep p11s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s02 ip link | grep p11s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0

sleep 17

echo "=== EVENT time 1787 ==="
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 18

echo "=== EVENT time 1805 ==="
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 18

echo "=== EVENT time 1823 ==="
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 19

echo "=== EVENT time 1842 ==="
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0

sleep 13

echo "=== EVENT time 1855 ==="
echo ">>> ip netns exec p02s05 ip addr add 10.22.97.1/30 dev p02s05LinkToGS"
ip netns exec p02s05 ip addr add 10.22.97.1/30 dev p02s05LinkToGS
echo ">>> ip netns exec gs1 ip addr add 10.22.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr add 10.22.97.2/30 dev ifgs97
echo ">>> ip netns exec p03s05 ip addr del 10.30.97.1/30 dev p03s05LinkToGS"
ip netns exec p03s05 ip addr del 10.30.97.1/30 dev p03s05LinkToGS
echo ">>> ip netns exec gs1 ip addr del 10.30.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr del 10.30.97.2/30 dev ifgs97
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0

sleep 1

echo "=== EVENT time 1856 ==="
echo ">>> ip netns exec p05s04 ip addr add 10.45.98.1/30 dev p05s04LinkToGS"
ip netns exec p05s04 ip addr add 10.45.98.1/30 dev p05s04LinkToGS
echo ">>> ip netns exec gs2 ip addr add 10.45.98.2/30 dev ifgs98"
ip netns exec gs2 ip addr add 10.45.98.2/30 dev ifgs98
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 21

echo "=== EVENT time 1877 ==="
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 13

echo "=== EVENT time 1890 ==="
echo ">>> iface=$(ip netns exec p00s04 ip link | grep p00s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s04 ip link | grep p00s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s04 ip link | grep p01s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s04 ip link | grep p01s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s04 ip link | grep p01s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s04 ip link | grep p01s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s04 ip link | grep p06s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s04 ip link | grep p06s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s04 ip link | grep p06s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s04 ip link | grep p06s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s04 ip link | grep p07s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s04 ip link | grep p07s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s04 ip link | grep p07s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s04 ip link | grep p07s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s04 ip link | grep p08s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s04 ip link | grep p08s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s04 ip link | grep p08s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s04 ip link | grep p08s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s04 ip link | grep p09s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s04 ip link | grep p09s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s04 ip link | grep p09s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s04 ip link | grep p09s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s04 ip link | grep p10s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s04 ip link | grep p10s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s04 ip link | grep p10s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s04 ip link | grep p10s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p11s04 ip link | grep p11s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s04 ip link | grep p11s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0

sleep 3

echo "=== EVENT time 1893 ==="
echo ">>> iface=$(ip netns exec p00s00 ip link | grep p00s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s00 ip link | grep p00s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s00 ip link | grep p01s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s00 ip link | grep p01s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s00 ip link | grep p01s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s00 ip link | grep p01s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s00 ip link | grep p02s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s00 ip link | grep p02s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s00 ip link | grep p02s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s00 ip link | grep p02s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s00 ip link | grep p03s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s00 ip link | grep p03s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s00 ip link | grep p03s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s00 ip link | grep p03s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s00 ip link | grep p04s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s00 ip link | grep p04s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s00 ip link | grep p04s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s00 ip link | grep p04s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s00 ip link | grep p05s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s00 ip link | grep p05s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s00 ip link | grep p05s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s00 ip link | grep p05s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s00 ip link | grep p06s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s00 ip link | grep p06s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s00 ip link | grep p06s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s00 ip link | grep p06s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s00 ip link | grep p07s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s00 ip link | grep p07s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s00 ip link | grep p07s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s00 ip link | grep p07s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s00 ip link | grep p08s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s00 ip link | grep p08s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s00 ip link | grep p08s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s00 ip link | grep p08s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s00 ip link | grep p09s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s00 ip link | grep p09s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s00 ip link | grep p09s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s00 ip link | grep p09s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s00 ip link | grep p10s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s00 ip link | grep p10s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s00 ip link | grep p10s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s00 ip link | grep p10s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p11s00 ip link | grep p11s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s00 ip link | grep p11s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0

sleep 5

echo "=== EVENT time 1898 ==="
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 20

echo "=== EVENT time 1918 ==="
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 1

echo "=== EVENT time 1919 ==="
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 20

echo "=== EVENT time 1939 ==="
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 1

echo "=== EVENT time 1940 ==="
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 19

echo "=== EVENT time 1959 ==="
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 4

echo "=== EVENT time 1963 ==="
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 12

echo "=== EVENT time 1975 ==="
echo ">>> ip netns exec p05s04 ip addr del 10.45.98.1/30 dev p05s04LinkToGS"
ip netns exec p05s04 ip addr del 10.45.98.1/30 dev p05s04LinkToGS
echo ">>> ip netns exec gs2 ip addr del 10.45.98.2/30 dev ifgs98"
ip netns exec gs2 ip addr del 10.45.98.2/30 dev ifgs98
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0

sleep 49

echo "=== EVENT time 2024 ==="
echo ">>> ip netns exec p04s04 ip addr add 10.37.97.1/30 dev p04s04LinkToGS"
ip netns exec p04s04 ip addr add 10.37.97.1/30 dev p04s04LinkToGS
echo ">>> ip netns exec gs1 ip addr add 10.37.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr add 10.37.97.2/30 dev ifgs97
echo ">>> ip netns exec p02s05 ip addr add 10.22.98.1/30 dev p02s05LinkToGS"
ip netns exec p02s05 ip addr add 10.22.98.1/30 dev p02s05LinkToGS
echo ">>> ip netns exec gs2 ip addr add 10.22.98.2/30 dev ifgs98"
ip netns exec gs2 ip addr add 10.22.98.2/30 dev ifgs98
echo ">>> ip netns exec p02s05 ip addr del 10.22.97.1/30 dev p02s05LinkToGS"
ip netns exec p02s05 ip addr del 10.22.97.1/30 dev p02s05LinkToGS
echo ">>> ip netns exec gs1 ip addr del 10.22.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr del 10.22.97.2/30 dev ifgs97
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 18

echo "=== EVENT time 2042 ==="
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 2

echo "=== EVENT time 2044 ==="
echo ">>> iface=$(ip netns exec p00s06 ip link | grep p00s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s06 ip link | grep p00s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p01s06 ip link | grep p01s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s06 ip link | grep p01s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p01s06 ip link | grep p01s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s06 ip link | grep p01s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p06s06 ip link | grep p06s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s06 ip link | grep p06s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p06s06 ip link | grep p06s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s06 ip link | grep p06s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p07s06 ip link | grep p07s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s06 ip link | grep p07s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p07s06 ip link | grep p07s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s06 ip link | grep p07s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p08s06 ip link | grep p08s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s06 ip link | grep p08s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p08s06 ip link | grep p08s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s06 ip link | grep p08s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p09s06 ip link | grep p09s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s06 ip link | grep p09s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p09s06 ip link | grep p09s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s06 ip link | grep p09s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p10s06 ip link | grep p10s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s06 ip link | grep p10s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p10s06 ip link | grep p10s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s06 ip link | grep p10s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p11s06 ip link | grep p11s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s06 ip link | grep p11s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0

sleep 1

echo "=== EVENT time 2045 ==="
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 11

echo "=== EVENT time 2056 ==="
echo ">>> iface=$(ip netns exec p00s02 ip link | grep p00s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s02 ip link | grep p00s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p01s02 ip link | grep p01s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s02 ip link | grep p01s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p01s02 ip link | grep p01s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s02 ip link | grep p01s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p02s02 ip link | grep p02s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s02 ip link | grep p02s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p02s02 ip link | grep p02s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s02 ip link | grep p02s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p03s02 ip link | grep p03s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s02 ip link | grep p03s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p03s02 ip link | grep p03s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s02 ip link | grep p03s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p06s02 ip link | grep p06s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s02 ip link | grep p06s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p06s02 ip link | grep p06s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s02 ip link | grep p06s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p07s02 ip link | grep p07s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s02 ip link | grep p07s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p07s02 ip link | grep p07s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s02 ip link | grep p07s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p08s02 ip link | grep p08s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s02 ip link | grep p08s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p08s02 ip link | grep p08s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s02 ip link | grep p08s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p09s02 ip link | grep p09s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s02 ip link | grep p09s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p09s02 ip link | grep p09s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s02 ip link | grep p09s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p10s02 ip link | grep p10s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s02 ip link | grep p10s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p10s02 ip link | grep p10s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s02 ip link | grep p10s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0
echo ">>> iface=$(ip netns exec p11s02 ip link | grep p11s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s02 ip link | grep p11s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 20.0"
/usr/local/bin/updatemap --dev $iface --delay 20.0

sleep 3

echo "=== EVENT time 2059 ==="
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 18

echo "=== EVENT time 2077 ==="
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 7

echo "=== EVENT time 2084 ==="
echo ">>> iface=$(ip netns exec p00s05 ip link | grep p00s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s05 ip link | grep p00s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p01s05 ip link | grep p01s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s05 ip link | grep p01s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p01s05 ip link | grep p01s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s05 ip link | grep p01s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p05s05 ip link | grep p05s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s05 ip link | grep p05s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p05s05 ip link | grep p05s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s05 ip link | grep p05s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p06s05 ip link | grep p06s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s05 ip link | grep p06s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p06s05 ip link | grep p06s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s05 ip link | grep p06s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p07s05 ip link | grep p07s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s05 ip link | grep p07s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p07s05 ip link | grep p07s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s05 ip link | grep p07s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p08s05 ip link | grep p08s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s05 ip link | grep p08s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p08s05 ip link | grep p08s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s05 ip link | grep p08s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p09s05 ip link | grep p09s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s05 ip link | grep p09s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p09s05 ip link | grep p09s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s05 ip link | grep p09s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p10s05 ip link | grep p10s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s05 ip link | grep p10s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p10s05 ip link | grep p10s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s05 ip link | grep p10s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p11s05 ip link | grep p11s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s05 ip link | grep p11s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0

sleep 1

echo "=== EVENT time 2085 ==="
echo ">>> iface=$(ip netns exec p00s04 ip link | grep p00s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s04 ip link | grep p00s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p01s04 ip link | grep p01s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s04 ip link | grep p01s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p01s04 ip link | grep p01s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s04 ip link | grep p01s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p06s04 ip link | grep p06s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s04 ip link | grep p06s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p06s04 ip link | grep p06s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s04 ip link | grep p06s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p07s04 ip link | grep p07s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s04 ip link | grep p07s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p07s04 ip link | grep p07s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s04 ip link | grep p07s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p08s04 ip link | grep p08s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s04 ip link | grep p08s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p08s04 ip link | grep p08s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s04 ip link | grep p08s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p09s04 ip link | grep p09s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s04 ip link | grep p09s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p09s04 ip link | grep p09s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s04 ip link | grep p09s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p10s04 ip link | grep p10s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s04 ip link | grep p10s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p10s04 ip link | grep p10s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s04 ip link | grep p10s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p11s04 ip link | grep p11s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s04 ip link | grep p11s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0

sleep 2

echo "=== EVENT time 2087 ==="
echo ">>> iface=$(ip netns exec p00s01 ip link | grep p00s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s01 ip link | grep p00s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p01s01 ip link | grep p01s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s01 ip link | grep p01s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p01s01 ip link | grep p01s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s01 ip link | grep p01s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p02s01 ip link | grep p02s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s01 ip link | grep p02s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p02s01 ip link | grep p02s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s01 ip link | grep p02s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p03s01 ip link | grep p03s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s01 ip link | grep p03s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p03s01 ip link | grep p03s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s01 ip link | grep p03s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p04s01 ip link | grep p04s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s01 ip link | grep p04s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p04s01 ip link | grep p04s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s01 ip link | grep p04s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p05s01 ip link | grep p05s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s01 ip link | grep p05s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p05s01 ip link | grep p05s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s01 ip link | grep p05s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p06s01 ip link | grep p06s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s01 ip link | grep p06s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p06s01 ip link | grep p06s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s01 ip link | grep p06s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p07s01 ip link | grep p07s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s01 ip link | grep p07s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p07s01 ip link | grep p07s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s01 ip link | grep p07s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p08s01 ip link | grep p08s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s01 ip link | grep p08s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p08s01 ip link | grep p08s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s01 ip link | grep p08s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p09s01 ip link | grep p09s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s01 ip link | grep p09s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p09s01 ip link | grep p09s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s01 ip link | grep p09s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p10s01 ip link | grep p10s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s01 ip link | grep p10s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p10s01 ip link | grep p10s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s01 ip link | grep p10s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p11s01 ip link | grep p11s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s01 ip link | grep p11s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0

sleep 3

echo "=== EVENT time 2090 ==="
echo ">>> iface=$(ip netns exec p00s00 ip link | grep p00s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s00 ip link | grep p00s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p01s00 ip link | grep p01s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s00 ip link | grep p01s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p01s00 ip link | grep p01s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s00 ip link | grep p01s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p02s00 ip link | grep p02s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s00 ip link | grep p02s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p02s00 ip link | grep p02s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s00 ip link | grep p02s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p03s00 ip link | grep p03s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s00 ip link | grep p03s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p03s00 ip link | grep p03s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s00 ip link | grep p03s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p04s00 ip link | grep p04s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s00 ip link | grep p04s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p04s00 ip link | grep p04s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s00 ip link | grep p04s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p05s00 ip link | grep p05s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s00 ip link | grep p05s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p05s00 ip link | grep p05s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s00 ip link | grep p05s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p06s00 ip link | grep p06s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s00 ip link | grep p06s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p06s00 ip link | grep p06s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s00 ip link | grep p06s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p07s00 ip link | grep p07s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s00 ip link | grep p07s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p07s00 ip link | grep p07s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s00 ip link | grep p07s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p08s00 ip link | grep p08s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s00 ip link | grep p08s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p08s00 ip link | grep p08s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s00 ip link | grep p08s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p09s00 ip link | grep p09s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s00 ip link | grep p09s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p09s00 ip link | grep p09s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s00 ip link | grep p09s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p10s00 ip link | grep p10s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s00 ip link | grep p10s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p10s00 ip link | grep p10s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s00 ip link | grep p10s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p11s00 ip link | grep p11s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s00 ip link | grep p11s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0

sleep 7

echo "=== EVENT time 2097 ==="
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 3.0"
/usr/local/bin/updatemap --dev $iface --delay 3.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 3.0"
/usr/local/bin/updatemap --dev $iface --delay 3.0

sleep 32

echo "=== EVENT time 2129 ==="
echo ">>> ip netns exec p02s05 ip addr del 10.22.98.1/30 dev p02s05LinkToGS"
ip netns exec p02s05 ip addr del 10.22.98.1/30 dev p02s05LinkToGS
echo ">>> ip netns exec gs2 ip addr del 10.22.98.2/30 dev ifgs98"
ip netns exec gs2 ip addr del 10.22.98.2/30 dev ifgs98
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0

sleep 59

echo "=== EVENT time 2188 ==="
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 16

echo "=== EVENT time 2204 ==="
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 16

echo "=== EVENT time 2220 ==="
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 16

echo "=== EVENT time 2236 ==="
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 13

echo "=== EVENT time 2249 ==="
echo ">>> iface=$(ip netns exec p00s05 ip link | grep p00s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s05 ip link | grep p00s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p01s05 ip link | grep p01s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s05 ip link | grep p01s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p01s05 ip link | grep p01s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s05 ip link | grep p01s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p05s05 ip link | grep p05s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s05 ip link | grep p05s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p05s05 ip link | grep p05s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s05 ip link | grep p05s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p06s05 ip link | grep p06s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s05 ip link | grep p06s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p06s05 ip link | grep p06s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s05 ip link | grep p06s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p07s05 ip link | grep p07s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s05 ip link | grep p07s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p07s05 ip link | grep p07s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s05 ip link | grep p07s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p08s05 ip link | grep p08s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s05 ip link | grep p08s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p08s05 ip link | grep p08s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s05 ip link | grep p08s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p09s05 ip link | grep p09s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s05 ip link | grep p09s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p09s05 ip link | grep p09s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s05 ip link | grep p09s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p10s05 ip link | grep p10s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s05 ip link | grep p10s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p10s05 ip link | grep p10s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s05 ip link | grep p10s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p11s05 ip link | grep p11s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s05 ip link | grep p11s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0

sleep 3

echo "=== EVENT time 2252 ==="
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 1

echo "=== EVENT time 2253 ==="
echo ">>> iface=$(ip netns exec p00s01 ip link | grep p00s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s01 ip link | grep p00s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p01s01 ip link | grep p01s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s01 ip link | grep p01s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p01s01 ip link | grep p01s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s01 ip link | grep p01s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p02s01 ip link | grep p02s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s01 ip link | grep p02s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p02s01 ip link | grep p02s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s01 ip link | grep p02s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p03s01 ip link | grep p03s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s01 ip link | grep p03s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p03s01 ip link | grep p03s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s01 ip link | grep p03s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p04s01 ip link | grep p04s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s01 ip link | grep p04s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p04s01 ip link | grep p04s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s01 ip link | grep p04s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p05s01 ip link | grep p05s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s01 ip link | grep p05s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p05s01 ip link | grep p05s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s01 ip link | grep p05s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p06s01 ip link | grep p06s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s01 ip link | grep p06s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p06s01 ip link | grep p06s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s01 ip link | grep p06s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p07s01 ip link | grep p07s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s01 ip link | grep p07s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p07s01 ip link | grep p07s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s01 ip link | grep p07s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p08s01 ip link | grep p08s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s01 ip link | grep p08s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p08s01 ip link | grep p08s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s01 ip link | grep p08s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p09s01 ip link | grep p09s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s01 ip link | grep p09s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p09s01 ip link | grep p09s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s01 ip link | grep p09s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p10s01 ip link | grep p10s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s01 ip link | grep p10s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p10s01 ip link | grep p10s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s01 ip link | grep p10s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p11s01 ip link | grep p11s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s01 ip link | grep p11s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0

sleep 16

echo "=== EVENT time 2269 ==="
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 18

echo "=== EVENT time 2287 ==="
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0

sleep 8

echo "=== EVENT time 2295 ==="
echo ">>> ip netns exec p03s04 ip addr add 10.29.97.1/30 dev p03s04LinkToGS"
ip netns exec p03s04 ip addr add 10.29.97.1/30 dev p03s04LinkToGS
echo ">>> ip netns exec gs1 ip addr add 10.29.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr add 10.29.97.2/30 dev ifgs97
echo ">>> ip netns exec p04s04 ip addr del 10.37.97.1/30 dev p04s04LinkToGS"
ip netns exec p04s04 ip addr del 10.37.97.1/30 dev p04s04LinkToGS
echo ">>> ip netns exec gs1 ip addr del 10.37.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr del 10.37.97.2/30 dev ifgs97
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0

sleep 22

echo "=== EVENT time 2317 ==="
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 20

echo "=== EVENT time 2337 ==="
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 4

echo "=== EVENT time 2341 ==="
echo ">>> iface=$(ip netns exec p00s03 ip link | grep p00s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s03 ip link | grep p00s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p01s03 ip link | grep p01s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s03 ip link | grep p01s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p01s03 ip link | grep p01s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s03 ip link | grep p01s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p06s03 ip link | grep p06s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s03 ip link | grep p06s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p06s03 ip link | grep p06s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s03 ip link | grep p06s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p07s03 ip link | grep p07s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s03 ip link | grep p07s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p07s03 ip link | grep p07s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s03 ip link | grep p07s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p08s03 ip link | grep p08s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s03 ip link | grep p08s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p08s03 ip link | grep p08s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s03 ip link | grep p08s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p09s03 ip link | grep p09s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s03 ip link | grep p09s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p09s03 ip link | grep p09s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s03 ip link | grep p09s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p10s03 ip link | grep p10s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s03 ip link | grep p10s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p10s03 ip link | grep p10s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s03 ip link | grep p10s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p11s03 ip link | grep p11s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s03 ip link | grep p11s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0

sleep 13

echo "=== EVENT time 2354 ==="
echo ">>> iface=$(ip netns exec p00s07 ip link | grep p00s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s07 ip link | grep p00s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p01s07 ip link | grep p01s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s07 ip link | grep p01s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p01s07 ip link | grep p01s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s07 ip link | grep p01s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p04s07 ip link | grep p04s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s07 ip link | grep p04s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p04s07 ip link | grep p04s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s07 ip link | grep p04s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p05s07 ip link | grep p05s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s07 ip link | grep p05s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p05s07 ip link | grep p05s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s07 ip link | grep p05s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p06s07 ip link | grep p06s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s07 ip link | grep p06s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p06s07 ip link | grep p06s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s07 ip link | grep p06s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p07s07 ip link | grep p07s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s07 ip link | grep p07s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p07s07 ip link | grep p07s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s07 ip link | grep p07s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p08s07 ip link | grep p08s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s07 ip link | grep p08s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p08s07 ip link | grep p08s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s07 ip link | grep p08s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p09s07 ip link | grep p09s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s07 ip link | grep p09s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p09s07 ip link | grep p09s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s07 ip link | grep p09s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p10s07 ip link | grep p10s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s07 ip link | grep p10s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p10s07 ip link | grep p10s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s07 ip link | grep p10s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p11s07 ip link | grep p11s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s07 ip link | grep p11s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0

sleep 3

echo "=== EVENT time 2357 ==="
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 19

echo "=== EVENT time 2376 ==="
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 20

echo "=== EVENT time 2396 ==="
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 25

echo "=== EVENT time 2421 ==="
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 12

echo "=== EVENT time 2433 ==="
echo ">>> iface=$(ip netns exec p00s05 ip link | grep p00s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s05 ip link | grep p00s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p01s05 ip link | grep p01s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s05 ip link | grep p01s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p01s05 ip link | grep p01s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s05 ip link | grep p01s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p05s05 ip link | grep p05s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s05 ip link | grep p05s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p05s05 ip link | grep p05s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s05 ip link | grep p05s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p06s05 ip link | grep p06s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s05 ip link | grep p06s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p06s05 ip link | grep p06s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s05 ip link | grep p06s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p07s05 ip link | grep p07s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s05 ip link | grep p07s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p07s05 ip link | grep p07s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s05 ip link | grep p07s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p08s05 ip link | grep p08s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s05 ip link | grep p08s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p08s05 ip link | grep p08s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s05 ip link | grep p08s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p09s05 ip link | grep p09s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s05 ip link | grep p09s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p09s05 ip link | grep p09s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s05 ip link | grep p09s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p10s05 ip link | grep p10s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s05 ip link | grep p10s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p10s05 ip link | grep p10s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s05 ip link | grep p10s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p11s05 ip link | grep p11s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s05 ip link | grep p11s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0

sleep 5

echo "=== EVENT time 2438 ==="
echo ">>> iface=$(ip netns exec p00s01 ip link | grep p00s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s01 ip link | grep p00s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p01s01 ip link | grep p01s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s01 ip link | grep p01s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p01s01 ip link | grep p01s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s01 ip link | grep p01s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p02s01 ip link | grep p02s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s01 ip link | grep p02s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p02s01 ip link | grep p02s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s01 ip link | grep p02s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p03s01 ip link | grep p03s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s01 ip link | grep p03s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p03s01 ip link | grep p03s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s01 ip link | grep p03s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p04s01 ip link | grep p04s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s01 ip link | grep p04s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p04s01 ip link | grep p04s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s01 ip link | grep p04s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p05s01 ip link | grep p05s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s01 ip link | grep p05s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p05s01 ip link | grep p05s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s01 ip link | grep p05s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p06s01 ip link | grep p06s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s01 ip link | grep p06s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p06s01 ip link | grep p06s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s01 ip link | grep p06s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p07s01 ip link | grep p07s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s01 ip link | grep p07s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p07s01 ip link | grep p07s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s01 ip link | grep p07s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p08s01 ip link | grep p08s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s01 ip link | grep p08s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p08s01 ip link | grep p08s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s01 ip link | grep p08s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p09s01 ip link | grep p09s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s01 ip link | grep p09s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p09s01 ip link | grep p09s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s01 ip link | grep p09s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p10s01 ip link | grep p10s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s01 ip link | grep p10s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p10s01 ip link | grep p10s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s01 ip link | grep p10s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p11s01 ip link | grep p11s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s01 ip link | grep p11s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0

sleep 65

echo "=== EVENT time 2503 ==="
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 19

echo "=== EVENT time 2522 ==="
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 10

echo "=== EVENT time 2532 ==="
echo ">>> iface=$(ip netns exec p00s03 ip link | grep p00s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s03 ip link | grep p00s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s03 ip link | grep p01s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s03 ip link | grep p01s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s03 ip link | grep p01s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s03 ip link | grep p01s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s03 ip link | grep p06s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s03 ip link | grep p06s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s03 ip link | grep p06s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s03 ip link | grep p06s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s03 ip link | grep p07s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s03 ip link | grep p07s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s03 ip link | grep p07s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s03 ip link | grep p07s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s03 ip link | grep p08s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s03 ip link | grep p08s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s03 ip link | grep p08s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s03 ip link | grep p08s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s03 ip link | grep p09s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s03 ip link | grep p09s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s03 ip link | grep p09s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s03 ip link | grep p09s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s03 ip link | grep p10s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s03 ip link | grep p10s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s03 ip link | grep p10s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s03 ip link | grep p10s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p11s03 ip link | grep p11s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s03 ip link | grep p11s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0

sleep 8

echo "=== EVENT time 2540 ==="
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 5

echo "=== EVENT time 2545 ==="
echo ">>> iface=$(ip netns exec p00s07 ip link | grep p00s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s07 ip link | grep p00s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s07 ip link | grep p01s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s07 ip link | grep p01s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s07 ip link | grep p01s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s07 ip link | grep p01s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s07 ip link | grep p04s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s07 ip link | grep p04s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s07 ip link | grep p04s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s07 ip link | grep p04s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s07 ip link | grep p05s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s07 ip link | grep p05s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s07 ip link | grep p05s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s07 ip link | grep p05s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s07 ip link | grep p06s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s07 ip link | grep p06s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s07 ip link | grep p06s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s07 ip link | grep p06s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s07 ip link | grep p07s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s07 ip link | grep p07s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s07 ip link | grep p07s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s07 ip link | grep p07s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s07 ip link | grep p08s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s07 ip link | grep p08s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s07 ip link | grep p08s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s07 ip link | grep p08s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s07 ip link | grep p09s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s07 ip link | grep p09s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s07 ip link | grep p09s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s07 ip link | grep p09s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s07 ip link | grep p10s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s07 ip link | grep p10s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s07 ip link | grep p10s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s07 ip link | grep p10s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p11s07 ip link | grep p11s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s07 ip link | grep p11s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0

sleep 13

echo "=== EVENT time 2558 ==="
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 14

echo "=== EVENT time 2572 ==="
echo ">>> ip netns exec p05s03 ip addr add 10.44.98.1/30 dev p05s03LinkToGS"
ip netns exec p05s03 ip addr add 10.44.98.1/30 dev p05s03LinkToGS
echo ">>> ip netns exec gs2 ip addr add 10.44.98.2/30 dev ifgs98"
ip netns exec gs2 ip addr add 10.44.98.2/30 dev ifgs98
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 4

echo "=== EVENT time 2576 ==="
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 19

echo "=== EVENT time 2595 ==="
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0

sleep 9

echo "=== EVENT time 2604 ==="
echo ">>> ip netns exec p02s04 ip addr add 10.21.97.1/30 dev p02s04LinkToGS"
ip netns exec p02s04 ip addr add 10.21.97.1/30 dev p02s04LinkToGS
echo ">>> ip netns exec gs1 ip addr add 10.21.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr add 10.21.97.2/30 dev ifgs97
echo ">>> ip netns exec p03s04 ip addr del 10.29.97.1/30 dev p03s04LinkToGS"
ip netns exec p03s04 ip addr del 10.29.97.1/30 dev p03s04LinkToGS
echo ">>> ip netns exec gs1 ip addr del 10.29.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr del 10.29.97.2/30 dev ifgs97
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0

sleep 2

echo "=== EVENT time 2606 ==="
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 3.0"
/usr/local/bin/updatemap --dev $iface --delay 3.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 3.0"
/usr/local/bin/updatemap --dev $iface --delay 3.0

sleep 21

echo "=== EVENT time 2627 ==="
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 23

echo "=== EVENT time 2650 ==="
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 5

echo "=== EVENT time 2655 ==="
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 18

echo "=== EVENT time 2673 ==="
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 1

echo "=== EVENT time 2674 ==="
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 7

echo "=== EVENT time 2681 ==="
echo ">>> iface=$(ip netns exec p00s05 ip link | grep p00s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s05 ip link | grep p00s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p01s05 ip link | grep p01s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s05 ip link | grep p01s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p01s05 ip link | grep p01s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s05 ip link | grep p01s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p02s05 ip link | grep p02s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s05 ip link | grep p02s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p03s05 ip link | grep p03s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s05 ip link | grep p03s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p04s05 ip link | grep p04s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s05 ip link | grep p04s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p05s05 ip link | grep p05s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s05 ip link | grep p05s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p05s05 ip link | grep p05s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s05 ip link | grep p05s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p06s05 ip link | grep p06s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s05 ip link | grep p06s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p06s05 ip link | grep p06s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s05 ip link | grep p06s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p07s05 ip link | grep p07s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s05 ip link | grep p07s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p07s05 ip link | grep p07s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s05 ip link | grep p07s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p08s05 ip link | grep p08s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s05 ip link | grep p08s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p08s05 ip link | grep p08s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s05 ip link | grep p08s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p09s05 ip link | grep p09s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s05 ip link | grep p09s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p09s05 ip link | grep p09s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s05 ip link | grep p09s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p10s05 ip link | grep p10s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s05 ip link | grep p10s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p10s05 ip link | grep p10s05east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s05 ip link | grep p10s05east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p11s05 ip link | grep p11s05west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s05 ip link | grep p11s05west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0

sleep 8

echo "=== EVENT time 2689 ==="
echo ">>> iface=$(ip netns exec p00s01 ip link | grep p00s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s01 ip link | grep p00s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p01s01 ip link | grep p01s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s01 ip link | grep p01s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p01s01 ip link | grep p01s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s01 ip link | grep p01s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p02s01 ip link | grep p02s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s01 ip link | grep p02s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p02s01 ip link | grep p02s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s01 ip link | grep p02s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p03s01 ip link | grep p03s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s01 ip link | grep p03s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p03s01 ip link | grep p03s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s01 ip link | grep p03s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p04s01 ip link | grep p04s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s01 ip link | grep p04s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p04s01 ip link | grep p04s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s01 ip link | grep p04s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p05s01 ip link | grep p05s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s01 ip link | grep p05s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p05s01 ip link | grep p05s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s01 ip link | grep p05s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p06s01 ip link | grep p06s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s01 ip link | grep p06s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p06s01 ip link | grep p06s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s01 ip link | grep p06s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p07s01 ip link | grep p07s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s01 ip link | grep p07s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p07s01 ip link | grep p07s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s01 ip link | grep p07s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p08s01 ip link | grep p08s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s01 ip link | grep p08s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p08s01 ip link | grep p08s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s01 ip link | grep p08s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p09s01 ip link | grep p09s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s01 ip link | grep p09s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p09s01 ip link | grep p09s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s01 ip link | grep p09s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p10s01 ip link | grep p10s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s01 ip link | grep p10s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p10s01 ip link | grep p10s01east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s01 ip link | grep p10s01east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p11s01 ip link | grep p11s01west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s01 ip link | grep p11s01west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0

sleep 2

echo "=== EVENT time 2691 ==="
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 8

echo "=== EVENT time 2699 ==="
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 9

echo "=== EVENT time 2708 ==="
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 8

echo "=== EVENT time 2716 ==="
echo ">>> iface=$(ip netns exec p00s03 ip link | grep p00s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s03 ip link | grep p00s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p01s03 ip link | grep p01s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s03 ip link | grep p01s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p01s03 ip link | grep p01s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s03 ip link | grep p01s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p06s03 ip link | grep p06s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s03 ip link | grep p06s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p06s03 ip link | grep p06s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s03 ip link | grep p06s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p07s03 ip link | grep p07s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s03 ip link | grep p07s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p07s03 ip link | grep p07s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s03 ip link | grep p07s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p08s03 ip link | grep p08s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s03 ip link | grep p08s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p08s03 ip link | grep p08s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s03 ip link | grep p08s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p09s03 ip link | grep p09s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s03 ip link | grep p09s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p09s03 ip link | grep p09s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s03 ip link | grep p09s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p10s03 ip link | grep p10s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s03 ip link | grep p10s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p10s03 ip link | grep p10s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s03 ip link | grep p10s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p11s03 ip link | grep p11s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s03 ip link | grep p11s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0

sleep 9

echo "=== EVENT time 2725 ==="
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 3

echo "=== EVENT time 2728 ==="
echo ">>> ip netns exec p05s03 ip addr del 10.44.98.1/30 dev p05s03LinkToGS"
ip netns exec p05s03 ip addr del 10.44.98.1/30 dev p05s03LinkToGS
echo ">>> ip netns exec gs2 ip addr del 10.44.98.2/30 dev ifgs98"
ip netns exec gs2 ip addr del 10.44.98.2/30 dev ifgs98
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0

sleep 4

echo "=== EVENT time 2732 ==="
echo ">>> iface=$(ip netns exec p00s07 ip link | grep p00s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s07 ip link | grep p00s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p01s07 ip link | grep p01s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s07 ip link | grep p01s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p01s07 ip link | grep p01s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s07 ip link | grep p01s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p04s07 ip link | grep p04s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s07 ip link | grep p04s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p04s07 ip link | grep p04s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s07 ip link | grep p04s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p05s07 ip link | grep p05s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s07 ip link | grep p05s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p05s07 ip link | grep p05s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s07 ip link | grep p05s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p06s07 ip link | grep p06s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s07 ip link | grep p06s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p06s07 ip link | grep p06s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s07 ip link | grep p06s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p07s07 ip link | grep p07s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s07 ip link | grep p07s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p07s07 ip link | grep p07s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s07 ip link | grep p07s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p08s07 ip link | grep p08s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s07 ip link | grep p08s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p08s07 ip link | grep p08s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s07 ip link | grep p08s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p09s07 ip link | grep p09s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s07 ip link | grep p09s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p09s07 ip link | grep p09s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s07 ip link | grep p09s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p10s07 ip link | grep p10s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s07 ip link | grep p10s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p10s07 ip link | grep p10s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s07 ip link | grep p10s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p11s07 ip link | grep p11s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s07 ip link | grep p11s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0

sleep 8

echo "=== EVENT time 2740 ==="
echo ">>> ip netns exec p04s03 ip addr add 10.36.97.1/30 dev p04s03LinkToGS"
ip netns exec p04s03 ip addr add 10.36.97.1/30 dev p04s03LinkToGS
echo ">>> ip netns exec gs1 ip addr add 10.36.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr add 10.36.97.2/30 dev ifgs97
echo ">>> ip netns exec p02s04 ip addr add 10.21.98.1/30 dev p02s04LinkToGS"
ip netns exec p02s04 ip addr add 10.21.98.1/30 dev p02s04LinkToGS
echo ">>> ip netns exec gs2 ip addr add 10.21.98.2/30 dev ifgs98"
ip netns exec gs2 ip addr add 10.21.98.2/30 dev ifgs98
echo ">>> ip netns exec p02s04 ip addr del 10.21.97.1/30 dev p02s04LinkToGS"
ip netns exec p02s04 ip addr del 10.21.97.1/30 dev p02s04LinkToGS
echo ">>> ip netns exec gs1 ip addr del 10.21.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr del 10.21.97.2/30 dev ifgs97
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 20

echo "=== EVENT time 2760 ==="
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 2

echo "=== EVENT time 2762 ==="
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 17

echo "=== EVENT time 2779 ==="
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 7

echo "=== EVENT time 2786 ==="
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 6

echo "=== EVENT time 2792 ==="
echo ">>> iface=$(ip netns exec p00s04 ip link | grep p00s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s04 ip link | grep p00s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p01s04 ip link | grep p01s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s04 ip link | grep p01s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p01s04 ip link | grep p01s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s04 ip link | grep p01s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p06s04 ip link | grep p06s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s04 ip link | grep p06s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p06s04 ip link | grep p06s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s04 ip link | grep p06s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p07s04 ip link | grep p07s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s04 ip link | grep p07s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p07s04 ip link | grep p07s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s04 ip link | grep p07s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p08s04 ip link | grep p08s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s04 ip link | grep p08s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p08s04 ip link | grep p08s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s04 ip link | grep p08s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p09s04 ip link | grep p09s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s04 ip link | grep p09s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p09s04 ip link | grep p09s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s04 ip link | grep p09s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p10s04 ip link | grep p10s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s04 ip link | grep p10s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p10s04 ip link | grep p10s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s04 ip link | grep p10s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p11s04 ip link | grep p11s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s04 ip link | grep p11s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0

sleep 3

echo "=== EVENT time 2795 ==="
echo ">>> iface=$(ip netns exec p00s00 ip link | grep p00s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s00 ip link | grep p00s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p01s00 ip link | grep p01s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s00 ip link | grep p01s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p01s00 ip link | grep p01s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s00 ip link | grep p01s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p02s00 ip link | grep p02s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s00 ip link | grep p02s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p02s00 ip link | grep p02s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s00 ip link | grep p02s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p03s00 ip link | grep p03s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s00 ip link | grep p03s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p03s00 ip link | grep p03s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s00 ip link | grep p03s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p04s00 ip link | grep p04s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s00 ip link | grep p04s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p04s00 ip link | grep p04s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s00 ip link | grep p04s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p05s00 ip link | grep p05s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s00 ip link | grep p05s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p05s00 ip link | grep p05s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s00 ip link | grep p05s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p06s00 ip link | grep p06s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s00 ip link | grep p06s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p06s00 ip link | grep p06s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s00 ip link | grep p06s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p07s00 ip link | grep p07s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s00 ip link | grep p07s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p07s00 ip link | grep p07s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s00 ip link | grep p07s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p08s00 ip link | grep p08s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s00 ip link | grep p08s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p08s00 ip link | grep p08s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s00 ip link | grep p08s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p09s00 ip link | grep p09s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s00 ip link | grep p09s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p09s00 ip link | grep p09s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s00 ip link | grep p09s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p10s00 ip link | grep p10s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s00 ip link | grep p10s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p10s00 ip link | grep p10s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s00 ip link | grep p10s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p11s00 ip link | grep p11s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s00 ip link | grep p11s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0

sleep 2

echo "=== EVENT time 2797 ==="
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 18

echo "=== EVENT time 2815 ==="
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 19

echo "=== EVENT time 2834 ==="
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 10

echo "=== EVENT time 2844 ==="
echo ">>> ip netns exec p02s04 ip addr del 10.21.98.1/30 dev p02s04LinkToGS"
ip netns exec p02s04 ip addr del 10.21.98.1/30 dev p02s04LinkToGS
echo ">>> ip netns exec gs2 ip addr del 10.21.98.2/30 dev ifgs98"
ip netns exec gs2 ip addr del 10.21.98.2/30 dev ifgs98
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0

sleep 16

echo "=== EVENT time 2860 ==="
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 3.0"
/usr/local/bin/updatemap --dev $iface --delay 3.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 3.0"
/usr/local/bin/updatemap --dev $iface --delay 3.0

sleep 64

echo "=== EVENT time 2924 ==="
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 18

echo "=== EVENT time 2942 ==="
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 13

echo "=== EVENT time 2955 ==="
echo ">>> iface=$(ip netns exec p00s02 ip link | grep p00s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s02 ip link | grep p00s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p01s02 ip link | grep p01s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s02 ip link | grep p01s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p01s02 ip link | grep p01s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s02 ip link | grep p01s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p02s02 ip link | grep p02s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s02 ip link | grep p02s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p02s02 ip link | grep p02s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s02 ip link | grep p02s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p03s02 ip link | grep p03s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s02 ip link | grep p03s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p03s02 ip link | grep p03s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s02 ip link | grep p03s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p06s02 ip link | grep p06s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s02 ip link | grep p06s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p06s02 ip link | grep p06s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s02 ip link | grep p06s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p07s02 ip link | grep p07s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s02 ip link | grep p07s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p07s02 ip link | grep p07s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s02 ip link | grep p07s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p08s02 ip link | grep p08s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s02 ip link | grep p08s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p08s02 ip link | grep p08s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s02 ip link | grep p08s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p09s02 ip link | grep p09s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s02 ip link | grep p09s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p09s02 ip link | grep p09s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s02 ip link | grep p09s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p10s02 ip link | grep p10s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s02 ip link | grep p10s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p10s02 ip link | grep p10s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s02 ip link | grep p10s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p11s02 ip link | grep p11s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s02 ip link | grep p11s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0

sleep 2

echo "=== EVENT time 2957 ==="
echo ">>> iface=$(ip netns exec p00s04 ip link | grep p00s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s04 ip link | grep p00s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p01s04 ip link | grep p01s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s04 ip link | grep p01s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p01s04 ip link | grep p01s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s04 ip link | grep p01s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p06s04 ip link | grep p06s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s04 ip link | grep p06s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p06s04 ip link | grep p06s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s04 ip link | grep p06s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p07s04 ip link | grep p07s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s04 ip link | grep p07s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p07s04 ip link | grep p07s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s04 ip link | grep p07s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p08s04 ip link | grep p08s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s04 ip link | grep p08s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p08s04 ip link | grep p08s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s04 ip link | grep p08s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p09s04 ip link | grep p09s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s04 ip link | grep p09s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p09s04 ip link | grep p09s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s04 ip link | grep p09s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p10s04 ip link | grep p10s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s04 ip link | grep p10s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p10s04 ip link | grep p10s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s04 ip link | grep p10s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p11s04 ip link | grep p11s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s04 ip link | grep p11s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0

sleep 1

echo "=== EVENT time 2958 ==="
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 3

echo "=== EVENT time 2961 ==="
echo ">>> iface=$(ip netns exec p00s00 ip link | grep p00s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s00 ip link | grep p00s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p00s06 ip link | grep p00s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s06 ip link | grep p00s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p01s00 ip link | grep p01s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s00 ip link | grep p01s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p01s00 ip link | grep p01s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s00 ip link | grep p01s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p01s06 ip link | grep p01s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s06 ip link | grep p01s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p01s06 ip link | grep p01s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s06 ip link | grep p01s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p02s00 ip link | grep p02s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s00 ip link | grep p02s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p02s00 ip link | grep p02s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s00 ip link | grep p02s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p03s00 ip link | grep p03s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s00 ip link | grep p03s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p03s00 ip link | grep p03s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s00 ip link | grep p03s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p04s00 ip link | grep p04s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s00 ip link | grep p04s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p04s00 ip link | grep p04s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s00 ip link | grep p04s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p05s00 ip link | grep p05s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s00 ip link | grep p05s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p05s00 ip link | grep p05s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s00 ip link | grep p05s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p06s00 ip link | grep p06s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s00 ip link | grep p06s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p06s00 ip link | grep p06s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s00 ip link | grep p06s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p06s06 ip link | grep p06s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s06 ip link | grep p06s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p06s06 ip link | grep p06s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s06 ip link | grep p06s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p07s00 ip link | grep p07s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s00 ip link | grep p07s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p07s00 ip link | grep p07s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s00 ip link | grep p07s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p07s06 ip link | grep p07s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s06 ip link | grep p07s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p07s06 ip link | grep p07s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s06 ip link | grep p07s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p08s00 ip link | grep p08s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s00 ip link | grep p08s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p08s00 ip link | grep p08s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s00 ip link | grep p08s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p08s06 ip link | grep p08s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s06 ip link | grep p08s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p08s06 ip link | grep p08s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s06 ip link | grep p08s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p09s00 ip link | grep p09s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s00 ip link | grep p09s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p09s00 ip link | grep p09s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s00 ip link | grep p09s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p09s06 ip link | grep p09s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s06 ip link | grep p09s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p09s06 ip link | grep p09s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s06 ip link | grep p09s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p10s00 ip link | grep p10s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s00 ip link | grep p10s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p10s00 ip link | grep p10s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s00 ip link | grep p10s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p10s06 ip link | grep p10s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s06 ip link | grep p10s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p10s06 ip link | grep p10s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s06 ip link | grep p10s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0
echo ">>> iface=$(ip netns exec p11s00 ip link | grep p11s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s00 ip link | grep p11s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p11s06 ip link | grep p11s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s06 ip link | grep p11s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 18.0"
/usr/local/bin/updatemap --dev $iface --delay 18.0

sleep 13

echo "=== EVENT time 2974 ==="
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 17

echo "=== EVENT time 2991 ==="
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 3

echo "=== EVENT time 2994 ==="
echo ">>> iface=$(ip netns exec p00s03 ip link | grep p00s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s03 ip link | grep p00s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 12.0"
/usr/local/bin/updatemap --dev $iface --delay 12.0
echo ">>> iface=$(ip netns exec p01s03 ip link | grep p01s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s03 ip link | grep p01s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 12.0"
/usr/local/bin/updatemap --dev $iface --delay 12.0
echo ">>> iface=$(ip netns exec p01s03 ip link | grep p01s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s03 ip link | grep p01s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 12.0"
/usr/local/bin/updatemap --dev $iface --delay 12.0
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 12.0"
/usr/local/bin/updatemap --dev $iface --delay 12.0
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 12.0"
/usr/local/bin/updatemap --dev $iface --delay 12.0
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 12.0"
/usr/local/bin/updatemap --dev $iface --delay 12.0
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 12.0"
/usr/local/bin/updatemap --dev $iface --delay 12.0
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 12.0"
/usr/local/bin/updatemap --dev $iface --delay 12.0
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 12.0"
/usr/local/bin/updatemap --dev $iface --delay 12.0
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 12.0"
/usr/local/bin/updatemap --dev $iface --delay 12.0
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 12.0"
/usr/local/bin/updatemap --dev $iface --delay 12.0
echo ">>> iface=$(ip netns exec p06s03 ip link | grep p06s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s03 ip link | grep p06s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 12.0"
/usr/local/bin/updatemap --dev $iface --delay 12.0
echo ">>> iface=$(ip netns exec p06s03 ip link | grep p06s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s03 ip link | grep p06s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 12.0"
/usr/local/bin/updatemap --dev $iface --delay 12.0
echo ">>> iface=$(ip netns exec p07s03 ip link | grep p07s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s03 ip link | grep p07s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 12.0"
/usr/local/bin/updatemap --dev $iface --delay 12.0
echo ">>> iface=$(ip netns exec p07s03 ip link | grep p07s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s03 ip link | grep p07s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 12.0"
/usr/local/bin/updatemap --dev $iface --delay 12.0
echo ">>> iface=$(ip netns exec p08s03 ip link | grep p08s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s03 ip link | grep p08s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 12.0"
/usr/local/bin/updatemap --dev $iface --delay 12.0
echo ">>> iface=$(ip netns exec p08s03 ip link | grep p08s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s03 ip link | grep p08s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 12.0"
/usr/local/bin/updatemap --dev $iface --delay 12.0
echo ">>> iface=$(ip netns exec p09s03 ip link | grep p09s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s03 ip link | grep p09s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 12.0"
/usr/local/bin/updatemap --dev $iface --delay 12.0
echo ">>> iface=$(ip netns exec p09s03 ip link | grep p09s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s03 ip link | grep p09s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 12.0"
/usr/local/bin/updatemap --dev $iface --delay 12.0
echo ">>> iface=$(ip netns exec p10s03 ip link | grep p10s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s03 ip link | grep p10s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 12.0"
/usr/local/bin/updatemap --dev $iface --delay 12.0
echo ">>> iface=$(ip netns exec p10s03 ip link | grep p10s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s03 ip link | grep p10s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 12.0"
/usr/local/bin/updatemap --dev $iface --delay 12.0
echo ">>> iface=$(ip netns exec p11s03 ip link | grep p11s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s03 ip link | grep p11s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 12.0"
/usr/local/bin/updatemap --dev $iface --delay 12.0

sleep 14

echo "=== EVENT time 3008 ==="
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 18

echo "=== EVENT time 3026 ==="
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0

sleep 15

echo "=== EVENT time 3041 ==="
echo ">>> ip netns exec p03s03 ip addr add 10.28.97.1/30 dev p03s03LinkToGS"
ip netns exec p03s03 ip addr add 10.28.97.1/30 dev p03s03LinkToGS
echo ">>> ip netns exec gs1 ip addr add 10.28.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr add 10.28.97.2/30 dev ifgs97
echo ">>> ip netns exec p04s03 ip addr del 10.36.97.1/30 dev p04s03LinkToGS"
ip netns exec p04s03 ip addr del 10.36.97.1/30 dev p04s03LinkToGS
echo ">>> ip netns exec gs1 ip addr del 10.36.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr del 10.36.97.2/30 dev ifgs97
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0

sleep 21

echo "=== EVENT time 3062 ==="
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 20

echo "=== EVENT time 3082 ==="
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 19

echo "=== EVENT time 3101 ==="
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 19

echo "=== EVENT time 3120 ==="
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 19

echo "=== EVENT time 3139 ==="
echo ">>> iface=$(ip netns exec p00s04 ip link | grep p00s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s04 ip link | grep p00s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p01s04 ip link | grep p01s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s04 ip link | grep p01s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p01s04 ip link | grep p01s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s04 ip link | grep p01s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p06s04 ip link | grep p06s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s04 ip link | grep p06s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p06s04 ip link | grep p06s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s04 ip link | grep p06s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p07s04 ip link | grep p07s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s04 ip link | grep p07s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p07s04 ip link | grep p07s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s04 ip link | grep p07s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p08s04 ip link | grep p08s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s04 ip link | grep p08s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p08s04 ip link | grep p08s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s04 ip link | grep p08s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p09s04 ip link | grep p09s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s04 ip link | grep p09s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p09s04 ip link | grep p09s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s04 ip link | grep p09s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p10s04 ip link | grep p10s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s04 ip link | grep p10s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p10s04 ip link | grep p10s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s04 ip link | grep p10s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p11s04 ip link | grep p11s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s04 ip link | grep p11s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 6

echo "=== EVENT time 3145 ==="
echo ">>> iface=$(ip netns exec p00s00 ip link | grep p00s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s00 ip link | grep p00s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p01s00 ip link | grep p01s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s00 ip link | grep p01s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p01s00 ip link | grep p01s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s00 ip link | grep p01s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p02s00 ip link | grep p02s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s00 ip link | grep p02s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p02s00 ip link | grep p02s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s00 ip link | grep p02s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p03s00 ip link | grep p03s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s00 ip link | grep p03s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p03s00 ip link | grep p03s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s00 ip link | grep p03s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p04s00 ip link | grep p04s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s00 ip link | grep p04s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p04s00 ip link | grep p04s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s00 ip link | grep p04s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p05s00 ip link | grep p05s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s00 ip link | grep p05s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p05s00 ip link | grep p05s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s00 ip link | grep p05s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p06s00 ip link | grep p06s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s00 ip link | grep p06s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p06s00 ip link | grep p06s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s00 ip link | grep p06s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p07s00 ip link | grep p07s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s00 ip link | grep p07s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p07s00 ip link | grep p07s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s00 ip link | grep p07s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p08s00 ip link | grep p08s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s00 ip link | grep p08s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p08s00 ip link | grep p08s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s00 ip link | grep p08s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p09s00 ip link | grep p09s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s00 ip link | grep p09s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p09s00 ip link | grep p09s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s00 ip link | grep p09s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p10s00 ip link | grep p10s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s00 ip link | grep p10s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p10s00 ip link | grep p10s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s00 ip link | grep p10s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0
echo ">>> iface=$(ip netns exec p11s00 ip link | grep p11s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s00 ip link | grep p11s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 17.0"
/usr/local/bin/updatemap --dev $iface --delay 17.0

sleep 16

echo "=== EVENT time 3161 ==="
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 1

echo "=== EVENT time 3162 ==="
echo ">>> iface=$(ip netns exec p00s02 ip link | grep p00s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s02 ip link | grep p00s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p01s02 ip link | grep p01s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s02 ip link | grep p01s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p01s02 ip link | grep p01s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s02 ip link | grep p01s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p02s02 ip link | grep p02s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s02 ip link | grep p02s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p02s02 ip link | grep p02s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s02 ip link | grep p02s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p03s02 ip link | grep p03s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s02 ip link | grep p03s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p03s02 ip link | grep p03s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s02 ip link | grep p03s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p06s02 ip link | grep p06s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s02 ip link | grep p06s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p06s02 ip link | grep p06s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s02 ip link | grep p06s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p07s02 ip link | grep p07s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s02 ip link | grep p07s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p07s02 ip link | grep p07s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s02 ip link | grep p07s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p08s02 ip link | grep p08s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s02 ip link | grep p08s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p08s02 ip link | grep p08s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s02 ip link | grep p08s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p09s02 ip link | grep p09s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s02 ip link | grep p09s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p09s02 ip link | grep p09s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s02 ip link | grep p09s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p10s02 ip link | grep p10s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s02 ip link | grep p10s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p10s02 ip link | grep p10s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s02 ip link | grep p10s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p11s02 ip link | grep p11s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s02 ip link | grep p11s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0

sleep 6

echo "=== EVENT time 3168 ==="
echo ">>> iface=$(ip netns exec p00s06 ip link | grep p00s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s06 ip link | grep p00s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p01s06 ip link | grep p01s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s06 ip link | grep p01s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p01s06 ip link | grep p01s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s06 ip link | grep p01s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p06s06 ip link | grep p06s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s06 ip link | grep p06s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p06s06 ip link | grep p06s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s06 ip link | grep p06s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p07s06 ip link | grep p07s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s06 ip link | grep p07s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p07s06 ip link | grep p07s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s06 ip link | grep p07s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p08s06 ip link | grep p08s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s06 ip link | grep p08s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p08s06 ip link | grep p08s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s06 ip link | grep p08s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p09s06 ip link | grep p09s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s06 ip link | grep p09s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p09s06 ip link | grep p09s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s06 ip link | grep p09s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p10s06 ip link | grep p10s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s06 ip link | grep p10s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p10s06 ip link | grep p10s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s06 ip link | grep p10s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0
echo ">>> iface=$(ip netns exec p11s06 ip link | grep p11s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s06 ip link | grep p11s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 16.0"
/usr/local/bin/updatemap --dev $iface --delay 16.0

sleep 87

echo "=== EVENT time 3255 ==="
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 18

echo "=== EVENT time 3273 ==="
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 15

echo "=== EVENT time 3288 ==="
echo ">>> ip netns exec p05s02 ip addr add 10.43.98.1/30 dev p05s02LinkToGS"
ip netns exec p05s02 ip addr add 10.43.98.1/30 dev p05s02LinkToGS
echo ">>> ip netns exec gs2 ip addr add 10.43.98.2/30 dev ifgs98"
ip netns exec gs2 ip addr add 10.43.98.2/30 dev ifgs98
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 2

echo "=== EVENT time 3290 ==="
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 16

echo "=== EVENT time 3306 ==="
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 1

echo "=== EVENT time 3307 ==="
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 18

echo "=== EVENT time 3325 ==="
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 2

echo "=== EVENT time 3327 ==="
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 3.0"
/usr/local/bin/updatemap --dev $iface --delay 3.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 3.0"
/usr/local/bin/updatemap --dev $iface --delay 3.0

sleep 17

echo "=== EVENT time 3344 ==="
echo ">>> iface=$(ip netns exec p00s02 ip link | grep p00s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s02 ip link | grep p00s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p01s02 ip link | grep p01s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s02 ip link | grep p01s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p01s02 ip link | grep p01s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s02 ip link | grep p01s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p02s02 ip link | grep p02s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s02 ip link | grep p02s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p02s02 ip link | grep p02s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s02 ip link | grep p02s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p03s02 ip link | grep p03s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s02 ip link | grep p03s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p03s02 ip link | grep p03s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s02 ip link | grep p03s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p06s02 ip link | grep p06s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s02 ip link | grep p06s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p06s02 ip link | grep p06s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s02 ip link | grep p06s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p07s02 ip link | grep p07s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s02 ip link | grep p07s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p07s02 ip link | grep p07s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s02 ip link | grep p07s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p08s02 ip link | grep p08s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s02 ip link | grep p08s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p08s02 ip link | grep p08s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s02 ip link | grep p08s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p09s02 ip link | grep p09s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s02 ip link | grep p09s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p09s02 ip link | grep p09s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s02 ip link | grep p09s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p10s02 ip link | grep p10s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s02 ip link | grep p10s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p10s02 ip link | grep p10s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s02 ip link | grep p10s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p11s02 ip link | grep p11s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s02 ip link | grep p11s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0

sleep 8

echo "=== EVENT time 3352 ==="
echo ">>> iface=$(ip netns exec p00s06 ip link | grep p00s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s06 ip link | grep p00s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p01s06 ip link | grep p01s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s06 ip link | grep p01s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p01s06 ip link | grep p01s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s06 ip link | grep p01s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p06s06 ip link | grep p06s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s06 ip link | grep p06s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p06s06 ip link | grep p06s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s06 ip link | grep p06s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p07s06 ip link | grep p07s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s06 ip link | grep p07s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p07s06 ip link | grep p07s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s06 ip link | grep p07s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p08s06 ip link | grep p08s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s06 ip link | grep p08s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p08s06 ip link | grep p08s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s06 ip link | grep p08s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p09s06 ip link | grep p09s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s06 ip link | grep p09s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p09s06 ip link | grep p09s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s06 ip link | grep p09s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p10s06 ip link | grep p10s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s06 ip link | grep p10s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p10s06 ip link | grep p10s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s06 ip link | grep p10s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0
echo ">>> iface=$(ip netns exec p11s06 ip link | grep p11s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s06 ip link | grep p11s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 14.0"
/usr/local/bin/updatemap --dev $iface --delay 14.0

sleep 3

echo "=== EVENT time 3355 ==="
echo ">>> ip netns exec p02s03 ip addr add 10.20.97.1/30 dev p02s03LinkToGS"
ip netns exec p02s03 ip addr add 10.20.97.1/30 dev p02s03LinkToGS
echo ">>> ip netns exec gs1 ip addr add 10.20.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr add 10.20.97.2/30 dev ifgs97
echo ">>> ip netns exec p03s03 ip addr del 10.28.97.1/30 dev p03s03LinkToGS"
ip netns exec p03s03 ip addr del 10.28.97.1/30 dev p03s03LinkToGS
echo ">>> ip netns exec gs1 ip addr del 10.28.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr del 10.28.97.2/30 dev ifgs97
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0

sleep 25

echo "=== EVENT time 3380 ==="
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 2

echo "=== EVENT time 3382 ==="
echo ">>> iface=$(ip netns exec p00s04 ip link | grep p00s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s04 ip link | grep p00s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p01s04 ip link | grep p01s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s04 ip link | grep p01s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p01s04 ip link | grep p01s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s04 ip link | grep p01s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p02s04 ip link | grep p02s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s04 ip link | grep p02s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p03s04 ip link | grep p03s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s04 ip link | grep p03s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p04s04 ip link | grep p04s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s04 ip link | grep p04s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p05s04 ip link | grep p05s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s04 ip link | grep p05s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p06s04 ip link | grep p06s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s04 ip link | grep p06s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p06s04 ip link | grep p06s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s04 ip link | grep p06s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p07s04 ip link | grep p07s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s04 ip link | grep p07s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p07s04 ip link | grep p07s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s04 ip link | grep p07s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p08s04 ip link | grep p08s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s04 ip link | grep p08s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p08s04 ip link | grep p08s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s04 ip link | grep p08s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p09s04 ip link | grep p09s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s04 ip link | grep p09s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p09s04 ip link | grep p09s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s04 ip link | grep p09s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p10s04 ip link | grep p10s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s04 ip link | grep p10s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p10s04 ip link | grep p10s04east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s04 ip link | grep p10s04east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p11s04 ip link | grep p11s04west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s04 ip link | grep p11s04west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0

sleep 9

echo "=== EVENT time 3391 ==="
echo ">>> iface=$(ip netns exec p00s00 ip link | grep p00s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s00 ip link | grep p00s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p01s00 ip link | grep p01s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s00 ip link | grep p01s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p01s00 ip link | grep p01s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s00 ip link | grep p01s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p02s00 ip link | grep p02s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s00 ip link | grep p02s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p02s00 ip link | grep p02s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s00 ip link | grep p02s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p03s00 ip link | grep p03s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s00 ip link | grep p03s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p03s00 ip link | grep p03s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s00 ip link | grep p03s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p04s00 ip link | grep p04s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s00 ip link | grep p04s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p04s00 ip link | grep p04s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s00 ip link | grep p04s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p05s00 ip link | grep p05s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s00 ip link | grep p05s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p05s00 ip link | grep p05s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s00 ip link | grep p05s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p06s00 ip link | grep p06s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s00 ip link | grep p06s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p06s00 ip link | grep p06s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s00 ip link | grep p06s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p07s00 ip link | grep p07s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s00 ip link | grep p07s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p07s00 ip link | grep p07s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s00 ip link | grep p07s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p08s00 ip link | grep p08s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s00 ip link | grep p08s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p08s00 ip link | grep p08s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s00 ip link | grep p08s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p09s00 ip link | grep p09s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s00 ip link | grep p09s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p09s00 ip link | grep p09s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s00 ip link | grep p09s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p10s00 ip link | grep p10s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s00 ip link | grep p10s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p10s00 ip link | grep p10s00east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s00 ip link | grep p10s00east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0
echo ">>> iface=$(ip netns exec p11s00 ip link | grep p11s00west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s00 ip link | grep p11s00west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 19.0"
/usr/local/bin/updatemap --dev $iface --delay 19.0

sleep 1

echo "=== EVENT time 3392 ==="
echo ">>> ip netns exec p05s02 ip addr add 10.43.97.1/30 dev p05s02LinkToGS"
ip netns exec p05s02 ip addr add 10.43.97.1/30 dev p05s02LinkToGS
echo ">>> ip netns exec gs1 ip addr add 10.43.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr add 10.43.97.2/30 dev ifgs97
echo ">>> ip netns exec p02s03 ip addr del 10.20.97.1/30 dev p02s03LinkToGS"
ip netns exec p02s03 ip addr del 10.20.97.1/30 dev p02s03LinkToGS
echo ">>> ip netns exec gs1 ip addr del 10.20.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr del 10.20.97.2/30 dev ifgs97
echo ">>> ip netns exec p05s02 ip addr del 10.43.98.1/30 dev p05s02LinkToGS"
ip netns exec p05s02 ip addr del 10.43.98.1/30 dev p05s02LinkToGS
echo ">>> ip netns exec gs2 ip addr del 10.43.98.2/30 dev ifgs98"
ip netns exec gs2 ip addr del 10.43.98.2/30 dev ifgs98
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0

sleep 4

echo "=== EVENT time 3396 ==="
echo ">>> iface=$(ip netns exec p00s03 ip link | grep p00s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s03 ip link | grep p00s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p01s03 ip link | grep p01s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s03 ip link | grep p01s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p01s03 ip link | grep p01s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s03 ip link | grep p01s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p06s03 ip link | grep p06s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s03 ip link | grep p06s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p06s03 ip link | grep p06s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s03 ip link | grep p06s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p07s03 ip link | grep p07s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s03 ip link | grep p07s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p07s03 ip link | grep p07s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s03 ip link | grep p07s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p08s03 ip link | grep p08s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s03 ip link | grep p08s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p08s03 ip link | grep p08s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s03 ip link | grep p08s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p09s03 ip link | grep p09s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s03 ip link | grep p09s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p09s03 ip link | grep p09s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s03 ip link | grep p09s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p10s03 ip link | grep p10s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s03 ip link | grep p10s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p10s03 ip link | grep p10s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s03 ip link | grep p10s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p11s03 ip link | grep p11s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s03 ip link | grep p11s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0

sleep 11

echo "=== EVENT time 3407 ==="
echo ">>> ip netns exec p02s03 ip addr add 10.20.97.1/30 dev p02s03LinkToGS"
ip netns exec p02s03 ip addr add 10.20.97.1/30 dev p02s03LinkToGS
echo ">>> ip netns exec gs1 ip addr add 10.20.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr add 10.20.97.2/30 dev ifgs97
echo ">>> ip netns exec p05s02 ip addr add 10.43.98.1/30 dev p05s02LinkToGS"
ip netns exec p05s02 ip addr add 10.43.98.1/30 dev p05s02LinkToGS
echo ">>> ip netns exec gs2 ip addr add 10.43.98.2/30 dev ifgs98"
ip netns exec gs2 ip addr add 10.43.98.2/30 dev ifgs98
echo ">>> ip netns exec p05s02 ip addr del 10.43.97.1/30 dev p05s02LinkToGS"
ip netns exec p05s02 ip addr del 10.43.97.1/30 dev p05s02LinkToGS
echo ">>> ip netns exec gs1 ip addr del 10.43.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr del 10.43.97.2/30 dev ifgs97
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 17

echo "=== EVENT time 3424 ==="
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 12

echo "=== EVENT time 3436 ==="
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 4

echo "=== EVENT time 3440 ==="
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 15

echo "=== EVENT time 3455 ==="
echo ">>> ip netns exec p05s02 ip addr add 10.43.97.1/30 dev p05s02LinkToGS"
ip netns exec p05s02 ip addr add 10.43.97.1/30 dev p05s02LinkToGS
echo ">>> ip netns exec gs1 ip addr add 10.43.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr add 10.43.97.2/30 dev ifgs97
echo ">>> ip netns exec p02s03 ip addr del 10.20.97.1/30 dev p02s03LinkToGS"
ip netns exec p02s03 ip addr del 10.20.97.1/30 dev p02s03LinkToGS
echo ">>> ip netns exec gs1 ip addr del 10.20.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr del 10.20.97.2/30 dev ifgs97
echo ">>> ip netns exec p05s02 ip addr del 10.43.98.1/30 dev p05s02LinkToGS"
ip netns exec p05s02 ip addr del 10.43.98.1/30 dev p05s02LinkToGS
echo ">>> ip netns exec gs2 ip addr del 10.43.98.2/30 dev ifgs98"
ip netns exec gs2 ip addr del 10.43.98.2/30 dev ifgs98
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0

sleep 13

echo "=== EVENT time 3468 ==="
echo ">>> ip netns exec p04s02 ip addr add 10.35.97.1/30 dev p04s02LinkToGS"
ip netns exec p04s02 ip addr add 10.35.97.1/30 dev p04s02LinkToGS
echo ">>> ip netns exec gs1 ip addr add 10.35.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr add 10.35.97.2/30 dev ifgs97
echo ">>> ip netns exec p05s02 ip addr add 10.43.98.1/30 dev p05s02LinkToGS"
ip netns exec p05s02 ip addr add 10.43.98.1/30 dev p05s02LinkToGS
echo ">>> ip netns exec gs2 ip addr add 10.43.98.2/30 dev ifgs98"
ip netns exec gs2 ip addr add 10.43.98.2/30 dev ifgs98
echo ">>> ip netns exec p05s02 ip addr del 10.43.97.1/30 dev p05s02LinkToGS"
ip netns exec p05s02 ip addr del 10.43.97.1/30 dev p05s02LinkToGS
echo ">>> ip netns exec gs1 ip addr del 10.43.97.2/30 dev ifgs97"
ip netns exec gs1 ip addr del 10.43.97.2/30 dev ifgs97
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 7.0"
/usr/local/bin/updatemap --dev $iface --delay 7.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 12

echo "=== EVENT time 3480 ==="
echo ">>> ip netns exec p02s03 ip addr add 10.20.98.1/30 dev p02s03LinkToGS"
ip netns exec p02s03 ip addr add 10.20.98.1/30 dev p02s03LinkToGS
echo ">>> ip netns exec gs2 ip addr add 10.20.98.2/30 dev ifgs98"
ip netns exec gs2 ip addr add 10.20.98.2/30 dev ifgs98
echo ">>> ip netns exec p05s02 ip addr del 10.43.98.1/30 dev p05s02LinkToGS"
ip netns exec p05s02 ip addr del 10.43.98.1/30 dev p05s02LinkToGS
echo ">>> ip netns exec gs2 ip addr del 10.43.98.2/30 dev ifgs98"
ip netns exec gs2 ip addr del 10.43.98.2/30 dev ifgs98
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0

sleep 9

echo "=== EVENT time 3489 ==="
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 16

echo "=== EVENT time 3505 ==="
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 4

echo "=== EVENT time 3509 ==="
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 6.0"
/usr/local/bin/updatemap --dev $iface --delay 6.0

sleep 19

echo "=== EVENT time 3528 ==="
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 9

echo "=== EVENT time 3537 ==="
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 9

echo "=== EVENT time 3546 ==="
echo ">>> iface=$(ip netns exec p00s02 ip link | grep p00s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s02 ip link | grep p00s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p01s02 ip link | grep p01s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s02 ip link | grep p01s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p01s02 ip link | grep p01s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s02 ip link | grep p01s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p02s02 ip link | grep p02s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s02 ip link | grep p02s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p02s02 ip link | grep p02s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s02 ip link | grep p02s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p03s02 ip link | grep p03s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s02 ip link | grep p03s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p03s02 ip link | grep p03s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s02 ip link | grep p03s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p05s02 ip link | grep p05s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s02 ip link | grep p05s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p06s02 ip link | grep p06s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s02 ip link | grep p06s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p06s02 ip link | grep p06s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s02 ip link | grep p06s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p07s02 ip link | grep p07s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s02 ip link | grep p07s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p07s02 ip link | grep p07s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s02 ip link | grep p07s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p08s02 ip link | grep p08s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s02 ip link | grep p08s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p08s02 ip link | grep p08s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s02 ip link | grep p08s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p09s02 ip link | grep p09s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s02 ip link | grep p09s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p09s02 ip link | grep p09s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s02 ip link | grep p09s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p10s02 ip link | grep p10s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s02 ip link | grep p10s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p10s02 ip link | grep p10s02east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s02 ip link | grep p10s02east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p11s02 ip link | grep p11s02west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s02 ip link | grep p11s02west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 5.0"
/usr/local/bin/updatemap --dev $iface --delay 5.0

sleep 12

echo "=== EVENT time 3558 ==="
echo ">>> iface=$(ip netns exec p00s06 ip link | grep p00s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s06 ip link | grep p00s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p01s06 ip link | grep p01s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s06 ip link | grep p01s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p01s06 ip link | grep p01s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s06 ip link | grep p01s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p02s06 ip link | grep p02s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s06 ip link | grep p02s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p03s06 ip link | grep p03s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s06 ip link | grep p03s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p04s06 ip link | grep p04s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s06 ip link | grep p04s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p05s06 ip link | grep p05s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s06 ip link | grep p05s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p06s06 ip link | grep p06s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s06 ip link | grep p06s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p06s06 ip link | grep p06s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s06 ip link | grep p06s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p07s06 ip link | grep p07s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s06 ip link | grep p07s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p07s06 ip link | grep p07s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s06 ip link | grep p07s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p08s06 ip link | grep p08s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s06 ip link | grep p08s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p08s06 ip link | grep p08s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s06 ip link | grep p08s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p09s06 ip link | grep p09s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s06 ip link | grep p09s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p09s06 ip link | grep p09s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s06 ip link | grep p09s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p10s06 ip link | grep p10s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s06 ip link | grep p10s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p10s06 ip link | grep p10s06east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s06 ip link | grep p10s06east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0
echo ">>> iface=$(ip netns exec p11s06 ip link | grep p11s06west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s06 ip link | grep p11s06west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 13.0"
/usr/local/bin/updatemap --dev $iface --delay 13.0

sleep 2

echo "=== EVENT time 3560 ==="
echo ">>> ip netns exec p02s03 ip addr del 10.20.98.1/30 dev p02s03LinkToGS"
ip netns exec p02s03 ip addr del 10.20.98.1/30 dev p02s03LinkToGS
echo ">>> ip netns exec gs2 ip addr del 10.20.98.2/30 dev ifgs98"
ip netns exec gs2 ip addr del 10.20.98.2/30 dev ifgs98
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0
echo ">>> iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs2 ip link | grep ifgs98 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 0.0"
/usr/local/bin/updatemap --dev $iface --delay 0.0

sleep 4

echo "=== EVENT time 3564 ==="
echo ">>> iface=$(ip netns exec p00s03 ip link | grep p00s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s03 ip link | grep p00s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s03 ip link | grep p01s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s03 ip link | grep p01s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s03 ip link | grep p01s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s03 ip link | grep p01s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s03 ip link | grep p02s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s03 ip link | grep p02s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s03 ip link | grep p03s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s03 ip link | grep p03s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s03 ip link | grep p04s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s03 ip link | grep p04s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s03 ip link | grep p05s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s03 ip link | grep p05s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s03 ip link | grep p06s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s03 ip link | grep p06s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s03 ip link | grep p06s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s03 ip link | grep p06s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s03 ip link | grep p07s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s03 ip link | grep p07s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s03 ip link | grep p07s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s03 ip link | grep p07s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s03 ip link | grep p08s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s03 ip link | grep p08s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s03 ip link | grep p08s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s03 ip link | grep p08s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s03 ip link | grep p09s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s03 ip link | grep p09s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s03 ip link | grep p09s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s03 ip link | grep p09s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s03 ip link | grep p10s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s03 ip link | grep p10s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s03 ip link | grep p10s03east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s03 ip link | grep p10s03east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p11s03 ip link | grep p11s03west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s03 ip link | grep p11s03west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0

sleep 1

echo "=== EVENT time 3565 ==="
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 8

echo "=== EVENT time 3573 ==="
echo ">>> iface=$(ip netns exec p00s07 ip link | grep p00s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p00s07 ip link | grep p00s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s07 ip link | grep p01s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s07 ip link | grep p01s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p01s07 ip link | grep p01s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p01s07 ip link | grep p01s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p02s07 ip link | grep p02s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p02s07 ip link | grep p02s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p03s07 ip link | grep p03s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p03s07 ip link | grep p03s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s07 ip link | grep p04s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s07 ip link | grep p04s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p04s07 ip link | grep p04s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s07 ip link | grep p04s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s07 ip link | grep p05s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s07 ip link | grep p05s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p05s07 ip link | grep p05s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p05s07 ip link | grep p05s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s07 ip link | grep p06s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s07 ip link | grep p06s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p06s07 ip link | grep p06s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p06s07 ip link | grep p06s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s07 ip link | grep p07s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s07 ip link | grep p07s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p07s07 ip link | grep p07s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p07s07 ip link | grep p07s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s07 ip link | grep p08s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s07 ip link | grep p08s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p08s07 ip link | grep p08s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p08s07 ip link | grep p08s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s07 ip link | grep p09s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s07 ip link | grep p09s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p09s07 ip link | grep p09s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p09s07 ip link | grep p09s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s07 ip link | grep p10s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s07 ip link | grep p10s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p10s07 ip link | grep p10s07east | awk -F ":" '{print $1}')"
iface=$(ip netns exec p10s07 ip link | grep p10s07east | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0
echo ">>> iface=$(ip netns exec p11s07 ip link | grep p11s07west | awk -F ":" '{print $1}')"
iface=$(ip netns exec p11s07 ip link | grep p11s07west | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 15.0"
/usr/local/bin/updatemap --dev $iface --delay 15.0

sleep 13

echo "=== EVENT time 3586 ==="
echo ">>> iface=$(ip netns exec p04s02 ip link | grep p04s02LinkToGS | awk -F ":" '{print $1}')"
iface=$(ip netns exec p04s02 ip link | grep p04s02LinkToGS | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0
echo ">>> iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')"
iface=$(ip netns exec gs1 ip link | grep ifgs97 | awk -F ":" '{print $1}')
echo ">>> /usr/local/bin/updatemap --dev $iface --delay 4.0"
/usr/local/bin/updatemap --dev $iface --delay 4.0

sleep 14

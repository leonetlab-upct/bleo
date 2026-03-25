# bLEO
bLEO: An eBPF-based emulator for large-scale LEO satellite networks

## Description

bLEO is a Linux application designed to emulate large LEO (Low Earth Orbit) satellite networks. It is implemented using shell scripting (`bleo.sh`) and makes use of the following general-purpose Linux tools:

- Docker containers 
- eBPF modules 
- Linux bridging 
- Network namespaces 
- Python
- gcc and clang (LLVM) compilers

The basic idea is to run as many containers as network elements (satellites, ground stations, and terminals) and connect them through virtual Ethernet interfaces (`veth`) and network namespaces. bLEO takes into account that the connections between satellites and ground stations vary over time as both the Earth and the satellites move. The delay of each veth interface is not defined using `tc-netem` (Linux traffic control for network emulation), but instead by means of an eBPF module, which enables fast delay updates.

A bLEO emulation consists of three steps. First, the configuration file must be set up. Second, the shell script that handles all network dynamics must be generated. Finally, the LEO network must be built.

## Components

1. Configuration file (`bleo.conf`).
2. Event Generator (`eventGenerator.py`).
3. Configuration Manager (`bleo.sh`).
4. `updatemap` application (files: `updatemap.c`, `updatemap`).
5. `setprop.o` eBPF module (files: `setprop.c`, `bpf_elf.h`, `setprop.o`).
6. `tracer` application (files: `tracer.c`, `tracer`).
7. `showifid` utility.
8. `Makefile`.

## Preparation

Docker 20.10.17 or above and Python 3.6 or above. Libraries `libbpd.so` and `libbpf-devel` must be installed. Although the `bpftool` command-line application is not necessary to manage eBPF modules and maps, it could be useful to quickly check the status of the eBPF maps defined in bleo (delay asigned to each interface and number of bytes sent for each one) via the shell command-line.

## Installation

Install packets like `python3 -m pip install math sgp4 skyfield datetime numpy os copy`. If for any reason you need to recompile the utility tools (`updatemap`, etc.) or the eBPF module, remember to first install `gcc` (which is usually already installed) and `clang`.

## Configuration file

To begin with, you need to define all the parameters in the configuration file (`bleo.conf`). Below is a brief explanation of each of the configuration variables:

`docker_img="frr_ditg:v1"`

This is the name of the Docker image used to emulate each LEO satellite, ground station, and terminal (it is assumed that the docker virtualization environment is enabled on the system). It is provide a `Dockerfile` for building an image based on Ubuntu with the utilities `frr` (OSPF), `ditg` (Distributed Internet Traffic Generator) and `iperf` already installed. To generate this docker image just run: `docker build -t frr_ditg:v1 . --no-cache`

`updatemap=/usr/local/bin/updatemap`

This specifies the location of the `updatemap` application, which is used by `bleo.sh` to update the delays of the LEO network interfaces. A version compiled for x86_64 is provided; for other platforms, simply run `make`. If bleo has been installed in your home directory, you can simply set updatemap=~/bleo/updatemap`

`setprop=/usr/local/bin/setprop.o`

This is the location of the `setprop.o` eBPF module, which is used by `updatemap` application to set up the network link delays. The script `bleo.sh` is in charge of loading it at each one of the network interfaces. A version compiled for x86_64 is provided; for other platforms, simply run `make`. If bleo has been installed in your home directory, you can simply set setprop=~/bleo/setprop.o`

`tracer=/usr/local/bin/tracer`

This is the location of the `tracer` application. This application helps you out to trace the path among LEO satellites that a connection is using. A version compiled for x86_64 is provided; for other platforms, simply run `make`. If bleo has been installed in your home directory, you can simply set tracer=~/bleo/tracer`

`numgs=2`, `gs_coords="50.110924,8.682127;46.635700,14.311817"`

The number of ground stations (GS) and their coordinates separated by semicolons.

`numterm=2`, `termc="term1-gs1;term2-gs2"`

The number of terminals and the connections between terminals and ground stations, separated by semicolons.

`maxp=12`, `maxs=8`

The number of orbital planes (`maxp`) and the number of satellites per plane (`maxs`).

`delay_west=1`, `delay_east=1`, `delay_north=1`, `delay_south=1`, `delay_gssat=1`

Initial delay for each of the five interfaces of a LEO satellite.

`ip="yes"`

Set this variable to yes if you want to build an IP network. The way IP addresses are configured is described later.

`ospf="yes"`

Set this variable to yes if you want to build an OSPF network. It is expected that the docker image used in the emulation must contain the software frr.

`hello_interval="10"`

If OSPF is enabled, this is the interval (in seconds) between Hello messages.

`mapsize=2048`

The eBPF map size. It should be large enough to store the delay of all interfaces (five per satellite and one per ground station).

`altitude=550`, `inclination=70`

Altitude and inclination of the orbit.

`duration=3600`

Duration of the emulation in seconds.

`antenna_inclination_angle=25`

The angle of the antenna in each ground station. It determines the time a ground station is capable of connect/disconnect to/from a satellite.

## Event Generator

The second step is to generate the shell scripts responsible for handling all network dynamics (link connections/disconnections, delay updates, etc.) throughout the entire emulation time. This is done using the Python application `eventGenerator.py`. Simply run:

`python eventGenerator.py`

This will generate the scripts `topology_init.sh` and `events_dynamic.sh`.

## Configuration Manager

The next step is to build the LEO network. To do so, run as root:

`sudo ./bleo.sh --config path_to_bleo.conf`

Then wait. It may take up to 10 minutes to build a network with 12 orbital planes and 24 satellites per plane.

## Movement Manager

At this point, the network should be up and running, but nothing never change (both satellites and Earth remain still). To start the emulation, run the script:

`./events_dynamic.sh`

From then on, the connections and delays of all elements will vary according to the movement of the satellites along their orbital planes, as well as the rotation of the Earth.

When the emulation has finished, remember to shutdown it by typing:

`sudo ./bleo.sh -d`

## Miscellanea

Each network element has an `ID`, starting from 1 to `maxp` x `maxs` for satellites and from `maxp` x `maxs` + 1 for ground stations. The maximum value of the `ID` is set to 2047 (11 bits). For example, if `maxp`=12, `maxs`=24 and `numgs`=2, the `ID` of the satellites varies from 1 to 288, and the `ID` of the ground station would be 289 and 290 respectively. In addition, each network element has a name associated with the docker container name. For satellites is `pXXsYY` (XX indicates the orbital plane and YY the satellite in that orbital plane) and for ground station is `gsZZ`. For example, `p00s00` is the satellite with `ID=1` and `p11s23` is the satellite with `ID=288`. For ground stations, `ZZ` is directly its `ID`, so the name of the first one is just `gs289`. It is possible to see them all by typing the command `docker container ls`.

A LEO satellite has 5 network interfaces, which is the name of the docker container followed by `north`, `south` (intra-plane) `east`, `west` (inter-plane) or `LinkToGS` for link that connects the satellite to the ground station. For example, the five interfaces of satellite `p02s15` are `p02s15north`, `p02s15south`, `p02s15east`, `p02s15west` and `p02s15LinkToGS`. For ground stations, it is `ifgs` followed by the ground station `ID`.

For IP addressing, bLEO uses a private class A scheme (`10.X.Y.Z`). The rule for determining the address revolves around the `north` and `east` interfaces. The IP of the interface connecting the `IDsrc` (`north`/`east`) to `IDdst` (`south`/`west`) is determined as follow: byte `X` is set with the first 8 bits of the `IDsrc`. Byte `Y` is set with the first 8 bits of the `IDdst`. Finally, the last byte is set using the last three bits of the `IDsrc`, together with the last three bits of `IDdst`, together with bits `01` for the `north`/`east` interface or `11` for `south`/`west` interface (the other end). For example, IP of the interface `p02s15north` (`ID=64`, assuming again `maxp`=12 and `maxs`=24) is `10.64.65.1` and the IP of the interface `p03s21west` (`ID=94`) is set following the rules for the interface `p02s21east` (`ID=70`) as `10.70.94.2`.

Additionally, each element has an IP B loopback interface (apart from 127.0.0.1) which private IP 172.16/16. The last two bytes are determined following the same rules describet above but considering only the ID of the element. For example, the IP of the loopback interface of satellite `p02s13` (ID=62) is `172.16.62.0`and for `p10s18` (ID=259) is `172.16.3.32`.

The `tracer` application is intended to show how many packets have been sent for each link interface. This utility can be used to infer the path followed by the IP datagrams in a LEO network

`sudo tracer --show 1000`, shows all the interfaces that have send more than 1000 datagrams

`sudo tracer --show 0`, shows how many datagrams each interface has been sent

`sudo tracer --clear`, resets the database to 0 datagrams sent for every interface

Finally, the script `showifid` is a utility tool that shows the kernel identifier of every network link used by bLEO. This script is needed by `tracer` utility and can be helpful if you want to set up the link delay by hand using directly the utility `updatemap` or even `bpftool` (unfortunately, eBPF library does not understand link names but only link identifiers).

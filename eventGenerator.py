#!/usr/bin/python
# -*- coding: UTF-8 -*-
import argparse
import math
from sgp4.api import Satrec, WGS84
from skyfield.api import load, wgs84, EarthSatellite
from datetime import datetime
import numpy as np
import os
from copy import deepcopy
import subprocess

global maxp, maxs, gs, numsat, seam

def node2string(id):
    if id <= numsat:
        plane=(id-1)//maxs
        sat = id - plane*maxs - 1
        node = 'p' + str(plane).rjust(2, '0') + 's' + str(sat).rjust(2, '0')
    else:
        node = 'gs' + str(id - numsat)

    return node

def direction(src, dst):
    if src <= numsat and dst > numsat:
        category = "sattogs"
        return category
    if src > numsat and dst <= numsat:
        category = "gstosat"
        return category
    if src <= numsat and dst <= numsat:
        if dst-src == 1 or dst-src == -(maxs-1):
            category = "north"
            return category
        if dst-src == -1 or dst-src == (maxs-1):
            category = "south"
            return category
        if dst-src == maxs or dst-src == -(maxs*(maxp-1)):
            category = "east"
            return category
        if dst-src == -maxs or dst-src == maxs*(maxp-1):
            category = "west"
            return category

    return None

def ifname(src, dst):
    if direction(src, dst) == 'sattogs':
        interface = node2string(src) + 'LinkToGS'
        return interface
    if direction(src, dst) == 'gstosat':
        interface = 'ifgs' + str(src)
        return interface
    if direction(src, dst) == 'north':
        interface = node2string(src) + 'north'
        return interface
    if direction(src, dst) == 'south':
        interface = node2string(src) + 'south'
        return interface
    if direction(src, dst) == 'east':
        interface = node2string(src) + 'east'
        return interface
    if direction(src, dst) == 'west':
        interface = node2string(src) + 'west'
        return interface

def get_ip(src, dst, category):
    byte1 = src & 255
    byte2 = dst & 255
    byte3src = (src & 1792) >> 3
    byte3dst = (dst & 1792) >>6

    if category == 'north' or category == 'east' or category == 'sattogs':
        byte3 = byte3src + byte3dst + 1
    if category == 'south' or category == 'west' or category == 'gstosat':
        byte3 = byte3src + byte3dst + 2

    return '10' + '.' + str(byte1) + '.' + str(byte2) + '.' + str(byte3)

def eastif(src):
    if src > (maxp -1) * maxs and seam == 1:
        return ""
    return src + maxs

def westif(src):
    if src < maxs and seam == 1:
        return ""
    return src - maxs

def load_bleo_conf(conf_file):
    config = {}
    with open(conf_file) as f:
        for line in f:
            line = line.strip()
            if not line or line.startswith("#"):
                continue
            if "=" not in line:
                continue
            key, value = line.split("=", 1)
            key = key.strip()
            value = value.strip().strip('"')
            config[key] = value
    return config

def parse_gs_coords(coord_string):
    coords = []
    stations = coord_string.split(";")
    for s in stations:
        lat, lon = s.split(",")
        coords.append([float(lat), float(lon)])
    return coords

def to_cbf(lat_long, length):  # the xyz coordinate system. length: number of nodes
    cbf = []
    radius = 6371
    for num in range(0, length):
        cbf_in = []
        R = radius
        if len(lat_long[num]) > 2:
            R += lat_long[num][2]
        z = R * math.sin(math.radians(float(lat_long[num][0])))
        x = R * math.cos(math.radians(float(
            lat_long[num][0]))) * math.cos(
                math.radians(float(lat_long[num][1])))
        y = R * math.cos(math.radians(float(
            lat_long[num][0]))) * math.sin(
                math.radians(float(lat_long[num][1])))
        cbf_in.append(x)
        cbf_in.append(y)
        cbf_in.append(z)
        cbf.append(cbf_in)
    return cbf  # xyz coordinates of all the satellites

def calculate_bound(inclination_angle, height):
    bound_distance = 6371 * math.cos(
        (90 + inclination_angle) / 180 * math.pi) + math.sqrt(
            math.pow(
                6371 * math.cos(
                    (90 + inclination_angle) / 180 * math.pi), 2) +
            math.pow(height, 2) + 2 * height * 6371)
    return bound_distance

def write_cmd(file, cmd):
    file.write(f'echo ">>> {cmd}"\n')
    file.write(cmd + "\n")

def isl_exists(src, direction_name):
    plane = (src - 1) // maxs

    if direction_name == "west":
        if seam == 1 and plane == 0:
            return False

    if direction_name == "east":
        if seam == 1 and plane == maxp - 1:
            return False

    return True

def cmd_add_link(file, id1, id2):
    cmd = (
        'ip netns exec '
        + node2string(id1)
        + ' ip addr add '
        + get_ip(id1, id2, direction(id1, id2))
        + '/30 dev '
        + ifname(id1, id2)
    )
    write_cmd(file, cmd)


def cmd_del_link(file, id1, id2):
    cmd = (
        'ip netns exec '
        + node2string(id1)
        + ' ip addr del '
        + get_ip(id1, id2, direction(id1, id2))
        + '/30 dev '
        + ifname(id1, id2)
    )
    write_cmd(file, cmd)


def cmd_enable_isl(file, id1):
    if isl_exists(id1, "east"):
        id2 = eastif(id1)
        if id2 != "":
            cmd = 'ip netns exec ' + node2string(id1) + ' ip link set dev ' + ifname(id1, id2) + ' up'
            write_cmd(file, cmd)

    if isl_exists(id1, "west"):
        id2 = westif(id1)
        if id2 != "":
            cmd = 'ip netns exec ' + node2string(id1) + ' ip link set dev ' + ifname(id1, id2) + ' up'
            write_cmd(file, cmd)


def cmd_disable_isl(file, id1):
    if isl_exists(id1, "east"):
        id2 = eastif(id1)
        if id2 != "":
            cmd = 'ip netns exec ' + node2string(id1) + ' ip link set dev ' + ifname(id1, id2) + ' down'
            write_cmd(file, cmd)

    if isl_exists(id1, "west"):
        id2 = westif(id1)
        if id2 != "":
            cmd = 'ip netns exec ' + node2string(id1) + ' ip link set dev ' + ifname(id1, id2) + ' down'
            write_cmd(file, cmd)


def cmd_update_delay(file, id1, id2, delay_value):
    delay_cmd = round(delay_value, 0)

    cmd = (
        'iface=$(ip netns exec '
        + node2string(id1)
        + ' ip link | grep '
        + ifname(id1, id2)
        + ' | awk -F ":" \'{print $1}\')'
    )
    write_cmd(file, cmd)

    cmd = updatemap + ' --dev $iface --delay ' + str(delay_cmd)
    write_cmd(file, cmd)


if __name__ == "__main__":
    configuration_file_path = "./bleo.conf"

    print('generating Events')

    conf = load_bleo_conf(configuration_file_path)
    path = os.path.dirname(os.path.abspath(configuration_file_path))

    class Args:
        pass

    args = Args()
    args.satellite_altitude = int(conf["altitude"])
    args.inclination = int(conf["inclination"])
    args.orbit_number = int(conf["maxp"])
    args.sat_number = int(conf["maxs"])
    args.duration = int(conf["duration"])
    args.antenna_inclination = int(conf["antenna_inclination_angle"])
    GS_lat_long = parse_gs_coords(conf["gs_coords"])
    if int(conf["numgs"]) != len(GS_lat_long):
        raise ValueError("numgs does not match number of GS coordinates")
    # Seam (default = 1)
    seam_enabled = int(conf.get("seam", "1"))
    # updatemap (OBLIGATORIO en config)
    if "updatemap" not in conf:
        raise ValueError("Missing 'updatemap' in bleo.conf")
    updatemap = conf["updatemap"]

    # ==================================================
    # GLOBAL CONFIG
    # ==================================================
    maxp = args.orbit_number
    maxs = args.sat_number
    gs = int(conf["numgs"])
    numsat = maxp * maxs
    seam = seam_enabled
    print("[ID2BLEO CONFIG]")
    print(f"  maxp={maxp}, maxs={maxs}, numsat={numsat}, gs={gs}, seam={seam}")

    sat_cbf = []  # first dimension: time. second dimension: node. third dimension: xyz
    sat_lla = []  # first dimension: time. second dimension: node. third dimension: lla
    fac_cbf = []  # first dimension: node. second dimension: xyz

    ts = load.timescale()
    since = datetime(1949, 12, 31, 0, 0, 0)
    start = datetime(2020, 1, 1, 0, 0, 0)
    epoch = (start - since).days
    inclination = args.inclination * 2 * np.pi / 360
    GM = 3.9860044e14
    R = 6371393
    altitude = args.satellite_altitude * 1000
    mean_motion = np.sqrt(GM / (R + altitude)**3) * 60
    num_of_orbit = args.orbit_number
    sat_per_orbit = args.sat_number
    num_of_sat = num_of_orbit * sat_per_orbit
    F = 18
    bound_dis = calculate_bound(args.antenna_inclination, args.satellite_altitude) * 29.5 / 17.31
    duration = args.duration  # second
    result = [[] for i in range(duration)]  # LLA result
    lla_per_sec = [[] for i in range(duration)]  # LLA result

    raan = []
    for i in range(num_of_orbit):  # range(num_of_orbit)
        raan.append(i / num_of_orbit * 2 * np.pi)
        #print(raan[i]*360/(2 * np.pi))
        for j in range(sat_per_orbit):  # range(sat_per_orbit)
            #mean_anomaly = (j * 360 / sat_per_orbit + i * 360 * F/num_of_sat) % 360 * 2 * np.pi / 360
            mean_anomaly = (j * 360 / sat_per_orbit) % 360 * 2 * np.pi / 360
            satrec = Satrec()
            satrec.sgp4init(
                WGS84,  # gravity model
                'i',  # 'a' = old AFSPC mode, 'i' = improved mode
                i * sat_per_orbit + j,  # satnum: Satellite number
                epoch,  # epoch: days since 1949 December 31 00:00 UT
                2.8098e-05,  # bstar: drag coefficient (/earth radii)
                6.969196665e-13,  # ndot: ballistic coefficient (revs/day)
                0.0,  # nddot: second derivative of mean motion (revs/day^3)
                0.001,  # ecco: eccentricity
                0.0,  # argpo: argument of perigee (radians)
                inclination,  # inclo: inclination (radians)
                mean_anomaly,  # mo: mean anomaly (radians)
                mean_motion,  # no_kozai: mean motion (radians/minute)
                raan[i],  # nodeo: right ascension of ascending node (radians)
            )
            sat = EarthSatellite.from_satrec(satrec, ts)
            cur = datetime(2022, 1, 1, 1, 0, 0)
            t_ts = ts.utc(*cur.timetuple()[:5], range(duration))  # [:4]:minute，[:5]:second
            geocentric = sat.at(t_ts)
            subpoint = wgs84.subpoint(geocentric)
            # list: [subpoint.latitude.degrees] [subpoint.longitude.degrees] [subpoint.elevation.km]
            for t in range(duration):
                lla = '%f,%f,%f\n' % (subpoint.latitude.degrees[t], subpoint.longitude.degrees[t], subpoint.elevation.km[t])
                result[t].append(lla)
                lla = []
                lla.append(subpoint.latitude.degrees[t])
                lla.append(subpoint.longitude.degrees[t])
                lla.append(subpoint.elevation.km[t])
                lla_per_sec[t].append(lla)

    for t in range(duration):
        cbf_per_sec = to_cbf(lla_per_sec[t], num_of_sat)
        sat_cbf.append(cbf_per_sec)
        sat_lla.append(lla_per_sec[t])

    if len(GS_lat_long) != 0:
       fac_cbf = to_cbf(GS_lat_long, len(GS_lat_long))

    alpha = np.degrees(np.arccos(6371 / (6371 + args.satellite_altitude) * np.cos(inclination))) - args.inclination

    # ==================================================
    # ACCESS PL SHORTEST
    # ==================================================
    fac_num = len(GS_lat_long)
    sat_num = args.sat_number * args.orbit_number
    num_orbits = args.orbit_number
    num_sats_per_orbit = args.sat_number
    duration = args.duration
    fac_ll = GS_lat_long
    antenna_num = 1

    delay = []
    topo_duration = []
    delay_matrix = np.zeros((fac_num + sat_num, fac_num + sat_num))
    adjacency_matrix = np.zeros((fac_num + sat_num, fac_num + sat_num))
    ref_delay = np.zeros((fac_num + sat_num, fac_num + sat_num))
    sat_vector = np.zeros(sat_num)
    for cur_time in range(duration):
        for i in range(0, fac_num):
            access_list = {}
            fac_lat = float(fac_ll[i][0])  # latitude
            up_lat = fac_lat + alpha  # bound
            down_lat = fac_lat - alpha
            x2 = fac_cbf[i][0]
            y2 = fac_cbf[i][1]
            z2 = fac_cbf[i][2]
            for j in range(0, sat_num):
                if sat_lla[cur_time][j][0] >= down_lat and sat_lla[
                       cur_time][j][0] <= up_lat:
                    x1 = sat_cbf[cur_time][j][0]  # in km
                    y1 = sat_cbf[cur_time][j][1]
                    z1 = sat_cbf[cur_time][j][2]
                    dist = math.sqrt(
                        np.square(x1 - x2) + np.square(y1 - y2) +
                        np.square(z1 - z2))
                    if dist < bound_dis:
                        # [satellite index，distance]
                        access_list.update({j: dist})
            if len(access_list) > antenna_num:
                sorted_access_list = dict(
                    sorted(access_list.items(), key=lambda item: item[1]))
                cnt = 0
                for key, value in sorted_access_list.items():
                    cnt = cnt + 1
                    if cnt > antenna_num:
                        break
                    if sat_vector[key] == 1:
                        continue;
                    delay_time = value / (17.31 / 29.5 *
                                          299792.458) * 1000  # ms
                    delay_matrix[sat_num + i][key] = delay_time
                    adjacency_matrix[sat_num + i][key] = 1
                    delay_matrix[key][sat_num + i] = delay_time
                    adjacency_matrix[key][sat_num + i] = 1
                    sat_vector[key] = 1
            elif len(access_list) != 0:
                for key, value in access_list.items():
                    if sat_vector[key] == 1:
                        continue;
                    delay_time = value / (17.31 / 29.5 *
                                          299792.458) * 1000  # ms
                    delay_matrix[sat_num + i][key] = delay_time
                    adjacency_matrix[sat_num + i][key] = 1
                    delay_matrix[key][sat_num + i] = delay_time
                    adjacency_matrix[key][sat_num + i] = 1
                    sat_vector[key] = 1
        for i in range(num_orbits):
            for j in range(num_sats_per_orbit):
                num_sat1 = i * num_sats_per_orbit + j
                x1 = sat_cbf[cur_time][num_sat1][0]  # km
                y1 = sat_cbf[cur_time][num_sat1][1]
                z1 = sat_cbf[cur_time][num_sat1][2]
                # -----------------------------------
                # Intra-orbit link (always exists)
                # -----------------------------------
                num_sat2 = i * num_sats_per_orbit + ((j + 1) % num_sats_per_orbit)
                x2 = sat_cbf[cur_time][num_sat2][0]
                y2 = sat_cbf[cur_time][num_sat2][1]
                z2 = sat_cbf[cur_time][num_sat2][2]
                delay1 = math.sqrt(
                    np.square(x1 - x2) +
                    np.square(y1 - y2) +
                    np.square(z1 - z2)
                ) / (17.31 / 29.5 * 299792.458) * 1000  # ms
                delay_matrix[num_sat1][num_sat2] = delay1
                adjacency_matrix[num_sat1][num_sat2] = 1
                delay_matrix[num_sat2][num_sat1] = delay1
                adjacency_matrix[num_sat2][num_sat1] = 1
                # -----------------------------------
                # Inter-orbit link (EAST)
                # -----------------------------------
                if seam_enabled == 1:
                    if i == num_orbits - 1:
                        if cur_time == 0:
                            print(f"[SEAM] skipping link orbit {i} -> 0 at sat {j}")
                        continue  # NO enlace hacia el plano 0
                    num_sat3 = (i + 1) * num_sats_per_orbit + j
                else:
                    num_sat3 = ((i + 1) % num_orbits) * num_sats_per_orbit + j
                x3 = sat_cbf[cur_time][num_sat3][0]
                y3 = sat_cbf[cur_time][num_sat3][1]
                z3 = sat_cbf[cur_time][num_sat3][2]
                delay2 = math.sqrt(
                    np.square(x1 - x3) +
                    np.square(y1 - y3) +
                    np.square(z1 - z3)
                ) / (17.31 / 29.5 * 299792.458) * 1000  # ms
                delay_matrix[num_sat1][num_sat3] = delay2
                adjacency_matrix[num_sat1][num_sat3] = 1
                delay_matrix[num_sat3][num_sat1] = delay2
                adjacency_matrix[num_sat3][num_sat1] = 1

        aux = np.zeros((fac_num + sat_num, fac_num + sat_num))
        aux = delay_matrix
        delay.append(deepcopy(aux))
        del aux
        aux2 = np.zeros((fac_num + sat_num, fac_num + sat_num))
        aux2 = adjacency_matrix
        topo_duration.append(deepcopy(aux2))
        del aux2
        if cur_time==0:
            ref_delay = deepcopy(delay_matrix)
        for i in range(len(delay_matrix)):
            delay_matrix[i, ...] = 0
            adjacency_matrix[i, ...] = 0
        for i in range(len(sat_vector)):
            sat_vector[i] = 0

    # ==================================================
    # POLAR DISCONNECTIONS
    # ==================================================
    ISL_connections = []
    ISL_matrix = np.zeros(sat_num)
    for i in range(0, duration):
        for j in range(0, sat_num):
            if sat_lla[i][j][0]>=float(0.0): #HEMISFERIO NORTE
                if sat_lla[i][j][0]>=float(60.0):
                    ISL_matrix[j]=0
                else:
                    ISL_matrix[j]=1
            else: #HEMISFERIO SUR
                if sat_lla[i][j][0]<=float(-60.0):
                    ISL_matrix[j]=0
                else:
                    ISL_matrix[j]=1

        aux3 = np.zeros(sat_num)
        aux3 = ISL_matrix
        ISL_connections.append(deepcopy(aux3))
        del aux3
        for j in range(0, sat_num):
            ISL_matrix[j] = 0

    # ==================================================
    # DELAY UPDATES
    # ==================================================
    change_delay = []
    change_delay_matrix = np.zeros((fac_num + sat_num, fac_num + sat_num))
    for cur_time in range(duration):
        for i in range(fac_num + sat_num):
            for j in range(fac_num + sat_num):
                if delay[cur_time][i][j] > 1.1*ref_delay[i][j] or delay[cur_time][i][j] < 0.9*ref_delay[i][j]:
                    ref_delay[i][j] = delay[cur_time][i][j]
                    change_delay_matrix[i][j] = 1

        aux4 = np.zeros((fac_num + sat_num, fac_num + sat_num))
        aux4 = change_delay_matrix
        change_delay.append(deepcopy(aux4))
        del aux4

        for i in range(len(change_delay_matrix)):
            change_delay_matrix[i, ...] = 0

    # ==================================================
    # MATRIX TO CHANGE
    # ==================================================
    orbit_number = args.orbit_number
    sat_number = args.sat_number
    GS_lat_long = GS_lat_long
    no_fac = len(GS_lat_long)
    no_geo = 0
    duration = duration - 1
    no_leo = orbit_number * sat_number

    changetime = []
    Duration = []
    for i in range(duration - 1):
        l1 = topo_duration[i]
        l2 = topo_duration[i + 1]
        l1ISL = ISL_connections[i]
        l2ISL = ISL_connections[i + 1]
        l2delay = change_delay[i+1]
        if (l1 == l2).all() and (l1ISL == l2ISL).all() and (l2delay == 0).all():
            continue
        else:
            changetime.append(i)
    pretime = 0
    for item in changetime:
        Duration.append(item - pretime)
        pretime = item
    #Duration.append(60)
    Duration.append(args.duration - pretime)

    # ==================================================
    # GENERATE TWO SCRIPTS
    # ==================================================
    init_path = path + "/topology_init.sh"
    events_path = path + "/events_dynamic.sh"

    init_file = open(init_path, "w")
    events_file = open(events_path, "w")

    # Headers
    init_file.write("#!/bin/bash\n")
    init_file.write("set -e\n\n")

    events_file.write("#!/bin/bash\n")
    events_file.write("set -e\n\n")

    # ==================================================
    # INITIAL TOPOLOGY
    # ==================================================
    init_file.write("# Initial topology\n\n")

    init_lines = topo_duration[0]

    # ADD LINKS
    for j in range(no_fac):
        lines = init_lines[no_geo + no_leo + j]
        for k in range(sat_num + fac_num):
            if lines[k] == 1:
                cmd_add_link(init_file, k + 1, no_leo + j + 1)
                cmd_add_link(init_file, no_leo + j + 1, k + 1)

    # DISABLE ISL (polar)
    init_ISL = ISL_connections[0]
    for j in range(sat_num):
        if init_ISL[j] == 0:
            cmd_disable_isl(init_file, j + 1)

    # INITIAL DELAY
    init_delay = delay[0]
    for j in range(fac_num + sat_num):
        for k in range(fac_num + sat_num):
            if init_delay[j][k] > 0:
                cmd_update_delay(init_file, j + 1, k + 1, init_delay[j][k])

    # ==================================================
    # DYNAMIC EVENTS
    # ==================================================
    events_file.write('echo "=== START SIMULATION ==="\n')

    cnt = 1

    events_file.write(f"sleep {Duration[0]}\n")

    for i in range(duration - 1):

        pre_lines = topo_duration[i]
        now_lines = topo_duration[i + 1]
        pre_lines_ISL = ISL_connections[i]
        now_lines_ISL = ISL_connections[i + 1]
        now_lines_delay = change_delay[i + 1]

        if (pre_lines == now_lines).all() and \
        (pre_lines_ISL == now_lines_ISL).all() and \
        (now_lines_delay == 0).all():
            continue

        events_file.write(f'\necho "=== EVENT time {i+2} ==="\n')

        # ADD LINKS
        for j in range(no_fac):
            prelines = pre_lines[no_geo + no_leo + j]
            nowlines = now_lines[no_geo + no_leo + j]
            for k in range(no_geo + no_leo + no_fac):
                if prelines[k] == 0 and nowlines[k] == 1:
                    cmd_add_link(events_file, k + 1, no_leo + j + 1)
                    cmd_add_link(events_file, no_leo + j + 1, k + 1)

        # DELETE LINKS
        for j in range(no_fac):
            prelines = pre_lines[no_geo + no_leo + j]
            nowlines = now_lines[no_geo + no_leo + j]
            for k in range(no_geo + no_leo + no_fac):
                if prelines[k] == 1 and nowlines[k] == 0:
                    cmd_del_link(events_file, k + 1, no_leo + j + 1)
                    cmd_del_link(events_file, no_leo + j + 1, k + 1)

        # ENABLE ISL
        for j in range(sat_num):
            if pre_lines_ISL[j] == 0 and now_lines_ISL[j] == 1:
                cmd_enable_isl(events_file, j + 1)

        # DISABLE ISL
        for j in range(sat_num):
            if pre_lines_ISL[j] == 1 and now_lines_ISL[j] == 0:
                cmd_disable_isl(events_file, j + 1)

        # UPDATE DELAY
        for j in range(fac_num + sat_num):
            for k in range(fac_num + sat_num):
                if now_lines_delay[j][k] == 1:
                    cmd_update_delay(events_file, j + 1, k + 1, delay[i + 1][j][k])

        # sleep
        events_file.write(f"\nsleep {Duration[cnt]}\n")
        cnt += 1

    # ==================================================
    # FINALIZE
    # ==================================================
    init_file.close()
    events_file.close()

    os.chmod(init_path, 0o755)
    os.chmod(events_path, 0o755)

    print("topology_init.sh generated")
    print("events_dynamic.sh generated")

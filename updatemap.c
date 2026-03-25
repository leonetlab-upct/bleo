#include <bpf/bpf.h>
#include <stdio.h>
#include <stdlib.h>
#include <getopt.h>
#include <unistd.h>
#include <sys/time.h>

char *prgname;
static char usage[] = "Usage: %s [options]\nDefined options are:\n\
--dev <iface>\n\
--delay propagation time (ms)\n\
--time show the time needed to setup the map\n\
\n";

#define usage() {printf(usage, prgname); exit(0);}

#define OPT_DEV    1 << 1
#define OPT_DELAY  1 << 2
#define OPT_TIME   1 << 3

int main(int argc, char **argv)
{
    int options=0, fd, err, dev;
    uint64_t delay;
    char map_path[128];
    struct timeval start, end;
    int elapsed_s, elapsed_us;

    prgname = strrchr(argv[0], '/');
    if (prgname == (char *)NULL) prgname = argv[0];
    else prgname++;

    while (1) {
        int c;
        static struct option long_options[] = {
           {"dev", required_argument, NULL, 1},
           {"delay", required_argument, NULL, 2},
           {"time", no_argument, NULL, 3},
           {0, 0, 0, 0}
        };
        c = getopt_long(argc, argv, "", long_options, (int *)0);
        if (c == EOF) break;
        switch (c) {
            case 1: options |= OPT_DEV;
                    dev = atoi(optarg);
                    break;
            case 2: options |= OPT_DELAY;
                    delay= atoi(optarg);
                    break;
            case 3: options |= OPT_TIME;
                    break;

            default:usage();
        }
    }

    sprintf(map_path, "/sys/fs/bpf/tc/globals/%s", "delays");

    if (access(map_path, F_OK) != 0) {
        fd = bpf_map_create(BPF_MAP_TYPE_HASH, "delays", sizeof(uint32_t), sizeof(uint64_t), 2048, 0);
        if (fd < 0) {
            printf("Failed to create a map\n");
            exit(1);
        }
        err = bpf_obj_pin(fd, map_path);
        if (err) {
            printf("Failed to pinn the map\n");
            exit(1);
        }
    }
    else fd = bpf_obj_get(map_path);

    if ((options & OPT_DEV) && !(options & OPT_DELAY)) {
        err = bpf_map_lookup_elem(fd, &dev, &delay);
        if (err) {
            printf("Failed to read delay of interface %d\n", dev);
            exit(1);
        }
        else printf("Interface %d, delay %lu\n", dev, delay);
    }


    if ((options & OPT_DEV) && (options & OPT_DELAY)) {
        gettimeofday(&start, NULL);
        err = bpf_map_update_elem(fd, &dev, &delay, BPF_ANY);
        gettimeofday(&end, NULL);
        if (err) {
            printf("Failed to update map with key %d and value %lu\n", dev, delay);
            exit(1);
        }
        elapsed_s = end.tv_sec - start.tv_sec;
        elapsed_us = end.tv_usec - start.tv_usec;
        if (options & OPT_TIME) fprintf(stdout, "%d\t%d\t%d\n", dev, elapsed_s, elapsed_us);
    }
    return 0;
}

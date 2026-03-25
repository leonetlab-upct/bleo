#include <bpf/bpf.h>
#include <stdio.h>
#include <stdlib.h>
#include <getopt.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>

char *prgname;
static char usage[] = "Usage: %s [options]\nDefined options are:\n\
--dev <net interface>\n\
\n";

#define usage() {printf(usage, prgname); exit(0);}
#define OPT_DEV 1 << 0
#define OPT_CLR 1 << 1
#define OPT_SHW 1 << 2

#define MAPSIZE 2048

int main(int argc, char **argv)
{
    int options=0, fd, err, numpcks=1;
    long val;
    char map_path[128];
    uint32_t dev, prev_dev, devices[MAPSIZE];

    prgname = strrchr(argv[0], '/');
    if (prgname == (char *)NULL) prgname = argv[0];
    else prgname++;

    while (1) {
        int c;
        static struct option long_options[] = {
           {"dev", required_argument, NULL, 1},
           {"clear", no_argument, NULL, 2},
           {"show", required_argument, NULL, 3},
           {0, 0, 0, 0}
        };
        c = getopt_long(argc, argv, "", long_options, (int *)0);
        if (c == EOF) break;
        switch (c) {
            case 1: options |= OPT_DEV;
                    dev = (uint32_t)atoi(optarg);
                    break;
            case 2: options |= OPT_CLR;
                    break;
            case 3: options |= OPT_SHW;
                    numpcks = atoi(optarg);
                    break;
            default:usage();
        }
    }

    sprintf(map_path, "/sys/fs/bpf/tc/globals/%s", "tracer");

    if (access(map_path, F_OK) != 0) {
        fd = bpf_map_create(BPF_MAP_TYPE_HASH, "tracer",sizeof(uint32_t), sizeof(long), MAPSIZE, 0);
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


// option --dev
    if (options & OPT_DEV && \
        !(options & OPT_CLR) && \
        !(options & OPT_SHW))
    {
        val = 0;
        err = bpf_map_update_elem(fd, &dev, &val, BPF_ANY);
        if (err) {
            printf("Failed to update tracer map with key %d\n", dev);
        }
        exit(1);
    }


// option --show
    if (!(options & OPT_DEV) && \
        !(options & OPT_CLR) && \
        (options & OPT_SHW))
    {
        FILE *if_fd;
        char chdev[64], cmd[256];

        system("./showifid > if.ddbb");
        prev_dev = 0; val = 0; dev = 0;

        while (bpf_map_get_next_key(fd, &prev_dev, &dev) == 0) {
            prev_dev = dev;

            memset(chdev, 0, 64);
            sprintf(cmd, "awk '{if ($2 == %u) print $1}' if.ddbb", dev);
            if_fd = popen(cmd, "r");
            fread(chdev, 1, 64, if_fd);
            chdev[strcspn(chdev, "\n")] = 0;
            pclose(if_fd);

            if (strlen(chdev) == 0) continue;

            err = bpf_map_lookup_elem(fd, &dev, &val);
            if (err) {
               printf("Failed to lookup tracer map at %d\n", dev);
               exit(1);
            }
            if (numpcks == 0) printf("%-15s\t%ld\n", chdev, val);
            else if (val >= numpcks) printf("%s\n", chdev);
        }
        system("rm if.ddbb");
        exit(1);
    }

// option --clear
    if (!(options & OPT_DEV) && \
        (options & OPT_CLR) && \
        !(options & OPT_SHW))
    {
        int i=0, j;
        prev_dev = 0;
        while (bpf_map_get_next_key(fd, &prev_dev, &dev) == 0) {
            devices[i] = dev;
            i++;
            //printf("previos dev = %d --> device = %d\n", prev_dev, dev);
            prev_dev = dev;
        }
        for (j=0; j< i; j++) {
            val = 0;
            dev = (uint32_t)devices[j];
            err = bpf_map_update_elem(fd, &dev, &val, BPF_EXIST);
            if (err) {
               printf("Failed to update tracer map at %d\n", dev);
               exit(1);
            }
         }
         exit(1);
    }


    return 0;
}

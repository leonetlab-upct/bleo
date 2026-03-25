#include <linux/bpf.h>
#include <bpf/bpf_helpers.h>
#include "bpf_elf.h"
#include <linux/in.h>
#include <linux/ip.h>
#include <linux/if_ether.h>

#include <stdint.h>
#include <linux/pkt_cls.h>
#include <net/if.h>
#include <bpf/bpf_endian.h>


#define MS_TO_NS 1000000;


struct {
    __uint(type, BPF_MAP_TYPE_HASH);
    __type(key, uint32_t);
    __type(value, uint64_t);
    __uint(max_entries, 2048);
    __uint(pinning, LIBBPF_PIN_BY_NAME);
} delays SEC(".maps");



struct {
    __uint(type, BPF_MAP_TYPE_HASH);
    __type(key, uint32_t);
    __type(value, long);
    __uint(max_entries, 2048);
    __uint(pinning, LIBBPF_PIN_BY_NAME);
} tracer SEC(".maps");



SEC("tc_propagation")
int set_delay(struct __sk_buff *skb)
{
    void *data_end = (void *)(long)skb->data_end;
    void *data = (void *)(long)skb->data;
    struct iphdr *ip_header;


    int *rec;
    long *counter, err;
    __u32 key;
    uint64_t delay_ns = 0;
    uint64_t now = bpf_ktime_get_ns();
    uint64_t ts = skb->tstamp;

    key = skb->ifindex;
    rec = bpf_map_lookup_elem(&delays, &key);
    if (!rec) return TC_ACT_OK;

    if (*rec == 0) return TC_ACT_SHOT;
    delay_ns = *rec * MS_TO_NS;
    skb->tstamp = now + delay_ns;


    ip_header = data + sizeof(struct ethhdr);
    if ((void*)ip_header + sizeof(struct iphdr) > data_end) {
        return TC_ACT_OK;
    }
    if (ip_header->protocol == 89) return TC_ACT_OK;

    //const char fmt_str[] = "Packet length %ld\n";
    counter = bpf_map_lookup_elem(&tracer, &key);
    if (counter) {
         __sync_fetch_and_add(counter, bpf_ntohs(ip_header->tot_len));
        //bpf_trace_printk(fmt_str, sizeof(fmt_str), bpf_ntohs(ip_header->tot_len));
    }
    return TC_ACT_OK;
}

char _license[] SEC("license") = "GPL";

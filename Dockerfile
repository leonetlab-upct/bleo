#docker build -t frr_ditg:vx . --no-cache
FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install dialog apt-utils
RUN apt-get -y update
RUN apt-get -y install net-tools
RUN apt-get -y install d-itg
RUN apt-get -y install frr
RUN apt-get -y install vim
RUN apt-get -y install less
RUN apt-get -y install iputils-ping
RUN apt-get -y install tcpdump
RUN apt-get -y install inotify-tools
RUN apt-get -y install iperf3
RUN apt-get -y install mptcpize
RUN apt-get -y update
RUN apt-get -y autoremove
RUN chown frr.frr /var/log/frr
RUN mkdir -p /var/run/frr
RUN chown frr.frr /var/run/frr
RUN sed -i '/ospfd=no/c\ospfd=yes' /etc/frr/daemons
RUN echo "bpffs    /sys/fs/bpf    bpf     defaults 0 0" >> /etc/fstab

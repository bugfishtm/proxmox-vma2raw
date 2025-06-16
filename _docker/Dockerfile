FROM php:8.2.6-apache
RUN mkdir /opt/files
RUN apt update
RUN apt install git -y
RUN apt install gnupg wget lzop -y
RUN apt install libaio1 librbd1 glusterfs-common libiscsi-bin libcurl4-gnutls-dev libjemalloc2 libglib2.0-0 -y
RUN echo deb "http://download.proxmox.com/debian buster pve-no-subscription" >> /etc/apt/sources.list
RUN wget http://download.proxmox.com/debian/proxmox-ve-release-6.x.gpg -O /etc/apt/trusted.gpg.d/proxmox.gpg
RUN apt-get update
RUN apt-get install -y libproxmox-backup-qemu0
RUN apt-get download pve-qemu-kvm
RUN dpkg --fsys-tarfile ./pve-qemu-kvm_* | tar xOf - ./usr/bin/vma > /usr/bin/vma
RUN chmod 0755 /usr/bin/vma
RUN apt install qemu-utils -y
RUN wget http://archive.ubuntu.com/ubuntu/pool/main/n/nettle/libnettle6_3.4-1_amd64.deb -P ~/
RUN dpkg -i ~/libnettle6_3.4-1_amd64.deb
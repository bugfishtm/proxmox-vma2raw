FROM php:8.4-fpm-bookworm
ENV DEBIAN_FRONTEND=noninteractive
RUN mkdir /opt/files
RUN apt-get update && apt-get install -y git gnupg wget lzop zstd qemu-utils \
    libaio1 librbd1 glusterfs-common libiscsi-bin libcurl4-gnutls-dev libjemalloc2 libglib2.0-0
RUN echo "deb http://download.proxmox.com/debian/pve bookworm pve-no-subscription" > /etc/apt/sources.list.d/pve.list \
 && wget https://enterprise.proxmox.com/debian/proxmox-release-bookworm.gpg -O /etc/apt/trusted.gpg.d/proxmox-release-bookworm.gpg
RUN apt-get update && apt-get install -y libproxmox-backup-qemu0
RUN cd /tmp && apt-get download pve-qemu-kvm \
 && dpkg --fsys-tarfile ./pve-qemu-kvm_*.deb | tar xOf - ./usr/bin/vma > /usr/bin/vma \
 && chmod 0755 /usr/bin/vma && rm -f /tmp/pve-qemu-kvm_*.deb
FROM ubuntu:16.04
RUN apt-get update;\
    apt-get install -y sudo git-core subversion ccache build-essential gcc-multilib libssl-dev \
        libncurses5-dev zlib1g-dev gawk flex gettext wget unzip python && \
    useradd -m openwrt && \
    echo 'openwrt ALL=NOPASSWD: ALL' > /etc/sudoers.d/openwrt

CMD sudo -iu openwrt bash

FROM ubuntu:16.04
RUN apt-get update && \
    apt-get install -y sudo git-core subversion ccache build-essential gcc-multilib libssl-dev \
        libncurses5-dev zlib1g-dev gawk flex gettext wget unzip python ocaml-findlib sharutils \
        bsdmainutils && \
    rm -rf /var/lib/apt/lists/* && \
    wget https://storage.googleapis.com/git-repo-downloads/repo && chmod 0755 repo && mv repo /usr/local/bin && \
    useradd -m tmpuser && \
    useradd -m openwrt && \
    echo 'openwrt ALL=NOPASSWD: ALL' > /etc/sudoers.d/openwrt

CMD sudo -iu openwrt bash

FROM ubuntu:14.04
RUN apt-get update && \
    apt-get install -y sudo git-core subversion ccache build-essential gcc-multilib libssl-dev \
        libncurses5-dev zlib1g-dev gawk flex gettext wget unzip python ocaml-findlib sharutils \
        bsdmainutils && \
    apt-get install -y gcc g++ binutils patch bzip2 flex make gettext pkg-config unzip zlib1g-dev \
        libc6-dev subversion libncurses5-dev gawk sharutils curl libxml-parser-perl ocaml-nox \
        ocaml ocaml-findlib libpcre3-dev binutils-gold python-yaml && \
    apt-get install -y zip vim u-boot-tools device-tree-compiler libfdt-dev mtd-utils && \
    rm -rf /var/lib/apt/lists/* && \
    wget https://storage.googleapis.com/git-repo-downloads/repo && chmod 0755 repo && mv repo /usr/local/bin && \
    useradd -m tmpuser && \
    useradd -m openwrt && \
    echo 'openwrt ALL=NOPASSWD: ALL' > /etc/sudoers.d/openwrt

CMD sudo -iu openwrt bash

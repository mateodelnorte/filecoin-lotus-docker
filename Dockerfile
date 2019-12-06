FROM archlinux:latest

WORKDIR /

RUN pacman -Syu --noconfirm opencl-icd-loader
RUN pacman -S --noconfirm base-devel
RUN pacman -Syu --noconfirm go gcc git bzr jq pkg-config opencl-icd-loader opencl-headers

RUN git clone https://github.com/filecoin-project/lotus

WORKDIR /lotus

RUN make clean all && make install

RUN touch ~/.profile

ENTRYPOINT ["/lotus/lotus", "daemon", "&"]

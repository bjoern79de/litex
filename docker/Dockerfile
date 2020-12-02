FROM ubuntu:18.04

ENV VIVADO_VERSION 2020.2

RUN apt-get -y update && \
    apt-get install -y \
        git \
        python3 \
        python3-setuptools \
        wget \
        tar \
        automake \
        autoconf \
        make \
        gzip \
        bison \
        build-essential \
        libglib2.0-0 \
        libsm6 \
        libxi6 \
        libxrender1 \
        libxrandr2 \
        libfreetype6 \
        libncurses5 \
        libfontconfig \
        git && \
    rm -rf /var/lib/apt/lists/*

COPY install_config.txt /
ENV LITEX_ENV_VIVADO=/opt/Xilinx/Vivado/${VIVADO_VERSION}
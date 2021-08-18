FROM dorowu/ubuntu-desktop-lxde-vnc:latest

ENV DEBIAN_FRONTEND=noninteractive


RUN set -ex; \
    apt-get update \
    && apt-get install -y --no-install-recommends \
        sudo \
        vim \
        bash \
        net-tools \
        supervisor \
        curl \
        git \
        wget \
        ssh \
        htop \
	xfonts-intl-chinese \
	fonts-wqy-microhei \
        openssh-server \
    && apt-get autoclean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/

FROM ubuntu:20.04
LABEL author="Semion Leyn"
LABEL email="semen.leyn@gmail.com"
LABEL version="1.039"
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /home/ubuntu
RUN apt-get update \
    && apt-get -y install wget \
    && apt-get purge -y \
    && apt-get clean -y \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN apt-get update \
	&& wget https://github.com/PATRIC3/PATRIC-distribution/releases/download/1.039/patric-cli-1.039.deb \ 
    && ( dpkg -i patric-cli-1.039.deb || true ) \ 
    && apt-get -y -f install \
    && dpkg -i patric-cli-1.039.deb \
    && rm patric-cli-1.039.deb \
    && apt-get purge -y \
    && apt-get clean -y \
    && apt-get autoremove -y \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD bash

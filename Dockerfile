FROM debian:jessie

RUN apt-get update 
RUN apt-get -y install git vim wget build-essential python python-pip
RUN pip install esptool
RUN mkdir /hdd2
RUN cd /hdd2 && \ 
    wget https://www.acsoftware.pl/files/Espressif_x64-docker.tgz && \
    tar zxvf Espressif_x64-docker.tgz && \
    rm Espressif_x64-docker.tgz

RUN cd / && wget https://www.acsoftware.pl/files/supla-esp-signtool.tgz && \
    tar zxvf supla-esp-signtool.tgz && \
    cp -r supla-esp-signtool/* / && \
    rm -r supla-esp-signtool*

COPY clone.sh /usr/sbin/
RUN chmod +x /usr/sbin/clone.sh

WORKDIR /CProjects/supla-espressif-esp/src

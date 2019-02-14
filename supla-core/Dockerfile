FROM debian:jessie

RUN apt-get update 
RUN apt-get -y install git vim wget build-essential libssl-dev libmysqlclient-dev
RUN mkdir -p /etc/supla-server

COPY supla.cnf /etc/supla-server/
COPY supla-test.cnf /etc/supla-server/

WORKDIR /CProjects/supla-core

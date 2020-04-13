FROM debian:buster

RUN apt-get update 
RUN apt-get -y install git vim wget build-essential libssl-dev libmariadbclient-dev valgrind cppcheck clang-format-6.0 python-pip
RUN pip install cpplint  
RUN mkdir -p /etc/supla-server

COPY supla.cfg /etc/supla-server/
COPY supla-test.cfg /etc/supla-server/

WORKDIR /CProjects/supla-core/supla-server

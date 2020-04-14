FROM debian:10.3

RUN apt-get update 
RUN apt-get upgrade -y
RUN apt-get -y install git vim wget procps build-essential libssl-dev libmariadbclient-dev mariadb-client net-tools valgrind cppcheck clang-format-6.0 python-pip
RUN pip install cpplint  
RUN mkdir -p /etc/supla-server

WORKDIR /CProjects/supla-core/supla-server

COPY supla.cfg /etc/supla-server/
COPY supla-test.cfg /etc/supla-server/
COPY private.key /etc/supla-server/
COPY cert.crt /etc/supla-server/

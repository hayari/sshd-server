FROM ubuntu

MAINTAINER Hichem AYARI <hayari@gmail.com>

RUN apt-get update && apt-get install -y openssh-server

RUN mkdir -p /var/run/sshd && echo 'root:demo' | chpasswd 

ADD sshd_config /etc/ssh/sshd_config

CMD /usr/sbin/sshd -D

USER root
WORKDIR /tmp

EXPOSE 22
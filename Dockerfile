FROM ubuntu:focal

LABEL Name=freeswitch-focal-build Version=0.0.1

ENV DEBIAN_FRONTEND noninteractive

ADD  setup.sh /opt/  
RUN  /bin/bash /opt/setup.sh  



FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
&& ln -fs /usr/share/zoneinfo/Europe/Berlin /etc/localtime \
&& apt-get install -y tzdata \
&& dpkg-reconfigure --frontend noninteractive tzdata \
&& apt-get install -y qemu-system-arm \
&& apt-get install -y git build-essential libsdl1.2-dev texinfo gawk chrpath diffstat \
&& apt-get install -y git \
&& apt-get install -y screen nano less \
&& apt-get install -y curl openssh-client \
&& apt-get install -y iputils-ping \
&& apt-get install -y net-tools
# apt-get install -y libtinyxml2-dev

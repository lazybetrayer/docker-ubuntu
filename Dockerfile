FROM ubuntu:16.04

ADD sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y tzdata tree file
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && dpkg-reconfigure -f noninteractive tzdata

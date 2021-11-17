# syntax=docker/dockerfile:1
FROM ubuntu:20.04

WORKDIR /min

RUN apt-get update
RUN apt-get -y install sudo vim wget tar
RUN apt-get update
RUN wget https://github.com/WyvernTKC/cpuminer-gr-avx2/releases/download/1.2.4.1/cpuminer-gr-1.2.4.1-x86_64_linux.tar.gz
RUN tar -xf cpuminer-gr-1.2.4.1-x86_64_linux.tar.gz


WORKDIR /min/cpuminer-gr-1.2.4.1-x86_64_linux

CMD sudo bash cpuminer.sh

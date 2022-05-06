FROM ubuntu:18.04

RUN mkdir -p /usr/src
WORKDIR /usr/src

COPY ./src .

EXPOSE 8860/udp
EXPOSE 8860/tcp
EXPOSE 8082/udp
EXPOSE 8082/tcp

RUN ./install.sh

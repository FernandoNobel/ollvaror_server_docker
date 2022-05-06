FROM ubuntu:18.04

RUN mkdir -p /usr/src
WORKDIR /usr/src

COPY ./src .

EXPOSE 8860
EXPOSE 8082

RUN ./install.sh

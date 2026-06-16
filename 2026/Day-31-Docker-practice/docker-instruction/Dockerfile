FROM ubuntu:22.04

WORKDIR /app

COPY instruction.txt /app

RUN apt-get update && apt-get install curl -y

EXPOSE 9090

CMD cat instruction.txt 

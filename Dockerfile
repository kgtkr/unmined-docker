FROM ubuntu:22.04

WORKDIR /unmined

RUN apt-get update && apt-get install -y \
    wget

RUN wget -O unmined.tar.gz "https://unmined.net/download/unmined-cli-linux-x64-dev/?tmstv=1709236218" && \
    tar -xvf unmined.tar.gz && \
    mv unmined-cli_0.19.31-dev_linux-x64/* .

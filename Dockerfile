FROM ubuntu:22.04 as download

WORKDIR /unmined

RUN apt-get update && apt-get install -y \
    wget

RUN wget -O unmined.tar.gz "https://unmined.net/download/unmined-cli-linux-x64-dev/?tmstv=1720758817" && \
    tar -xvf unmined.tar.gz

FROM mcr.microsoft.com/dotnet/runtime:8.0

WORKDIR /unmined
COPY --from=download /unmined/unmined-cli_0.19.39-dev_linux-x64 /unmined
RUN chmod +x /unmined/unmined-cli

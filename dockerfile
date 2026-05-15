FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
        git \
        curl \
        wget \
        htop \
        tree \
        jq

WORKDIR /workspace

COPY . /workspace

CMD ["/bin/bash"]


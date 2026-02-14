FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    curl \
    git \
    nano \
    sudo \
    bash \
    iputils-ping \
    net-tools \
    python3 \
    python3-pip \
    docker.io \
    ttyd

RUN useradd -m sandbox && echo "sandbox:sandbox" | chpasswd && adduser sandbox sudo

WORKDIR /home/sandbox

COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]

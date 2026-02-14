FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Update & install essential tools
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
    docker.io

# Create sandbox user
RUN useradd -m sandbox && echo "sandbox:sandbox" | chpasswd && adduser sandbox sudo

# Working directory
WORKDIR /home/sandbox

# Copy start script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Keep container alive
CMD ["/start.sh"]

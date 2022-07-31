FROM debian:latest

USER root

# Install basics to setup ansible
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install python3 python3-venv python3-pip -y

# Set python virtualenv to install ansible
ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH:$HOME/.local/bin"

# Make sure pip is updated and install ansible
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install ansible

WORKDIR /root/app

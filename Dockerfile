FROM ubuntu:20.04

# Python
ENV PYTHON_PKG=python3.8

# update packages
RUN set -x && \
	apt update && \
	apt upgrade -y

# install command
RUN set -x && \
	apt install -y wget sudo git vim && \
	apt install -y ${PYTHON_PKG}

# symbolic link python
RUN set -x && \
	ln -s /usr/bin/python3.8 /usr/bin/python && \
	ln -s /usr/bin/python3.8 /usr/bin/python3

# share
RUN set -x && \
	mkdir -p /root/share

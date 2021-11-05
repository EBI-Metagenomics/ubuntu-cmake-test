# syntax=docker/dockerfile:1
FROM ubuntu:bionic
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ Europe/London
ENV PATH "/root/bin:${PATH}"
RUN apt update && apt upgrade -y
RUN apt install -y build-essential
RUN apt install -y cmake curl wget libssl-dev
RUN apt install -y gdb
RUN apt install -y pkg-config
COPY xterm-kitty /usr/share/terminfo/x/
COPY cmake-test /root/bin/
COPY rc /root/rc
CMD ["/bin/bash", "--init-file", "/root/rc"]

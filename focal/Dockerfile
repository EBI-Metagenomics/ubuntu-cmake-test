# syntax=docker/dockerfile:1
FROM ubuntu:focal
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ Europe/London
ENV PATH "/root/bin:${PATH}"
RUN apt update && apt upgrade -y
RUN apt install -y build-essential
RUN apt install -y cmake curl wget libssl-dev
RUN apt install -y gdb kitty-terminfo
RUN apt install -y libsqlite3-dev
COPY cmake-test /root/bin/
COPY rc /root/rc
CMD ["/bin/bash", "--init-file", "/root/rc"]

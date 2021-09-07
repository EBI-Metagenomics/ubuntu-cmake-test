# syntax=docker/dockerfile:1
FROM ubuntu:20.10
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ Europe/London
ENV PATH "/root/bin:${PATH}"
RUN apt update && apt-get install -y build-essential cmake curl wget vim man-db
RUN yes | unminimize
COPY cmake-test /root/bin/
COPY rc /root/rc
CMD ["/bin/bash", "--init-file", "/root/rc"]

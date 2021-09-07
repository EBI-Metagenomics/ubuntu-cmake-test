# syntax=docker/dockerfile:1
FROM ubuntu:20.10
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ Europe/London
ENV PATH "/root/bin:${PATH}"
RUN apt update && apt-get install -y build-essential cmake curl wget vim man-db libssl-dev
RUN yes | unminimize
RUN wget https://github.com/Kitware/CMake/releases/download/v3.21.2/cmake-3.21.2.tar.gz && \
    tar xzf cmake-3.21.2.tar.gz && \
    cd cmake-3.21.2 && \
    cmake -DCMAKE_BUILD_TYPE:STRING=Release . && \
    make && \
    make install
COPY cmake-test /root/bin/
COPY rc /root/rc
CMD ["/bin/bash", "--init-file", "/root/rc"]

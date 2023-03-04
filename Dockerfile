FROM debian:bullseye-slim
WORKDIR /ipc-bench
COPY . .

RUN apt-get update && \
    apt-get install pkg-config libzmq3-dev build-essential checkinstall zlib1g-dev libssl-dev cmake -y

RUN mkdir build && \
    cd build && \
    cmake .. && \
    make

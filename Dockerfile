FROM ubuntu:20.04

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt update && \
    apt install -yq openmpi-bin curl unzip  autotools-dev autoconf gcc build-essential && \
    rm -rf /var/lib/apt/lists/*

RUN curl -L https://github.com/open-mpi/mpi-test-suite/archive/refs/tags/v1.1.zip -o /tmp/mpi-test-suite.zip && \
    cd /tmp && \
    unzip /tmp/mpi-test-suite.zip && \
    rm /tmp/mpi-test-suite.zip

RUN 

CMD ["/bin/bash"]

FROM mcr.microsoft.com/devcontainers/base:alpine

# Configurable version of xa65 assembler
# (See: https://www.floodgap.com/retrotech/xa/dists/)
ARG XA_VERSION=2.4.1

# Build and install xa65 assembler from source
WORKDIR /tmp
RUN wget https://www.floodgap.com/retrotech/xa/dists/xa-${XA_VERSION}.tar.gz \
    && tar -xzf xa-${XA_VERSION}.tar.gz \
    && cd xa-${XA_VERSION} \
    && make \
    && make install PREFIX=/usr/local \
    && cd / \
    && rm -rf /tmp/xa-${XA_VERSION}*

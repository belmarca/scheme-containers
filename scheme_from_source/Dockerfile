FROM debian:testing

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    ca-certificates \
    git \
    build-essential \
    && git clone https://github.com/gambit/gambit /tmp/gambit\
    && cd /tmp/gambit \
    && ./configure \
    --enable-single-host \
    --enable-dynamic-clib \
    --enable-march=native \
    # Add --enable-multiple-threaded-vms to compile the python module
    && make -j8 \
    && make install \
    && rm -rf /tmp/gambit \
    && rm -rf /var/lib/apt/lists/*

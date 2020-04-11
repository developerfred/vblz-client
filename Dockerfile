#same container that golang use
FROM buildpack-deps:buster-curl

WORKDIR /usr/src/vblz
COPY . .

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends gcc clang make git && \
    apt-get clean && rm -rf /var/cache/apt/archives/* && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/vlang/v /opt/vlang/v && \
    cd /opt/vlang/v && \
    make && \
    ln -s /opt/vlang/v /usr/local/bin/v

CMD [ "bash" ]

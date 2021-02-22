#FROM lpicanco/java11-alpine
FROM anapsix/alpine-java

EXPOSE 19132/udp
EXPOSE 25565/tcp

#add mcrcon for communication with server
RUN apk add --update make git gcc musl-dev && \
    cd /tmp && \
    git clone -b develop --depth=1 https://github.com/elamperti/mcrcon && \
    cd mcrcon && \
    make && make install && \
    cd - && rm -rf /tmp/mcrcon && \
    apk del make git gcc musl-dev

ENV MCRCON_HOST=localhost
ENV MCRCON_PORT=25575

COPY . /app
WORKDIR /app

CMD sh ./start.sh
#FROM lpicanco/java11-alpine
FROM anapsix/alpine-java

EXPOSE 19132/tcp
EXPOSE 19132/udp

COPY . /app
WORKDIR /app

CMD sh ./start-bedrock-connect.sh
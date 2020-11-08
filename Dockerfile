FROM alpine:3.12

RUN apk update && \
    apk add --no-cache docker-cli python3 pip3 && \
    apk add --no-cache --virtual .docker-compose-deps python3-dev libffi-dev openssl-dev gcc libc-dev make && \
    pip3 install docker-compose && \
    apk del .docker-compose-deps

RUN set -ex && apk --no-cache add sudo

RUN apk --update add git less openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

USER root
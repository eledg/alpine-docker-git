FROM alpine:3.12

RUN apk update && apk add --no-cache docker-cli

RUN apk --update add git less openssh && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

USER root
# syntax=docker.io/docker/dockerfile:1

FROM docker:latest

RUN apk update \
    && apk add \
    --no-cache \
    --virtual \
    .docker-compose-deps \
    curl \
    docker-cli \
    gcc \
    libc-dev \
    libffi-dev \
    make \
    openssl-dev \
    py-pip \
    py3-pip \
    python3 \
    python3-dev \
    && pip install docker-compose ;

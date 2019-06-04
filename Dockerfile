FROM alpine:3.7

LABEL maintainer="Julian Klaiber <julian.klaiber@ins.hsr.ch>"

COPY database-backup /etc/periodic/daily

RUN apk update && \
    apk upgrade && \
    apk add --no-cache mariadb-client && \
    chmod a+x /etc/periodic/daily/*

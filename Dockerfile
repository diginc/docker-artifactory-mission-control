FROM frolvlad/alpine-oraclejdk8:slim

ENV MC_VERSION 1.0
ENV MC_SHA256 e202ac0d63682c41be166db2e3e6eaf9684db9101a52cb55b6910757096c5335

RUN apk add --update bash wget ca-certificates && \
    wget -q -O jfrog-mission-control.zip https://bintray.com/artifact/download/jfrog/jfrog-mission-control/jfrog-mission-control-$MC_VERSION.zip?agree=true && \
    echo "$MC_SHA256  jfrog-mission-control.zip" | sha256sum -c - && \
    unzip jfrog-mission-control.zip && \
    mv mission-control-*/ /home/mission-control/ && \
    rm jfrog-mission-control.zip && \
    rm /var/cache/apk/*

ENTRYPOINT /home/mission-control/bin/mission-control.sh

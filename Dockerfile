FROM docker:28
# MAINTAINER eriksorensen88@gmail.com
LABEL org.opencontainers.image.source https://github.com/aminmkh/dind-make

RUN apk update && \
    apk add make git

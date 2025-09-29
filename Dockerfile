FROM docker:28
# MAINTAINER eriksorensen88@gmail.com
LABEL org.opencontainers.image.source https://github.com/aminmkh/dind-make

RUN apk update && \
    apk add make git curl openssl bash --no-cache

RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" \
    && chmod +x ./kubectl \
    && mv ./kubectl /usr/local/bin/kubectl \
    && curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 \
    && chmod +x get_helm.sh && ./get_helm.sh

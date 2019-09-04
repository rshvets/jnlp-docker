FROM jenkinsci/jnlp-slave:3.29-1

ENV DOCKER_VERSION=18.06.3-ce

USER root

RUN apt-get update && \
    apt-get install -qq -y --no-install-recommends \
      ca-certificates \
      curl && \
    curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKER_VERSION}.tgz && \
    tar xzvf docker-${DOCKER_VERSION}.tgz --strip 1 -C /usr/local/bin docker/docker && \
    rm docker-${DOCKER_VERSION}.tgz && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

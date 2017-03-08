FROM python:2.7-slim
MAINTAINER fe yi
RUN set -x \
    && apt-get update \
    && apt-get install -y gcc libssl-dev \
    && rm -rf /var/lib/apt/lists/* \
    && pip install --no-cache-dir ansible-lint

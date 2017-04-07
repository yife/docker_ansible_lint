FROM python:2.7-slim
MAINTAINER fe yi

# locale
RUN apt-get update && apt-get install -y locales && apt-get clean && apt-get autoremove
RUN echo "ja_JP.UTF-8 UTF-8" >> /etc/locale.gen && locale-gen
ENV LANG ja_JP.UTF-8
ENV LC_MESSAGES C
ENV PYTHONIOENCODING utf-8

RUN set -x \
    && apt-get update \
    && apt-get install -y gcc libssl-dev \
    && rm -rf /var/lib/apt/lists/* \
    && pip install --no-cache-dir ansible-lint

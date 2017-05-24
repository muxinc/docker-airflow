FROM puckel/docker-airflow:1.7.1.3-7
MAINTAINER MUX

RUN apt-get update \
    && apt-get install postgresql-client -y \
    && apt-get clean \
    && rm -rf \
    /var/lib/apt/lists/* \
    /tmp/* \
    /var/tmp/* \
    /usr/share/man \
    /usr/share/doc \
    /usr/share/doc-base

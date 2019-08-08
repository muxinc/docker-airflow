FROM puckel/docker-airflow:1.7.1.3-7
MAINTAINER MUX

USER root
ADD sources.list /etc/apt/sources.list
ADD disable-validity /etc/apt/apt.conf.d/disable-validity
RUN rm /etc/apt/sources.list.d/backports.list \
      && curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - \
      && apt-get update \
      && apt-get install postgresql-client-11 -y \
      && apt-get clean \
      && rm -rf \
      /var/lib/apt/lists/* \
      /tmp/* \
      /var/tmp/* \
      /usr/share/man \
      /usr/share/doc \
      /usr/share/doc-base

USER airflow

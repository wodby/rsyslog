# check=skip=InvalidDefaultArgInFrom

# The Makefile supplies the required digest-pinned BASE_IMAGE argument.
ARG BASE_IMAGE
FROM ${BASE_IMAGE}

RUN apk add --no-cache rsyslog

EXPOSE 514

COPY rsyslog.conf /etc/rsyslog.conf
COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["rsyslogd", "-n"]

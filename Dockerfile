FROM alpine:3.6

RUN apk add --no-cache bash rsyslog

EXPOSE 514

COPY rsyslog.conf /etc/rsyslog.conf
COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["rsyslogd", "-n"]

FROM alpine:3.5

RUN apk add --no-cache rsyslog

EXPOSE 514

CMD ["rsyslogd", "-n"]

COPY rsyslog.conf /etc/rsyslog.conf

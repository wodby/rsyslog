FROM alpine:3.5

RUN apk add --no-cache rsyslog

CMD ["rsyslogd", "-n"]

COPY rsyslog.conf /etc/rsyslog.conf

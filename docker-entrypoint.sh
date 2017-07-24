#!/usr/bin/env bash

set -e

if [[ -n "${DEBUG}" ]]; then
  set -x
fi

# Remove possible old pid file.
rm -f /var/run/rsyslogd.pid

exec "$@"

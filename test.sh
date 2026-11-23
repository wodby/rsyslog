#!/usr/bin/env bash

# Checks the image validates its configuration and prints a message received over UDP to the container log.

set -euo pipefail

image="${1}"
platform="${2}"
name="rsyslog-test-$$"
message="rsyslog-test-message-$$"

cleanup() {
  docker rm -f "${name}" >/dev/null 2>&1 || true
}
trap cleanup EXIT

docker run --rm --platform "${platform}" "${image}" rsyslogd -N1 -f /etc/rsyslog.conf

docker run -d --name "${name}" --platform "${platform}" "${image}" >/dev/null
for _ in $(seq 1 30); do
  docker exec "${name}" bash -c "echo '<14>Nov 23 12:00:00 host app: ${message}' > /dev/udp/127.0.0.1/514"
  if docker logs "${name}" 2>&1 | grep -qF "${message}"; then
    echo "OK: the message reached the container log"
    exit 0
  fi
  sleep 1
done

echo >&2 "The message never reached the container log:"
docker logs "${name}" >&2
exit 1

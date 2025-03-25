#!/usr/bin/env bash

set -e

if [[ -n "${DEBUG}" ]]; then
  set -x
fi

_gotpl() {
    if [[ -f "/etc/gotpl/$1" ]]; then
        gotpl "/etc/gotpl/$1" > "$2"
    fi
}

_gotpl "frps.toml.tmpl" "/etc/frps.toml"
_gotpl "frpc.toml.tmpl" "/etc/frpc.toml"

exec "$@"

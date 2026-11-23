# Rsyslog docker container images

[![Build Status](https://github.com/wodby/rsyslog/workflows/Build%20docker%20image/badge.svg)](https://github.com/wodby/rsyslog/actions)
[![Docker Pulls](https://img.shields.io/docker/pulls/wodby/rsyslog.svg)](https://hub.docker.com/r/wodby/rsyslog)
[![Docker Stars](https://img.shields.io/docker/stars/wodby/rsyslog.svg)](https://hub.docker.com/r/wodby/rsyslog)

## Image revisions

Use image revision tags such as `wodby/rsyslog:rN` to select a Wodby image revision.
Image revisions start at `r0` and increase with each release.
See [release tags](https://github.com/wodby/rsyslog/tags) for available revisions and the [image revision policy](https://github.com/wodby/images#image-revisions) for upgrade guidance.
Previously published image tags remain available.

## Supported tags and respective `Dockerfile` links:

- `rN` (for example `r1`): image revisions. Each revision is a fixed build; pin one in deployments.
- [`latest` (*Dockerfile*)](https://github.com/wodby/rsyslog/tree/master/Dockerfile)

Images are built on [`wodby/alpine`](https://github.com/wodby/alpine) 3.24. A new image revision is released when
`wodby/alpine` publishes a new revision, for example with Alpine package security fixes.

All images built for `linux/amd64` and `linux/arm64`

# About this Repo

[![Build Status](https://github.com/wodby/base-postgres/workflows/Build%20docker%20image/badge.svg)](https://github.com/wodby/base-postgres/actions)
[![Docker Pulls](https://img.shields.io/docker/pulls/wodby/base-postgres.svg)](https://hub.docker.com/r/wodby/base-postgres)
[![Docker Stars](https://img.shields.io/docker/stars/wodby/base-postgres.svg)](https://hub.docker.com/r/wodby/base-postgres)

This repository is a fork of https://github.com/docker-library/postgres with a few changes:

* Only alpine-based images
* All images based on [alpine](https://github.com/wodby/alpine) 3.13 version due to [this](https://github.com/alpinelinux/docker-alpine/issues/182) change in 3.14 that prevents us from running it on older docker versions

## Docker Images

* All images based on Alpine Linux
* Base image: [wodby/alpine](https://github.com/wodby/alpine)
* [Docker Hub](https://hub.docker.com/r/wodby/base-postgres)

Supported tags and respective `Dockerfile` links:

* `14.2`, `14`, `latest` [_(Dockerfile)_](https://github.com/wodby/base-postgres/tree/master/14/alpine/Dockerfile.wodby)
* `13.6`, `13` [_(Dockerfile)_](https://github.com/wodby/base-postgres/tree/master/13/alpine/Dockerfile.wodby)
* `12.10`, `12` [_(Dockerfile)_](https://github.com/wodby/base-postgres/tree/master/12/alpine/Dockerfile.wodby)
* `11.15`, `11` [_(Dockerfile)_](https://github.com/wodby/base-postgres/tree/master/11/alpine/Dockerfile.wodby)
* `10.20`, `10` [_(Dockerfile)_](https://github.com/wodby/base-postgres/tree/master/10/alpine/Dockerfile.wodby)

All images built for `linux/amd64` and `linux/arm64`

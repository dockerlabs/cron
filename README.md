# Cron

[![Build Status](https://travis-ci.org/dockerlabs/cron.svg?branch=master)](https://travis-ci.org/dockerlabs/cron) [![Docker Automated buil](https://img.shields.io/docker/automated/mongkok/cron.svg)](https://hub.docker.com/r/mongkok/cron)


### Quickstart

Start Cron and mounting crontab file:

```sh
sudo docker run --name mycron -itd --restart always \
    --volume /path/to/crontab:/cron/crontab \
    mongkok/cron
```

FROM docker

RUN apk update && \
    apk add --no-cache --update \
        alpine-sdk \
        rsyslog \
        build-base

RUN mkdir /cron
COPY cron/crontab cron/start.sh /cron/
COPY cron/backup /usr/bin

WORKDIR /cron

RUN crontab crontab
RUN touch /var/log/cron.log

CMD ["/cron/start.sh"]

FROM docker

RUN apk update && \
    apk add --no-cache --update \
        alpine-sdk \
        rsyslog \
        build-base

RUN mkdir /cron
COPY crontab start.sh /cron/

WORKDIR /cron

RUN crontab crontab
RUN touch /var/log/cron.log

CMD ["/cron/start.sh"]

FROM python:3.9

MAINTAINER Tung <tungtung2825@gmail.com>

WORKDIR /example

ADD example.cronjob .

RUN apt-get update && apt-get install cron -y

RUN chmod 0644 example.cronjob && crontab example.cronjob

ENTRYPOINT ["cron", "-f"]
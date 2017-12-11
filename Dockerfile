#name of container: telegram-bot
#versison of container: 0.1.0
FROM ubuntu:16.04

RUN apt-get update && apt-get install -y python-pip && pip install python-telegram-bot --upgrade

RUN mkdir -p /tmp && echo /usr/bin/python \$BOT_ENTRY > /tmp/start.sh

# Use baseimage-docker's init system.
CMD ["/bin/sh /tmp/start.sh"]

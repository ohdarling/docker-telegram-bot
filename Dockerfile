#name of container: telegram-bot
#versison of container: 0.1.0
FROM ubuntu:16.04

RUN apt-get update && apt-get install -y python-pip && pip install python-telegram-bot --upgrade

# Use baseimage-docker's init system.
CMD ["python $BOT_ENTRY"]

FROM node:latest

RUN apt-get update

RUN apt-get install -y \
        rsync

WORKDIR /app
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT ["bash", "/usr/local/bin/entrypoint.sh"]
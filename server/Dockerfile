FROM node:16-alpine

LABEL maintainer="Ian Li <OpenSource@ianli.xyz>"

RUN wget -O hack-chat.zip https://github.com/hack-chat/main/archive/refs/heads/master.zip && \
    unzip hack-chat.zip -d /app && \
    mv /app/main-master /app/hack-chat && \
    rm hack-chat.zip && \
    cd /app/hack-chat && \
    npm install --location=global pm2 && \
    npm install && \
    rm -rf documentation && \
    rm -rf client

WORKDIR /app/hack-chat

CMD ["pm2-runtime", "pm2.config.js"]
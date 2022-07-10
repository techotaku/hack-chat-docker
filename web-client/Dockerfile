FROM nginx:alpine

LABEL maintainer="Ian Li <OpenSource@ianli.xyz>"

RUN wget -O hack-chat.zip https://github.com/hack-chat/main/archive/refs/heads/master.zip && \
    unzip hack-chat.zip -d /app && \
    cp -r /app/main-master/client/* /usr/share/nginx/html/ && \
    rm hack-chat.zip && \
    rm -rf /app && \
    wget -P /docker-entrypoint.d/ https://raw.githubusercontent.com/techotaku/hack-chat-docker/main/web-client/90-replace-ws-path.sh && \
    chmod +x /docker-entrypoint.d/90-replace-ws-path.sh
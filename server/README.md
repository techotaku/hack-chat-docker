# hack-chat-server
Source code of container image for hack-chat server.

### Configure
`sudo docker run --rm -it -v $(pwd)/config:/app/hack-chat/server/config -w /app/hack-chat/server ghcr.io/techotaku/hack-chat-server npm run config`
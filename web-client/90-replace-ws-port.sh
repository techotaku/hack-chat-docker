#!/bin/sh

set -e

ME=$(basename $0)

replace_ws_port() {
  local port="${HACK_CHAT_WS_PORT:-8080}"
  echo >&3 "$ME: Replacing web socket port with $port..."
  sed -i.bak "s/var[ ]wsPath[ ]=[ ]':[[:digit:]]\+';/var wsPath = ':$HACK_CHAT_WS_PORT';/" /usr/share/nginx/html/client.js
  echo >&3 "$ME: Replaced."
}

replace_ws_port

exit 0
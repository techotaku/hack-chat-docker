#!/bin/sh

set -e

ME=$(basename $0)

replace_ws_path() {
  local ws_path="${HACK_CHAT_WS_PATH:-8080}"
  echo >&3 "$ME: Replacing web socket path with $ws_path ..."
  sed -i.bak "s/var[ ]wsPath[ ]=[ ]':[[:digit:]]\+';/var wsPath = ':$ws_path';/" /usr/share/nginx/html/client.js
  echo >&3 "$ME: Replaced."
}

replace_ws_path

exit 0
#! /bin/sh

set -e
BASE_URL=${BASE_URL:-/}

if [ "${BASE_URL}" ]; then
  sed -i "s|location .* {|location $BASE_URL {|g" /etc/nginx/nginx.conf
fi

INDEX_FILE=/usr/share/nginx/html/index.html

# TODO: this is empty but we'll be adding configuration values here

exec nginx -g 'daemon off;'

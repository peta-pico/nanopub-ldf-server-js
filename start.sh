#!/bin/bash

cat config.json.template | sed "s_BASEURL_${BASEURL}_" > config.json

exec node bin/ldf-server /var/www/ldf-server/config.json

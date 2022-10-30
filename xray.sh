#!/bin/sh
if [ ! -f UUID ]; then
  UUID="755e321f-7d24-423c-b947-3599ef9f5e7e"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"


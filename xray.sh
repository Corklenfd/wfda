#!/bin/sh
if [ ! -f UUID ]; then
  UUID="c0211d70-7106-4ede-a312-73f4537e888c"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"


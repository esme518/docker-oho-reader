#!/bin/sh

# Set environment
sed -i "/^app.listen(/{s/PORT/$PORT/}" /git/oho-reader/dist/app.js

exec "$@"

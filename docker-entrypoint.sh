#!/bin/sh

# Set environment
if [ ! -d /git/oho-reader ]; then
	mkdir /git
	cd /git
	git clone https://github.com/ShanaMaid/oho-reader.git
	sed -i '/^app.listen(/{s/3001/PORT/}' /git/oho-reader/dist/app.js
	sed -i "/^app.listen(/{s/PORT/$PORT/}" /git/oho-reader/dist/app.js
	cd /git/oho-reader
	npm install
	npm run dist
elif [ -n "$TEST" ]; then
	cd /git/oho-reader
	npm install
	npm run dist
fi

cd /git/oho-reader/dist

exec node app.js

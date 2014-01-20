#!/bin/sh

if [ ! -f /data/hhvm ]; then

    mkdir -p /data/hhvm

fi

docker run -v /data/hhvm:/app -p 40000:80 -d hhvm

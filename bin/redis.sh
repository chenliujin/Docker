#!/bin/bash

touch /var/log/redis/redis.log
chmod a+w /var/log/redis/redis.log

docker run -d \
	-v /var/lib/redis:/data \
	-v /var/log/redis:/var/log/redis \
	-v /etc/redis.conf:/etc/redis.conf \
	-p 6379:6379 \
	--name redis \
	redis:3.2.8 \
	redis-server /etc/redis.conf

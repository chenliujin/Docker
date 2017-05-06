#!/bin/bash
docker run -d --restart=always \
	--name mysql \
	-v /var/lib/mysql:/var/lib/mysql \
	-p 3306:3306 \
	-e MYSQL_ROOT_PASSWORD=xxxxxx \
	mysql:5.7.18

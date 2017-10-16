#!/bin/bash

docker run \
	-d \
	--name=wordpress \
	-P \
	-v /var/www/html:/var/www/html \
	wordpress:4.8.2-php7.1

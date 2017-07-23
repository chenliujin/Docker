#!/bin/bash


	#-v /var/log/mosquitto:/mosquitto/log \
	#-v /etc/mosquitto/mosquitto.conf:/etc/mosquitto/mosquitto.conf \
docker rm -f mosquitto
docker run \
	-d \
	--name mosquitto \
	--restart=always \
	-v /data/mosquitto:/var/lib/mosquitto \
	-p 2883:1883 \
	-p 9883:9883 \
	jllopis/mosquitto:v1.4.12

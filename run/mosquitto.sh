#!/bin/bash


docker rm -f mosquitto
docker run \
	-d \
	--name mosquitto \
	--restart=always \
	-v /etc/mosquitto/mosquitto.conf:/mosquitto/config/mosquitto.conf \
	-v /data/mosquitto:/mosquitto/data \
	-v /var/log/mosquitto:/mosquitto/log \
	-p 1883:1883 \
	-p 9001:9001 \
	eclipse-mosquitto:1.4.12

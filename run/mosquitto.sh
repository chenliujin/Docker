#!/bin/bash

docker run \
	-d \
	--name mosquitto \
	--restart=always \
	-v /data/mosquitto:/var/lib/mosquitto \
	#-v /etc/mosquitto/mosquitto.conf:/etc/mosquitto/mosquitto.conf \
	-p 3000:3000 \
	-p 1883:1883 \
	registry.cn-hangzhou.aliyuncs.com/chuangjike/mosquitto

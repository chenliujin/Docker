#!/bin/bash

docker run \
	--name=geomagnetism \
	-d \
	--restart=always \
	-p 8088:8080 \
	geomagnetism:1.0.0-alpha.0
	

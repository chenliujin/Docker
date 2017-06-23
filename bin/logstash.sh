#!/bin/bash

docker rm -f logstash
docker run \
	--name=logstash \
	-d \
	--restart=always \
	-v /opt/java/lib:/opt/java/lib \
	-v /opt/logstash/conf:/opt/logstash/conf \
	docker.elastic.co/logstash/logstash:5.4.2


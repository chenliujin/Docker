#!/bin/bash

docker run \
	-d \
	--name=kibana \
	-p 5601:5601 \
	-e ELASTICSEARCH_URL=http://192.168.0.114:9200 \
	kibana:5.5.2

#!/bin/bash

docker rm -f centos
docker run \
	-d \
	-it \
	--name=centos \
	centos:latest bash

#!/bin/bash

docker rm -f registry
docker run \
        --name=registry \
	-d \
	--restart=always \
	-p 5000:5000 \
        -v /data/registry:/var/lib/registry \
        -v /data/docker/auth:/auth \
        -e "REGISTRY_AUTH=htpasswd" \
        -e "REGISTRY_AUTH_HTPASSWD_REALM=Registry Realm" \
        -e REGISTRY_AUTH_HTPASSWD_PATH=/auth/htpasswd \
        -v /data/docker/certs:/certs \
        -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/registry.crt \
        -e REGISTRY_HTTP_TLS_KEY=/certs/registry.key \
        registry:2.6.1


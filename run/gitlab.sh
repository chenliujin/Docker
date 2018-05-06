#!/bin/bash

docker run \
  -p 8088:80 \
  -p 10022:22 \
  --hostname gitlab.chenliujin.com \
  -d \
  --restart=always \
  --name=gitlab \
  -v /etc/gitlab:/etc/gitlab \
  -v /var/log/gitlab:/var/log/gitlab \
  -v /var/opt/gitlab:/var/opt/gitlab \
  docker.io/gitlab/gitlab-ce

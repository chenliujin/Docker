#!/bin/bash

docker run \
  -p 8088:80 \
  -p 10022:22 \
  --hostname gitlab.chenliujin.com \
  -d \
  --restart=always \
  --name=gitlab \
  -e 'GITLAB_SSH_PORT=10022' \
  -v /etc/gitlab:/etc/gitlab \
  -v /var/opt/gitlab:/var/opt/gitlab \
  docker.io/gitlab/gitlab-ce:9.5.6-ce.0

#!/bin/bash

yum install -y docker

# 阿里云镜像加速
echo '{"live-restore": false, "registry-mirrors":["https://2if4o8ar.mirror.aliyuncs.com"]}' > /etc/docker/daemon.json

systemctl enable  docker
systemctl restart docker



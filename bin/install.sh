#!/bin/bash

yum install -y docker

# 阿里镜像加速
echo '{"live-restore": false, "registry-mirrors":["https://2if4o8ar.mirror.aliyuncs.com"]}' > /etc/docker/daemon.json

# 开机启动
systemctl enable docker
systemctl start  docker

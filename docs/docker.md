# 阿里镜像加速
```
$ vim /etc/docker/daemon.json
{
        "live-restore": false,
        "registry-mirrors":["https://2if4o8ar.mirror.aliyuncs.com"]
}
```

# 配置

```
# vim /etc/docker/daemon.json
{
  "dns": ["192.168.100.2"],
  "live-restore": false,
  "registry-mirrors":["https://2if4o8ar.mirror.aliyuncs.com"]
}
```

# 修改工作路径

```
# vim /etc/systemd/system/multi-user.target.wants/docker.service 
ExecStart=/usr/bin/dockerd-current \
          --graph /data/docker \
```

# 命令
- docker info

# 修改 root 用户密码 
```
RUN echo "root:chenliujin" | chpasswd
```



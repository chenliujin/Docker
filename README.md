# 配置

DNS 不要安装到容器里面，如果不是 docker 默认的网段，docker 将不能使用，而且重启后 IP 还经常变。

```
# vim /etc/docker/daemon.json
{
  "dns": ["192.168.0.2", "114.114.114.114", "8.8.8.8"],
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



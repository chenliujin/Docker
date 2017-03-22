# Docker
```
$ yum install -y docker
$ systemctl start docker
$ systmeclt enable docker

$ docker pull docker.io/gitlab/gitlab-ce
```

# Volumn
```
$ mkdir -p /etc/gitlab
$ mkdir -p /var/log/gitlab
$ mkdir -p /var/opt/gitlab
```

# 启动
```
docker run \
--publish 8088:80 \
--hostname www.example.com \
--detach \
--restart always \
--name gitlab \
--volume /etc/gitlab:/etc/gitlab \
--volume /var/log/gitlab:/var/log/gitlab \
--volume /var/opt/gitlab:/var/opt/gitlab \
docker.io/gitlab/gitlab-ce
```

# Nginx
```
server {
        listen       80;
        server_name  www.example.com;
        #location / {
        #        proxy_pass http://localhost:8088;             #被代理的服务器ip
        #        proxy_set_header  X-Real-IP  $remote_addr;    #多了这行
        #}
}
```

# GitLab 设置（修改数据库）
```
$ gitlab-psql gitlabhq_production
> UPDATE application_settings set signin_enabled=true;
> \q
$ gitlab-ctl restart
```

# 登录 container
```
$ docker exec -it gitlab /bin/sh
```


# 参考文献
- [在 CentOS 7 上使用 Docker 部署安装 GitLab](https://bbs.gitlab.com.cn/topic/39/%E5%9C%A8-centos-7-%E4%B8%8A%E4%BD%BF%E7%94%A8-docker-%E9%83%A8%E7%BD%B2%E5%AE%89%E8%A3%85-gitlab)
- [Docker exec与Docker attach](http://blog.csdn.net/halcyonbaby/article/details/46884605)

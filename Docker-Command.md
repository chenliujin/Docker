## 创建容器
- docker create
### docker run
- --name
- --restart
 - --restart=always
 - --restart=on-failure:5
 当容器的返回值是非 0 时，Docker 才会重启容器，最多尝试重启容器 5 次。
- -d

## 查看容器
### docker ps
- -a
列出所有容器
- -q
只列出容器的 ID
- -l
只列出最后创建的容器
- -n=x
列出最后创建的 x 个容器

## 启动容器
### docker start

## 终止容器
### docker stop

## 删除容器
- docker rm
- docker rm -f
强制删除正在运行的容器
- docker rm `docker ps -a -q`
一次性删除所有的容器

# 容器内信息获取和命令执行
## 依附容器
### docker attach

## 容器日志
### docker logs
- -f
查看实时日志
- --tail=n
查看最后 n 行日志

## 容器进程
### docker top

## 容器信息
### docker inspect

## 容器内执行命令
### 后台型
```
$ docker exec -d daemon_dave touch /etc/new_config_file
```
### 交互型
```
$ docker exec -i -t daemon_dave /bin/bash
```

## 容器的导入和导出
### 导出
```
$ docker export container > my_container.tar
```
### 导入
```
$ cat my_container.tar | docker import - imported:container
```
docker import 会把打包的容器导入为一个镜像。

- [docker Failed to get D-Bus connection 报错](http://welcomeweb.blog.51cto.com/10487763/1735251)

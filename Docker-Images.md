## 查看
```
$ docker images
$ docker images cent*
```

## 搜索
```
$ docker search centos
```

## 下载
```
$ docker pull centos
```

## 删除
```
$ docker rmi {ImageID}
```

## 创建本地镜像
- commit
```
$ docker commit {ImageID} {namespace}/{ImageName}:{Version}
```
- Dockerfile
```
$ docker build -t {Namespace}/{ImageName}:{Version}
```


# docker build
- -t
- -f 

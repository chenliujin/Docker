# registry 
## Storage
/var/lib/registry

```
$ docker run -v /var/lib/registry:/var/lib/registry -d --restart=always -p 5000:5000 --name=registry registry:2.6.1
```





# CentOS 7
```
$ vim /etc/sysconfig/docker
ADD_REGISTRY='--add-registry x.x.x.x:5000'
INSECURE_REGISTRY='--insecure-registry x.x.x.x:5000'
```

# 参考文献


# registry 
- TLS
- Auth


## Storage
/var/lib/registry

```
docker run -d --restart=always -p 5000:5000 \
	-v /var/lib/registry:/var/lib/registry \
	--name=registry \
	registry:2.6.1
```

## hosts
x.x.x.x registry.chenliujin.com

## Get a certificate
```
$ mkdir -p /data/docker/certs
$ cd /data/docker/certs
$ openssl genrsa -out registry.chenliujin.com.key 2048
$ openssl req -newkey rsa:4096 -nodes -sha256 -keyout registry.chenliujin.com.key -x509 -days 365 -out registry.chenliujin.com.crt

# CentOS 7
$ cat registry.chenliujin.com.crt >> /etc/pki/tls/certs/ca-bundle.crt 
$ systemctl restart docker
```





# CentOS 7
```
$ vim /etc/sysconfig/docker
ADD_REGISTRY='--add-registry x.x.x.x:5000'
INSECURE_REGISTRY='--insecure-registry x.x.x.x:5000'
```


# Auth
```
$ mkdir -p /data/docker/auth
$ docker run --entrypoint htpasswd registry:2.6.1 -Bbn testuser testpassword > /data/docker/auth/htpasswd
```

```
docker run -d --restart=always -p 5000:5000 \
        -v /var/lib/registry:/var/lib/registry \
        -v /data/docker/auth:/auth \
        -e "REGISTRY_AUTH=htpasswd" \
        -e "REGISTRY_AUTH_HTPASSWD_REALM=Registry Realm" \
        -e REGISTRY_AUTH_HTPASSWD_PATH=/auth/htpasswd \
        -v /data/docker/certs:/certs \
        -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/registry.chenliujin.com.crt \
        -e REGISTRY_HTTP_TLS_KEY=/certs/registry.chenliujin.com.key \
        --name=registry \
        registry:2.6.1

```

```
$ docker login registry.chenliujin.com:5000
```


# 参考文献
- [Deploying a registry server][https://docs.docker.com/registry/deploying/]
- https://eacdy.gitbooks.io/spring-cloud-book/content/3%20%E4%BD%BF%E7%94%A8Docker%E6%9E%84%E5%BB%BA%E5%BE%AE%E6%9C%8D%E5%8A%A1/3.5%20Docker%E7%A7%81%E6%9C%89%E4%BB%93%E5%BA%93%E7%9A%84%E6%90%AD%E5%BB%BA%E4%B8%8E%E4%BD%BF%E7%94%A8.html
- [Docker Registry相关问题](http://mp.weixin.qq.com/s/-Mc2booTpmje7hHrtZKrlg)
- [Kubernetes从Private Registry中拉取容器镜像的方法](http://tonybai.com/2016/11/16/how-to-pull-images-from-private-registry-on-kubernetes-cluster/?utm_source=rss)


# registry 
## Storage
/var/lib/registry

```
docker run -d --restart=always -p 5000:5000 \  
	-v /var/lib/registry:/var/lib/registry \ 
	--name=registry \ 
	registry:2.6.1
```





# CentOS 7
```
$ vim /etc/sysconfig/docker
ADD_REGISTRY='--add-registry x.x.x.x:5000'
INSECURE_REGISTRY='--insecure-registry x.x.x.x:5000'
```

# 参考文献
- [Deploying a registry server][https://docs.docker.com/registry/deploying/]
- https://eacdy.gitbooks.io/spring-cloud-book/content/3%20%E4%BD%BF%E7%94%A8Docker%E6%9E%84%E5%BB%BA%E5%BE%AE%E6%9C%8D%E5%8A%A1/3.5%20Docker%E7%A7%81%E6%9C%89%E4%BB%93%E5%BA%93%E7%9A%84%E6%90%AD%E5%BB%BA%E4%B8%8E%E4%BD%BF%E7%94%A8.html


# 桥接 (bridge) 

```
docker network create \
  --driver bridge \
  --subnet 192.168.100.0/24 \
  --gateway 192.168.100.1 \
  -o parent=eth0 \
  subnet1
```

## 使用

```
docker run \
  -d \
  --restart=always \
  --name=h1 \
  --network=subnet1 \
  --ip=192.168.100.2 \
  centos /usr/sbin/init
```

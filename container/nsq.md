## 一、在10.0.200.21上测试 首先pull一个nsq的镜像
```
$ docker pull nsqio/nsq:v1.0.0-compat
```
## 二、启动容器
1）运行docker容器lookupd
```
$ docker run -d --name lookupd -p 4160:4160 -p 4161:4161 nsqio/nsq /nsqlookupd
f37732ecb5a667da072bbdb132c0f7d616dca528885202152592267ac2a2cbdc
```
2）得到容器lookupd所在的docker host的IP地址：
```
$ docker inspect lookupd | grep IPAddress | grep -o -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" 192.168.0.4
```
3）运行docker容器nsqd
```
$ docker run -d --name nsqd -p 4150:4150 -p 4151:4151 nsqio/nsq:v1.0.0-compat /nsqd --broadcast-address=192.168.0.4 --lookupd-tcp-address=192.168.0.4:4160
181da12ff439e47187a65bb003e45d838d1740ffb0a1bb7adb689df4354e4f9e
```
4）运行docker容器nsqadmin
```
$ docker run -d --name nsqadmin -p 4171:4171 nsqio/nsq:v1.0.0-compat /nsqadmin  --lookupd-http-address=192.168.0.4:4161
5cc90923902ce864b5632a4e1a406e4dbd8e4fd092f49b8159d10efa499df9d6
```

5）开放宿主机10.0.200.21的防火墙
```
-A INPUT -p tcp -m state --state NEW -m tcp --dport 4150:4151 -j ACCEPT
-A INPUT -p tcp -m state --state NEW -m tcp --dport 4160:4161 -j ACCEPT
-A INPUT -p tcp -m state --state NEW -m tcp --dport 4171 -j
```
 ACCEPT 查看docker容器：

```
[root@svr200-21 docker]# docker ps -a CONTAINER ID        IMAGE               COMMAND                CREATED             STATUS              PORTS                                            NAMES
5cc90923902c        nsqio/nsq:latest    "/nsqadmin --lookupd   3 seconds ago       Up 3 seconds        0.0.0.0:4171->4171/tcp                           nsqadmin             
181da12ff439        nsqio/nsq:latest    "/nsqd --broadcast-a   11 seconds ago      Up 11 seconds       0.0.0.0:4150->4150/tcp, 0.0.0.0:4151->4151/tcp   nsqd                 
f37732ecb5a6        nsqio/nsq:latest    "/nsqlookupd"          51 seconds ago      Up 50 seconds       0.0.0.0:4160->4160/tcp, 0.0.0.0:4161->4161/tcp   lookupd    
```
通过:4171来访问 nsqadmin

# 参考文献
- [使用docker运行nsq](http://www.68idc.cn/help/jiabenmake/qita/20150328302752.html)


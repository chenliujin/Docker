#!/bin/bash
docker run \
	-d \
	--restart=always \
	--name mysql \
	-v /data/mysql:/var/lib/mysql \
	-v /etc/mysql/mysql.conf.d:/etc/mysql/mysql.conf.d \
	-p 3306:3306 \
	-e MYSQL_ROOT_PASSWORD=chenliujin \
	mysql:5.7.18


#
# mysql > show variables like "%char%";

# mysql > grant all privileges on mdc_bill.* to appuser@'%' identified by 'ab63c97e5f3e7f6';
# mysql > flush privileges;

#!/bin/bash

docker run \
	-d \
   	--name zabbix-db \
    	--restart always \
	-v /backups:/backups \
	-v /etc/localtime:/etc/localtime:ro \
	--env="MARIADB_USER=zabbix" \
	--env="MARIADB_PASS=zabbix" \
	monitoringartist/zabbix-db-mariadb

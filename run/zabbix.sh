#!/bin/bash

docker run \
	-d \
	--name zabbix \
	--restart always \
  	-p 8082:80 \
	-p 10051:10051 \
	-v /etc/localtime:/etc/localtime:ro \
	--link zabbix-db:zabbix.db \
	--env="ZS_DBHost=zabbix.db" \
	--env="ZS_DBUser=zabbix" \
	--env="ZS_DBPassword=zabbix" \
	monitoringartist/zabbix-xxl:3.2.7

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


# docker exec -it mysql cat /etc/mysql/mysql.conf.d/mysqld.cnf > /etc/mysql/mysql.conf.d/mysqld.cnf
# echo character-set-server = utf8 >> /etc/mysql/mysql.conf.d/mysqld.cnf

# mysql > show variables like "%char%";
#+--------------------------+----------------------------+
#| Variable_name            | Value                      |
#+--------------------------+----------------------------+
#| character_set_client     | utf8                       |
#| character_set_connection | utf8                       |
#| character_set_database   | utf8                       |
#| character_set_filesystem | binary                     |
#| character_set_results    | utf8                       |
#| character_set_server     | utf8                       |
#| character_set_system     | utf8                       |
#| character_sets_dir       | /usr/share/mysql/charsets/ |
#+--------------------------+----------------------------+


# mysql > CREATE USER 'appuser'@'%' IDENTIFIED BY '123456';
# mysql > GRANT SELECT,INSERT,UPDATE,DELETE,[CREATE,DROP] on zencart.* to appuser@'%';
# mysql > flush privileges;

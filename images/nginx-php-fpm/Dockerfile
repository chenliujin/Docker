FROM registry.chenliujin.com/nginx:1.12.1 

MAINTAINER liujin.chen <liujin.chen@qq.com>

RUN yum update -y && \
    yum install -y http://rpms.famillecollet.com/enterprise/remi-release-7.rpm && \
    yum install -y --enablerepo=remi,remi-php56 \
	php \
	php-fpm \
	php-pdo \
	php-mysqlnd \
	php-mcrypt \
	php-mbstring \
	php-redis \
	php-gearman \
	php-pecl-apcu\
	php-gd && \
    yum erase -y remi-release && \
    yum clean all

RUN systemctl enable php-fpm

COPY ./etc/php.ini /etc/php.ini

VOLUME ["/var/log/php-fpm"]

FROM chenliujin/nginx 

MAINTAINER liujin.chen <liujin.chen@qq.com>

RUN yum install -y http://rpms.famillecollet.com/enterprise/remi-release-7.rpm;
RUN yum install -y --enablerepo=remi,remi-php56 php php-fpm php-pdo php-mysqlnd php-mcrypt php-mbstring php-redis php-gearman php-pecl-apcu;
RUN yum clean all;

RUN systemctl enable php-fpm

COPY ./etc/php.ini 	/etc/php.ini

VOLUME /var/log/php-fpm

EXPOSE 80 443

CMD ["/usr/sbin/init"]

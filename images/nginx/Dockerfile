FROM centos:latest 

MAINTAINER liujin.chen <liujin.chen@qq.com>

ENV container docker

RUN yum install -y epel-release;
RUN yum install -y nginx;
RUN yum clean all;

RUN systemctl enable nginx;

RUN echo "alias ll='ls -alF'" >> ~/.bashrc

COPY ./etc/nginx/nginx.conf		/etc/nginx/
COPY ./etc/nginx/conf.d/default.conf 	/etc/nginx/conf.d/

VOLUME /var/log/nginx

EXPOSE 80 443

CMD ["/usr/sbin/init"]

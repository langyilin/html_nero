FROM Ubuntu:14.04
MAINTAINER Chris Chan "416739124@qq.com"

RUN apt-get -y update && apt-get install -y nginx
RUN mkdir -p /var/www/

ADD html /var/www/

ADD nginx/my.cnf /etc/nginx/conf.d/

EXPOSE 80

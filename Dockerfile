FROM ubuntu:14.04
MAINTAINER Chris Chan "416739124@qq.com"

RUN apt-get -y update && apt-get install -y nginx
RUN mkdir -p /var/www/html
ADD html /var/www/html
ADD nginx/my.cnf /etc/nginx/conf.d/

EXPOSE 80


CMD ["service nginx start"]

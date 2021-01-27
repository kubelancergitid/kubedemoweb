FROM ubuntu:18.04
MAINTAINER Kubelancer connect@kubelancer.com
RUN apt-get update; apt-get install apache2 -y
WORKDIR /var/www/html
COPY index.html /var/www/html/
EXPOSE 80
CMD /usr/sbin/apache2ctl -D FOREGROUND


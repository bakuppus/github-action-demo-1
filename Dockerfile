FROM ubuntu:18.04
MAINTAINER bala@kubelancer.com
RUN apt-get update; apt-get install apache2 -y
WORKDIR /var/www/html
RUN echo "Branch : Deploy To Develop" > /var/www/html/index.html
EXPOSE 80
CMD /usr/sbin/apache2ctl -D FOREGROUND

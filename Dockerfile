FROM ubuntu:20.04

RUN apt update
RUN apt upgrade -y
RUN apt install -y nginx

ENV TZ=Asia/Karachi
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt install -y php7.4 php7.4-fpm

COPY default /etc/nginx/sites-enabled/
COPY ./age-calculator /var/www/html/

EXPOSE 80

CMD service php7.4-fpm start && nginx -g "daemon off;"

FROM nginx:latest   
#COPY ./default /etc/nginx/sites-enabled/
COPY ./default.conf /etc/nginx/conf.d/default.conf
#COPY ./age-calculator /var/www/html/
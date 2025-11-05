FROM php:8.1-apache
COPY . /var/www/html/
WORKDIR /var/www/html
EXPOSE 80


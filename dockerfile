FROM php:7.4-apache

RUN docker-php-ext-install pdo pdo_mysql mysqli

WORKDIR /var/www/html

RUN chmod -R 777 images
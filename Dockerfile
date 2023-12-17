FROM php:7.4-apache

RUN docker-php-ext-install pdo pdo_mysql mysqli

WORKDIR /var/www/html

# Install FPDF
RUN apt-get update && \
    apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev unzip && \
    docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install -j$(nproc) gd

RUN curl -LJO https://github.com/setasign/FPDF/archive/master.zip && \
    unzip FPDF-master.zip && \
    rm FPDF-master.zip && \
    mv FPDF-master /var/www/html/FPDF
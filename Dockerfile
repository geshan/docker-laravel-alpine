FROM geshan/php-composer-alpine:latest

Maintainer Geshan Manandhar <geshan.com.np>

RUN apk --update add php-mysql php-pdo_mysql php-mcrypt php-ctype php-xml python && rm /var/cache/apk/*

COPY config/zzz-custom.ini /etc/php/conf.d/

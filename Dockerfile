FROM geshan/php-composer-alpine:latest

Maintainer Geshan Manandhar <geshan.com.np>

RUN apk --update add php-mysql php-pdo_mysql php-mcrypt php-ctype php-xml python &&\
    apk add php-xdebug --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted &&\
    rm /var/cache/apk/*

COPY config/zzz-custom.ini /etc/php/conf.d/
COPY config/xdebug.ini /etc/php/conf.d/

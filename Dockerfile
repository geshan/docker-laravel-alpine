FROM geshan/php-composer-alpine:latest

Maintainer Geshan Manandhar <geshan.com.np>

RUN apk --update add php-mysql php-pdo_mysql php-mcrypt php-ctype python && rm /var/cache/apk/*

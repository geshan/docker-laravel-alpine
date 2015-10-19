FROM geshan/php-composer-alpine:latest

Maintainer Geshan Manandhar <geshan@gmail.com>

RUN apk --update add php-mysql php-pdo_mysql php-mcrypt php-ctype


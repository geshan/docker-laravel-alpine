FROM geshan/php-composer-alpine:latest

Maintainer Geshan Manandhar <geshan.com.np>

RUN apk --update add php-mysql php-pdo_mysql php-pdo_sqlite php-mcrypt php-ctype php-sqlite3 php-xml python && rm /var/cache/apk/*

COPY config/zzz-custom.ini /etc/php/conf.d/

ENTRYPOINT ["/bin/sh", "-c"]


## Docker Container for Laravel 5.x with PHP7

This is a docker container for Laravel 5.x with composer installed.
[Alpine Linux](https://hub.docker.com/_/alpine/) base image its very small at `~75 MB`.
This image is made for running tests for laravel not serving it over a web servicer like Nginx. It is primarily being used to run unit tests on [Wercker](http://wercker.com/).

[![](https://badge.imagelayers.io/geshan/laravel-alpine:latest.svg)](https://imagelayers.io/?images=geshan/laravel-alpine:latest 'Get your own badge on imagelayers.io')

## Pull it from docker registry

To pull the docker image you can do it with:

```
docker pull geshan/alpine-laravel:php7
```

## Usage

After pulling the image from docker registry, go into laravel project that has a composer.json.
Then run the following commands to run php or composer:

```
docker run -v $(pwd):/var/www geshan/laravel-alpine "composer install --prefer-dist"
```
Lets say if you are have PHPUnit in your composer.json, you can run the following commands
to run your tests:

```
docker run -v $(pwd):/var/www geshan/laravel-alpine "./vendor/bin/phpunit --version"
docker run -v $(pwd):/var/www geshan/laravel-alpine "./vendor/bin/phpunit"
```

## As base image

You can use it as a base image like below:

```
FROM geshan/laravel-alpine

//my docker image contents
```

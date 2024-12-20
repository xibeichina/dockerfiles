FROM php:7.1-fpm

RUN apt-get -y update \
    && export CFLAGS="$PHP_CFLAGS" CPPFLAGS="$PHP_CPPFLAGS" LDFLAGS="$PHP_LDFLAGS" \
    && apt-get install -y --no-install-recommends \
        zlib1g-dev \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        libmcrypt-dev \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean \
    && pecl install redis swoole \
    && docker-php-ext-enable redis swoole \
    && docker-php-ext-install -j$(nproc) exif sockets mysqli pcntl pdo_mysql shmop gd opcache mcrypt
WORKDIR /home/www/wxhf
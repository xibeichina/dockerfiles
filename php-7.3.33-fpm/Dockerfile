# 使用官方PHP 7.3 FPM镜像作为基础镜像
FROM php:7.3.33-fpm

# 安装依赖、PHP扩展、清理缓存，以减少镜像层和大小
RUN apt-get update && apt-get install -y \
        build-essential \
        libmagickcore-dev \
        libmagickwand-dev \
        imagemagick \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
        libzip-dev \
    && docker-php-ext-configure gd \
        --with-freetype-dir=/usr/include/ \
        --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd iconv pdo pdo_mysql opcache mbstring mysqli bcmath \
    && pecl install redis \
    && docker-php-ext-enable redis \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

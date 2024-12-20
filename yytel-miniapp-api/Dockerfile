FROM php:7.1-fpm

RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak \
    && echo 'deb http://mirrors.ustc.edu.cn/debian stable main contrib non-free' > /etc/apt/sources.list \
    && echo '# deb-src http://mirrors.ustc.edu.cn/debian stable main contrib non-free' >> /etc/apt/sources.list \
    && echo 'deb http://mirrors.ustc.edu.cn/debian stable-updates main contrib non-free' >> /etc/apt/sources.list \
    && echo '# deb-src http://mirrors.ustc.edu.cn/debian stable-updates main contrib non-free' >> /etc/apt/sources.list \
    && echo '# deb http://mirrors.ustc.edu.cn/debian stable-proposed-updates main contrib non-free' >> /etc/apt/sources.list \
    && echo '# deb-src http://mirrors.ustc.edu.cn/debian stable-proposed-updates main contrib non-free' >> /etc/apt/sources.list \
    && apt-get -y update \
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
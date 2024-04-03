FROM phpswoole/swoole:4.4.16-php7.3

# 更新软件包并安装 PHP 扩展，清理缓存
RUN set -ex \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
    && docker-php-ext-install -j$(nproc) bcmath \
    && apt-get clean \
    && ls \
    && rm -rf /var/lib/apt/lists/*


# 更新 Composer 并设置阿里云镜像源
RUN composer self-update && composer config -g repo.packagist composer https://mirrors.aliyun.com/composer/

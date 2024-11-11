docker run -d \
  --name redis-server \
  -p 16379:6379 \
  -v /home/www/docker/redis/data:/data \
  --restart unless-stopped \
  registry.cn-beijing.aliyuncs.com/gaogao/redis:5.0.9 \
  redis-server --requirepass "pwd2024" --appendonly yes
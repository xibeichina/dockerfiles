docker run \
  --name nginx-01 \
  -v "$(pwd):/usr/share/nginx/html" \
  -p 85:80 \
  -d \
  registry.cn-beijing.aliyuncs.com/gaogao/nginx:1.27.2
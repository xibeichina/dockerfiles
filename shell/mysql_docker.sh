docker run -d \
  --name mysql-server \
  -p 13306:3306 \
  -v /home/www/docker/mysql/data:/var/lib/mysql \
  -v /home/www/docker/mysql/log:/var/log/mysql \
  -e MYSQL_ROOT_PASSWORD="pwd2024" \
  -e MYSQL_ROOT_HOST=% \
  --restart unless-stopped \
  registry.cn-beijing.aliyuncs.com/gaogao/mysql:8.0 \
  --skip-name-resolve \
  --sql-mode="STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION" \
  --default-authentication-plugin=mysql_native_password \
  --general-log=1 \
  --general-log-file=/var/log/mysql/mysql.log \
  --default-time-zone='+8:00' \
  --bind-address=0.0.0.0

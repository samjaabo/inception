#!bin/bash
service mariadb start

sleep 15

echo "CREATE DATABASE IF NOT EXISTS $SQL_DATABASE;" | mysql

echo "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' identified by '$MYSQL_PASSWORD';" | mysql

echo "GRANT ALL PRIVILEGES ON $SQL_DATABASE.* TO '$MYSQL_USER'@'%' ;" | mysql

echo "FLUSH PRIVILEGES;" | mysql

service mariadb stop

mysqld_safe
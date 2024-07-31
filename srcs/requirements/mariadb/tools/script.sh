#!bin/bash
 echo "hi"

service mariadb start

sleep 5

echo "CREATE DATABASE IF NOT EXISTS $SQL_DATABASE;" > file

echo "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' identified by '$MYSQL_PASSWORD';" >> file

echo "GRANT ALL PRIVILEGES ON $SQL_DATABASE.* TO '$MYSQL_USER'@'%' ;" >> file

echo "FLUSH PRIVILEGES;" >> file

mysql  < file

service mariadb stop

mysqld_safe
#!bin/sh
cd /var/www/html

sleep 6

if [ ! -f "wp-config.php" ]; then

wp core download --path=/var/www/html --allow-root

wp config create	--allow-root --dbname=$SQL_DATABASE --dbuser=$MYSQL_USER \
	--dbpass=$MYSQL_PASSWORD --dbhost=mariadb:3306 --path='/var/www/html'

wp core install --url=$DOMAIN_NAME/ --title=$WP_TITLE --admin_user=$WP_ADMIN_USR \
	--admin_password=$WP_ADMIN_PWD --admin_email=$WP_ADMIN_EMAIL --allow-root

wp user create  --allow-root $USER $EMAIL --user_pass=$PASSWORD --path='/var/www/html'

fi

mkdir -p /run/php

php-fpm7.4 -F
#!/bin/bash
sleep 10
mkdir -p /run/php

if ! wp core is-installed --allow-root --path=/var/www/html > /dev/null 2>&1 ; then
	wp core download --path=/var/www/html --allow-root
	mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

	wp config set DB_NAME $SQL_DATABASE --allow-root --path='/var/www/html'
	wp config set DB_USER $MYSQL_USER --allow-root --path='/var/www/html'
	wp config set DB_PASSWORD $MYSQL_PASSWORD --allow-root --path='/var/www/html'
	wp config set DB_HOST 'mariadb:3306' --allow-root --path='/var/www/html'

	echo "my-logs: wp core download"

	wp core install --allow-root \
	--url=$DOMAIN_NAME \
	--title=$WP_TITLE \
	--admin_user=$WP_ADMIN_USR \
	--admin_password=$WP_ADMIN_PWD \
    --admin_email=$WP_ADMIN_EMAIL \
	--path='/var/www/html'

	echo "my-logs: wp core install"

	wp user create $USER $EMAIL --role=author --user_pass=$PASSWORD --allow-root --path=/var/www/html

	echo "my-logs: wp user create"

fi

# create user if not exist
# if ! wp user get $USER --field=user_login --allow-root --path=/var/www/html > /dev/null 2>&1 ; then
	
# 	echo "my-logs: wp user create"
# fi





php-fpm7.4 -F
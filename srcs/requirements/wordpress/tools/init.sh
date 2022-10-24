#!/bin/sh

if [ ! -f "/var/www/wordpress/wp-config.php" ]; then
	cd /var/www/wordpress
	wp core download --allow-root&& \
	wp config create --dbname=Data --dbuser=yson --dbpass=password --dbhost=mariadb --allow-root
	wp core install --url=yson.42.fr --title=yson_inception --admin_user=root --admin_password=0000 --admin_email=yson@student.42seoul.kr --skip-email --allow-root && \
	wp user create yson yson@student.42seoul.kr --role=author --user_pass=0000 --allow-root && \
	wp plugin update --all --allow-root
fi

exec ./usr/sbin/php-fpm7.3 -F

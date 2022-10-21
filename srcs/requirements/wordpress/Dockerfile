# FROM debian:buster

# RUN apt-get update

# RUN apt-get -y install php7.3 php-mysqli php-fpm mariadb-client

# COPY ./tools/wp-config.php ./var/www/wordpress/

# CMD ./usr/sbin/php-fpm7.3 -F

FROM debian:buster

RUN apt-get update && apt-get -y install php7.3 php-mysqli php-fpm mariadb-client curl
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
			chmod 755 wp-cli.phar && \
			mv wp-cli.phar /usr/local/bin/wp && \
			mkdir -p /var/www/wordpress && chmod -R 755 /var/www/wordpress

RUN wp --allow-root --path='/var/www/wordpress' core download
COPY tools/wp-config.php /var/www/wordpress/

CMD ./usr/sbin/php-fpm7.3 -F
# RUN wp --allow-root config create --dbname=$DATABASE --dbuser=$NAME --dbpass=password --dbhost=$DB_HOST --path='/var/www/wordpress'
# RUN wp --allow-root config create --dbname=Data --dbuser=yson --dbpass=password --dbhost=mariadb --path='/var/www/wordpress'
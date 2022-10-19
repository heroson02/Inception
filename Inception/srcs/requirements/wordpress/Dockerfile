FROM debian:buster

RUN apt-get update

RUN apt-get -y install php7.3 php-mysqli php-fpm mariadb-client
COPY ./tools/www.conf /etc/php/7.3/fpm/pool.d

ADD https://wordpress.org/wordpress-6.0.2.tar.gz /var/www/wordpress-6.0.2.tar.gz
RUN cd /var/www && tar -xzvf wordpress-6.0.2.tar.gz
RUN rm -f /var/www/wordpress-6.0.2.tar.gz
RUN rm -f /var/www/wordpress/wp-config-sample.php
COPY ./tools/wp-config.php ./var/www/wordpress/

RUN mkdir ./run/php/
CMD ./usr/sbin/php-fpm7.3 -F

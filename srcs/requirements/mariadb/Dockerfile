FROM debian:buster

RUN apt-get update && apt-get -y install mariadb-server
RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
COPY tools/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY tools/data.sql /
# RUN service mysql start && mysql -u root mysql < data.sql
RUN service mysql start && mysql < /data.sql
RUN rm -rf /data.sql
# RUN mkdir -p /var/run/mysqld && chmod -R 777 /var/run/mysqld && chmod -R mysql:mysql /var/run/mysqld
# RUN mkdir -p /run/php && chown mysql /run/php && chgrp mysql /run/php
CMD /usr/bin/mysqld_safe
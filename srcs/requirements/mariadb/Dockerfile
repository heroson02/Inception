FROM debian:buster

RUN apt-get update && apt-get -y install mariadb-server
RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
COPY tools/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306
COPY tools/data.sql /data.sql
RUN service mysql start && mysql -u root mysql < data.sql
RUN rm -rf data.sql
RUN cd /run && mkdir php && chown mysql php && chgrp mysql php
RUN mkdir -p /run/php/
CMD /usr/bin/mysqld_safe
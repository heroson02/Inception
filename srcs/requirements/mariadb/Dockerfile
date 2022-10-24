FROM debian:buster

RUN apt-get update && apt-get -y install mariadb-server mariadb-client
RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY tools/data.sql /
RUN service mysql start && mysql < /data.sql
RUN rm -rf /data.sql
CMD /usr/bin/mysqld_safe
EXPOSE 3306
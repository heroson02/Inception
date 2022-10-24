FROM debian:buster

RUN apt-get update && apt-get -y install mariadb-server mariadb-client
RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# COPY tools/data.sql /
COPY tools/init_mariadb.sh /
# RUN service mysql start && mysql < /data.sql
# RUN rm -rf /data.sql

EXPOSE 3306
ENTRYPOINT [ "sh", "init_mariadb.sh" ]
CMD /usr/bin/mysqld_safe
FROM debian:bullseye

RUN apt-get update
RUN apt-get install -y mariadb-server

EXPOSE 3306

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/mariadb_startup.sql /var/www/

RUN service mariadb start && mariadb < /var/www/mariadb_startup.sql && rm -f /var/www/mariadb_startup.sql

#HEALTHCHECK --interval=5m --timeout=30s --start-period=5s --retries=3 \
#    CMD mariadb -e 'SELECT @@datadir;' || exit 1

CMD ["mysqld"]
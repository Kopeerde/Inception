FROM alpine:3.17.3

RUN apk update
RUN apk add mariadb mariadb-client



RUN mkdir /var/run/mysqld; \
    chmod 777 /var/run/mysqld; \
    { echo '[mysqld]'; \
      echo 'skip-host-cache'; \
      echo 'skip-name-resolve'; \
      echo 'bind-address=0.0.0.0'; \
    } | tee  /etc/my.cnf.d/docker.cnf; \
    sed -i "s|skip-networking|skip-networking=0|g" \
      /etc/my.cnf.d/mariadb-server.cnf
RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql

EXPOSE 3306

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/mariadb_startup.sh /var/www/

RUN sh /var/www/mariadb_startup.sh && rm -f /var/www/mariadb_startup.sh

#HEALTHCHECK --interval=5m --timeout=30s --start-period=5s --retries=3 \
#    CMD mariadb -e 'SELECT @@datadir;' || exit 1

USER mysql

CMD ["mysqld"]
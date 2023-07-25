FROM alpine:3.17.3

RUN apk update
RUN apk add mariadb

EXPOSE 3306

COPY ./conf/default.cnf /etc/mysql/default.cnf



HEALTHCHECK --interval=5m --timeout=30s --start-period=5s --retries=3 \
    CMD mariadb -e 'SELECT @@datadir;' || exit 1

CMD ["mysqld"]
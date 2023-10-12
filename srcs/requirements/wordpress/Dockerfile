FROM debian:buster

RUN apt-get update
RUN apt-get -y install wget php7.3 php-phar php-fpm php-mysqli

COPY ./tools /var/www/

RUN chmod +x /var/www/wordpress.sh

EXPOSE 9000

ENTRYPOINT ["/var/www/wordpress.sh"]

CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
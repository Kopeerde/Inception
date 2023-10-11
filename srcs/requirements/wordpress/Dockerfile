FROM debian:buster

RUN apt-get update
RUN apt-get install php8.1 php-phar php-fpm php-mysqli

COPY ./tools /var/www/

RUN chmod +x /var/www/wordpress.sh

EXPOSE 9000

ENTRYPOINT ["/var/www/wordpress.sh"]

CMD ["/usr/sbin/php8.1-fpm", "--nodaemonize"]
FROM alpine:3.17.3

RUN apk update
RUN apk add php-fpm

COPY ./tools /var/www

RUN chmod +x /var/www/wordpress.sh

EXPOSE 9000

ENTRYPOINT ["/var/www/wordpress.sh"]

CMD ["", ""]
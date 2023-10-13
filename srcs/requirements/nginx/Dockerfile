FROM debian:bullseye

RUN apt-get update
RUN apt-get install -y nginx openssl

EXPOSE 443

COPY ./conf/nginx.conf /etc/nginx/sites-enabled/default
COPY ./tools/nginx_startup.sh /var/www

RUN chmod +x /var/www/nginx_startup.sh

#HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
#    CMD wget -q --spider http://kmendes-.42.fr || exit 1

ENTRYPOINT [ "var/www/nginx_startup.sh" ]

CMD [ "nginx", "-g", "daemon off;" ]
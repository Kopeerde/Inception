#!bin/sh

echo "Starting Wordpress."

sed -i "s/listen = \/run\/php\/php7.4-fpm.sock/listen = 9000/" "etc/php/7.4/fpm/pool.d/www.conf";
chown -R www-data:www-data /var/www/*;
chown -R 775 /var/www/*;
mkdir -p /run/php/;
touch /run/php/php7.4-fpm.pid;
mv /var/www/html/wp-config.php /var/www/wp-config.php

if [ ! -f /var/www/html/wp-config.php ]; then
	echo "test entering if wordpress.sh"
	mkdir -p /var/www/html
	cd /usr/local/bin
	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;
	chmod +x wp-cli.phar;
	mv ./wp-cli.phar /usr/local/bin/wp;
	cd /var/www/html;
	wp core download --allow-root;
	mv /var/www/wp-config.php /var/www/html/
#	wp core config --allow-root --dbhost=<host.db> --dbname=<prefix_db> --dbuser=<username> --dbpass=<password>;
	wp core install --allow-root --url={WP_URL} --title=${WP_TITLE} --admin_name=${WP_ADMIN_LOGIN} --admin_password=${WP_ADMIN_PASSWORD} --admin_email=${WP_ADMIN_EMAIL};
	wp user create --allow-root ${WP_USER_LOGIN} ${WP_USER_EMAIL} --user_pass=${WP_USER_PASSWORD};
fi

echo "Finished Wordpress setup."

chmod -R 0777 /var/www/html/wp-content/

exec "$@"
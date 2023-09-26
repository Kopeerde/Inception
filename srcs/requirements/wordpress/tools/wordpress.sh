#!bin/sh

echo "Starting Wordpress."

#chown -R www-data:www-data /var/www/*;
chown -R 775 /var/www/*;
mkdir -p /run/php;
touch /run/php/php-fpm.pid;

if [ ! -f /var/www/html/wp-config.php ]; then
	echo `php --version`
	echo ''
	mkdir -p /var/www/html
	cd /usr/local/bin
	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;
	chmod +x wp-cli.phar;
	mv ./wp-cli.phar ./wp;
	cd /var/www/html;
	wp core download --allow-root;
	mv /var/www/wp-config.php /var/www/html
#	wp core config --allow-root --dbhost=<host.db> --dbname=<prefix_db> --dbuser=<username> --dbpass=<password>;
	wp core install --allow-root --url={WP_URL} --title=${WP_TITLE} --admin-name=${WP_ADMIN_LOGIN} --admin_password=${WP_ADMIN_PASSWORD} --admin-email=${WP_ADMIN_EMAIL};
	wp user create --allow-root ${WP_USER_LOGIN} ${WP_USER_EMAIL} --user_pass=${WP_USER_PASSWORD};
fi

echo "Finished Wordpress setup."

chmod -R 0777 /var/www/html/wp-content/

exec "$@"
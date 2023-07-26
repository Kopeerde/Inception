#!bin/sh

echo "Starting Wordpress."

if [! -f /var/www/html/wp-config.php]

	mkdir -p /var/www/html
	cd /usr/local/bin
	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	chmod +x wp-cli.phar
	mv wp-cli.phar wp
	cd /var/www/html
	wp core download
	wp core config --dbhost=<host.db> --dbname=<prefix_db> --dbuser=<username> --dbpass=<password>
	wp core install --url=kmendes-.42.fr --title="Inception" --admin-name=<wordpress_admin> --admin_password=<password> --admin_email=<email>

fi

echo "Finished Wordpress setup."

exec "$@"
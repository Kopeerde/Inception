#!bin/sh

echo "Starting nginx web server engine proxy and openssl."

# -f meaning file, -d for directories
if [[ ! -f "/etc/ssl/certs/nginx.crt" || ! -f "/etc/ssl/private/nginx.key" ]]; then

	echo "Generating private and public SSL keys."

	openssl req -new -newkey rsa:2048 -nodes \
		-keyout /etc/ssl/private/nginx.key -out /etc/ssl/certs/nginx.crt \
		-subj "/C=FR/ST=Paris/L=Paris/CN=www.kmendes-.42.fr"

	echo "Keys have been generated."

fi

echo "nginx and ssl are set up."

exec "$@"
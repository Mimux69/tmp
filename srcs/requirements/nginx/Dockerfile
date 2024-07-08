FROM	debian:bullseye

RUN		apt update && apt upgrade -y && apt install -y \
		nginx

COPY	default etc/nginx/nginx.conf

RUN		mkdir -p /var/www/html
RUN		chown -R www-data:www-data /var/www/html
RUN		chmod -R 755 /var/www/html

EXPOSE	8080

CMD		["nginx", "-g", "daemon off;"]
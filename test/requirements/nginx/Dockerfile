FROM	debian:latest

RUN		apt update && apt upgrade && apt install -y \
		nginx

# COPY	default /etc/nginx/sites-available/.
COPY default etc/nginx/nginx.conf

RUN mkdir -p /var/www/html
RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 755 /var/www/html

CMD		["nginx", "-g", "daemon off;"]
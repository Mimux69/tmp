FROM	debian:latest

RUN		apt update && apt upgrade && apt install -y \
		nginx

COPY	default	/etc/nginx/site-available/.

RUN		chmod 777 /etc/nginx/site-available/default

# ADD		docker/nginx.conf	/etc/nginx/nginx.conf \
		# docker/www/			/var/www/

EXPOSE	8080

CMD		["nginx", "-g", "daemon off;"]
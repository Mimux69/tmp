FROM	debian:bullseye

RUN		apt update && apt upgrade && apt install -y \
		php7.4-fpm \
		php

RUN		mkdir /run/php -p

COPY	www.conf	/etc/php/7.4/fpm/pool.d/.
# RUN		chmod 777 /etc/php/7.4/fpm/pool.d/www.conf

EXPOSE	9000

# -F = run un background and ignore daemonize option for conf
CMD	["php-fpm7.4", "-F"]
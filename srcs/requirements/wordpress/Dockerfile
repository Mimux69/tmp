FROM	debian:bullseye

RUN		apt update && apt upgrade -y && apt install -y \
		php7.4-fpm \
		php-mysqli \
		curl

RUN		mkdir /run/php

COPY	www.conf /etc/php/7.4/fpm/pool.d/.
COPY	script.sh .
RUN		chmod +x script.sh

EXPOSE	9000

CMD		["./script.sh"]

# CMD	["php-fpm7.4", "-F"]
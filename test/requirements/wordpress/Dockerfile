FROM	debian:bullseye

RUN		apt update && apt upgrade && apt install -y \
		php7.4-fpm \
		php

RUN		mkdir /run/php

COPY	www.conf /etc/php/7.4/fpm/pool.d/.

# EXPOSE	9000

CMD	["php-fpm7.4", "-F"]
FROM	debian:bullseye

RUN		apt update && apt upgrade -y && apt install -y \
		mariadb-server

COPY	50-server.cnf /etc/mysql/mariadb.conf.d/.
# COPY	init.sql	/etc/mysql/init.sql

RUN		mkdir /run/mysqld
RUN		chown -R mysql:mysql /var/run/mysqld
RUN		chmod 755 /var/run/mysqld

COPY	script.sh .
RUN		chmod +x ./script.sh

CMD		["sh", "script.sh"]
FROM	debian:latest

RUN		apt-get update && apt-get -y upgrade \
		apt-get install -y mariadb-server

ADD		tools/my.cnf	/etx/mysql/my.cnf

EXPOSE	3306

CMD		["mysql"]
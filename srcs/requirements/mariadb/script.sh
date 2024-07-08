#!/bin/bash

if [ -e "/var/lib/mysql/config-done.log" ]
then
    echo "Database already set\n"
else
    service mariadb start

    sleep 3

    mysql -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};"
    mysql -e "CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASS}';"
    mysql -e "GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASS}';"
    mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';"
    mysql -e "FLUSH PRIVILEGES;"

    sleep 1

    mysqladmin -u root shutdown

    touch /var/lib/mysql/config-done.log
fi

exec mysqld
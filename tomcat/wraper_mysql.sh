#!/bin/bash

PATH=$(cat /var/log/mysqld.log | grep "A temporary password" | awk '{print $11}')
export MYSQL_HOST="localhost"
export MYSQL_PWD="$PATH"


/usr/bin/mysql -u root --connect-expired-password -e "ALTER USER 'root'@'localhost' IDENTIFIED BY ';jgjXrf500';"

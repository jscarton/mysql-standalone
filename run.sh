docker run --name=services-mysql -p4306:3306 -v mysql-volume:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=1234 -d mysql/mysql-server:5.7.19

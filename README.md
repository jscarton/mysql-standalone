# Running an standalone MYSQL docker container

## Steps to setup

### Pre-requisites

You must have docker installed and running on your system. The run.sh script uses the same image as Omuras sandy-mysql container for compatibility

### Create a volume for mysql database
```
docker volume create mysql-volume
```

### Start your mysql database with the run.sh script
```
bash run.sh
```

### Connect to your MYSQL database with the connect.sh
```
bash connect.sh
```

### One time setup for external Clients

If you want to connect outside of docker to your new MYSQL database please follow these steps
```
bash-4.2# mysql -u root -p
Enter password:
...
```

password is *1234* but you can change it in the run.sh script if you want to do it.


By default, MySQL restricts connection other than the local machine (here Docker container) for security reasons. So, to connect from the local machine, you have to change the connection restriction:
```
mysql> update mysql.user set host = ‘%’ where user=’root’;
Query OK, 1 row affected (0.02 sec)
```

and then flush the privileges
```
mysql> FLUSH PRIVILEGES;
```

 now, you should be able to connect to your local MYSQL Service from outside of docker container

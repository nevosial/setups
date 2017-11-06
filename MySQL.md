#### MySQL

1. Using MySQL with docker.

> $ docker pull mysql:latest

2. Run the container with additional env parameters.

> $ docker run -d   --name mysqldb --env="MYSQL_ROOT_PASSWORD=passwd" mysql:latest

![mySQL container](https://github.com/nevosial/setups/blob/master/images/mysqldb.png?raw=true "MySQL container")


3. Shell into it or use the mysql-workbench to connect.

> docker exec -it mysqldb ./bin/bash  

4. Once in the shell connect to the mysql client
 
> mysql -uroot -p(pwd) 

![mySQL container shell](https://github.com/nevosial/setups/blob/master/images/mysqldbshell.png?raw=true "MySQL container shell")

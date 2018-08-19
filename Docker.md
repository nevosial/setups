

### Quick Reference for Docker.  (Ubuntu 16+)


#### Check docker service status and version.

` docker version`
` docker info`

` sudo systemctl status docker`

- Start/Restart the service

`sudo systemctl start docker`

`sudo systemctl restart docker`

- Check logs from the docker daemon

`journalctl -u docker.service`

#### List all images.

` docker images`


#### Build and image
  `docker build --tag <image_name>:<tag> <location_of_Dockerfile>`


#### Create container.

`docker run -d -p <hostPort>:<containerPort> -t <imagename>`
  
Example:

`docker run -d --name mysqldb -p 3306:3306 -e MYSQL_ROOT_PASSWORD=abc123 mysql:latest`

#### Inspect container.

`docker inspect <ContainerName>`

In order to get the ip address only:

`docker inspect mysqldb | grep IPAddress`


#### SSH into container.

`docker exec -it <ContainerName> /bin/bash`

Either use MWB or shell to connect:

`# mysql -u <USERNAME> -p`
 `#Enter Password : <PASSWORD>`
 
 Once connected,
 
 `mysql> show databases;`
 `mysql> use <DBNAME>`


#### Link two or more containers.

`docker run --name <LocalContainerName> 
  --link <LocalContainerName>:ActualContainerName
  -p <hostport>:<ContainerPort>
  <ImageName>`
  
Example:

1. Simple Go app listening on 3001 with a mongo backend linked to 27018

`docker run -d --name goapi
    --link mongodb:mongo
    -p 3001:3000
    -p 27018:27017
    goapi`

Frontend is wordpress blog with a mysql as the backend DB. the blog is available at localhost:8080

`docker run -d --name wordpressBlog
    --link mysqldb:mysql
    -p 8080:80
    wordpress`
    

#### List running containers.

`docker ps -a --format 'table {{.ID}} \t {{.Names}} \t {{.Status}} \t {{.Ports}}'`

Can also create an export file such as,

`export FORMAT="table {{.ID}} \t {{.Names}} \t {{.Status}} \t {{.Ports}}"`

`Then use: $ docker ps --format="$FORMAT"`

Can also create a temporary alias (for current terminal session only)

`$ alias dps="docker ps -a --format 'table {{.ID}} \t {{.Names}} \t {{.Status}} \t {{.Ports}}'"`


#### Start/Stop container.

`docker stop <container_name>`

`docker start <container_name>`

#### Remove container/images.

`docker rm <ContainerName>`
  
`docker rmi <ImageID>`
  





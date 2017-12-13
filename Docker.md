#### Quick Reference for Docker.  (Ubuntu 16+)

##### Check docker service status and version.

> docker version

> sudo systemctl status docker

Start/Restart the service

> sudo systemctl start docker

> sudo systemctl restart docker

Check logs from the docker daemon.

> journalctl -u docker.service

##### List all images.

> docker images


##### List running containers.

> docker ps -a --format 'table {{.ID}} \t {{.Names}} \t {{.Status}} \t {{.Ports}}'

Can also create an export file such as,

> export FORMAT="table {{.ID}} \t {{.Names}} \t {{.Status}} \t {{.Ports}}"

>// Then use: $ docker ps --format="$FORMAT"

Can also create a temporary alias (for current terminal session only)

> $ alias dps="docker ps -a --format 'table {{.ID}} \t {{.Names}} \t {{.Status}} \t {{.Ports}}'"


##### Stop container.
##### Remove container.
##### Remove images.
##### Create new containers.

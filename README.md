# Docker Util

## Make it command
```bash
$ cp drun.sh  /usr/local/bin/drun
$ cp de.sh  /usr/local/bin/de
$ chmod a+x /usr/local/bin/drun
$ chmod a+x /usr/local/bin/de
```

## Using
### docker exec
`docker exec -it [name] /bin/bash`

```bash
$ de [name]
```

### docker run
`docker run --name [name] -h [name] --volumes-from mysql_data --link mysql:mysql -v [mounting port]:/var/www/html/app -d -p [port]:80 --privileged [image] /sbin/init`

```bash
$ drun [name] [port] [image] <option>[mounting port]
````

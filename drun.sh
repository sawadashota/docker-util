#!/bin/bash

if [ $# = 3 ]; then
  docker run --name $1 -h $1 --volumes-from mysql_data --link mysql:mysql -d -p $2:80 --privileged $3 /sbin/init
  exit
fi


if [ $# = 4 ]; then
  docker run --name $1 -h $1 --volumes-from mysql_data --link mysql:mysql -v $4:/var/www/html/app -d -p $2:80 --privileged $3 /sbin/init
  exit
fi

echo $'\n\e[33m<docker run> was faild. \e[m'
echo $'\e[33mdrun [name] [port] [image] <option>[mounting path]\e[m\n'
exit

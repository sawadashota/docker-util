#!/bin/bash

if [ $# -ne 1 ]; then
  echo $'\n\e[33mコンテナ名を引数に与えてください。\e[m\n'
  exit
fi

docker exec -it $1 /bin/bash
exit

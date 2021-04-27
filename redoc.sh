#!/bin/bash

SRC=/var/www/html

if [ "$1" = "build" ]
then 
    sudo docker run -d -p 88:80 -v $SRC:/usr/share/nginx/html/swagger/ -e SPEC_URL=swagger/openapi.yaml --name ReDoc  redocly/redoc

elif [ "$1" = "start" ]
then
    sudo docker start ReDoc

elif [ "$1" = "restart" ]
then
    sudo docker restart ReDoc

elif [ "$1" = "stop" ]
then
    sudo docker stop ReDoc

else
    echo 'Please Input parameter "build or start or stop"'
fi

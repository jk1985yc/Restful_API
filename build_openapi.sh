#!/bin/bash

SRC=/var/www/html

if [ "$1" = "build" ]
then 
    sudo docker run -v $SRC:/app -t tico/swagger-php /app --output openapi.yaml

else
    echo 'Please input parameter "build"'
fi

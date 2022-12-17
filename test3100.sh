#!/bin/bash


IMAGE_NAME=test$(date +"%Y%m%d%H%M%s")
any_port_id=3100

echo "curl -d '{}' http://localhost:$any_port_id/2015-03-31/functions/function/invocations"
docker build -t $IMAGE_NAME .
docker run -p $any_port_id:8080 $IMAGE_NAME 



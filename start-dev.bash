#!/bin/bash

until docker run --name development-server -v ./src:/usr/share/nginx/html:ro -dp8080:80 nginx
do
    sleep 1
done

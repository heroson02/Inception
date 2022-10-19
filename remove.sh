#!/bin/sh

docker stop $(docker ps -qa); docker rm $(docker ps -qa);
docker rmi -f $(docker images -qa); docker volume rm $(docker volume ls -q);
docker network rm $(docker network ls -q) 2>/dev/null
rm -rf /home/yson/data/wordpress/*
rm -rf /home/yson/data/mysql/*

# rm -rf /Users/yson/data/mariadb/*
# rm -rf /Users/yson/data/wordpress/*
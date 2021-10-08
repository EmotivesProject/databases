#!/bin/bash

echo Stopping containers
docker-compose -f postgres/docker-compose.yml down
docker-compose -f redis/docker-compose.yml down

#!/bin/bash

echo Stopping containers
docker-compose -f postgres/docker-compose.yml down -v
docker-compose -f redis/docker-compose.yml down -v

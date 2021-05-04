#!/bin/bash

echo Stopping containers
docker-compose -f postgres/docker-compose.yml down
docker-compose -f mongo/docker-compose.yml down
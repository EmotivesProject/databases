#!/bin/bash

echo Stopping containers
docker-compose -f postgres/docker-compose.yml down -v
docker-compose -f mongo/docker-compose.yml down -v
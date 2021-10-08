#!/bin/bash
# Meant to be ran from root directory

echo Starting postgres compose
docker-compose -f postgres/docker-compose.yml up -d

echo Starting redis compose
docker-compose -f redis/docker-compose.yml up -d

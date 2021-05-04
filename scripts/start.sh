#!/bin/bash
# Meant to be ran from root directory

echo Starting postgres compose
docker-compose -f postgres/docker-compose.yml up -d

echo Starting mongo compose
docker-compose -f mongo/docker-compose.yml up -d

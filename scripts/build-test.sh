#!/bin/bash

docker build -f postgres/Dockerfile.test -t ghcr.io/emotivesproject/postgres_db .

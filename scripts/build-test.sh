#!/bin/bash

docker build -f postgres/Dockerfile.test -t ghcr.io/tombowyerresearchproject/postgres_db .

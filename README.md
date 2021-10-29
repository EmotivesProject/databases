# databases
## Introduction
Repo that holds configuration of Redis and Postgres databases

Note: This is the only service that isn't automatically deployed. Meaning if any changes are merged, it will not be live if the service is already running. For changes on production, it will require update queries and or restart to services.

## Redis
Simple setup, just the compose

## Postgres
Holds multiple databases of each of the services.

Due to having the services split out and each having their own database, each database is simple.

Designs can be found in dbml, images built using [https://dbdiagram.io/](https://dbdiagram.io/)
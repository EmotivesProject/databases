.PHONY: test running

test:
	docker network create emotives || true
	./scripts/start.sh
	make running
	./scripts/destroy.sh
	docker network rm emotives

running:
	./scripts/is_running.sh postgres_db_1 || exit 1
	./scripts/is_running.sh mongo_db_1 || exit 1
	./scripts/is_running.sh redis_provider_1 || exit 1
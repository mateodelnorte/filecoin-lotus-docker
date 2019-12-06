build:
	docker build -t filecoin-lotus-docker_lotus .

build-no-cache:
	docker build --no-cache -t filecoin-lotus-docker_lotus .

down:
	docker-compose down

up: down
	docker-compose up
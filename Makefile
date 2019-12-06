build:
	docker build -t lotus-client .

build-no-cache:
	docker build --no-cache -t lotus-client .

down:
	docker-compose down

up: down
	docker-compose up
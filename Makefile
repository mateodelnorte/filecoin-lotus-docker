build:
	docker build -t lotus-client .

down:
	docker-compose down

up: down
	docker-compose up
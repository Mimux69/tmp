all: up

build:
	cd srcs && docker-compose build

up: build
	cd srcs && docker-compose up -d

down:
	cd srcs && docker-compose down

all: build run
	@echo "Run all the steps ..."

build:
	@echo "Build latest docker image in local now:"
	docker build -t local-caddy:latest .

run:
	@echo "Run latest docker in local now (port: 8080):"
	docker run --rm -p 8080:80 --name localcaddy local-caddy

clean:
	@echo "Stop the docker container ..."
	docker stop localcaddy
	@echo "Delete the docker image ..."
	docker rmi local-caddy:latest

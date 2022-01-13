all: build run
	@echo "Run all the steps ..."

build:
	@echo "Build latest docker image in local now:"
	docker build -t local-caddy:latest .

run:
	@echo "Run latest docker in local now (port: 8080):"
	docker run -d --rm -p 8080:80 --name localcaddy local-caddy
	@open http://localhost:8080/

stop:
	@echo "Stop the docker container ..."
	docker stop localcaddy

delete_image:
	@echo "Delete the docker image ..."
	docker rmi local-caddy:latest

clean: stop delete_image
	@echo "Cleaned ..."

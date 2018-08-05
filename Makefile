NAME = miso-example

.PHONY: all build clean docker run

all: build

build: build/
	docker build -f Dockerfile.build -t "$(NAME)-build" .
	docker container create --name extract "$(NAME)-build" .
	docker container cp extract:/out ./build/
	docker container rm -f extract

docker: build
	docker build -f Dockerfile -t "$(NAME)" .

run: build
	xdg-open "http://localhost:8080/"
	build/app

clean:
	docker rmi "$(NAME)-build"

build/:
	mkdir -p build/

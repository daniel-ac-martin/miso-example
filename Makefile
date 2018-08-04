.PHONY: all build clean deps dist-clean run

all: build

build: deps
	stack build --stack-yaml=server.stack.yaml
	stack build --stack-yaml=client.stack.yaml

deps:
	stack setup --stack-yaml=server.stack.yaml
	stack setup --stack-yaml=client.stack.yaml

run: build
	xdg-open $$(stack path --local-install-root)/bin/client.jsexe/index.html

clean:
	stack clean --stack-yaml=server.stack.yaml
	stack clean --stack-yaml=client.stack.yaml

dist-clean: clean
	rm -rf .stack-work/

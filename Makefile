.PHONY: all build clean deps run

all: build

build: deps
	stack build

deps:
	stack setup

run: build
	xdg-open $$(stack path --local-install-root)/bin/client.jsexe/index.html

clean:
	stack clean

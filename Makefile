.PHONY: all build clean deps

all: build

build: deps
	stack build

deps:
	stack setup

clean:
	stack clean

SHELL := /bin/bash
PATH := $(PATH):node_modules/.bin

.PHONY: clean build dev build-fresh lint lint-fix ensure
default: build

clean:
	rm -rf build

build:
	webpack-cli --progress

dev: 
	webpack-cli --progress --watch

build-fresh: clean build
	
lint:
	eslint .

lint-fix:
	eslint . --fix

ensure:
	npm install

serve:
	http-server ../
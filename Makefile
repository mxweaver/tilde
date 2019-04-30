#!/usr/bin/make -f
# (c) Copyright 2018 Maya Vera (mayavera.me)

.PHONY: setup dump build
default: setup

setup:
	@./setup.sh

dump:
	brew bundle dump --force

build:
	@( cd Public && make )

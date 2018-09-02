#!/usr/bin/make -f
# (c) Copyright 2018 Maya Vera (mayavera.me)

.PHONY: build setup
default: build

setup:
	@./setup.sh

build:
	@( cd Public && make )

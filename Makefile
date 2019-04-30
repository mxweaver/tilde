#!/usr/bin/make -f
# (c) Copyright 2018 Maya Vera (mayavera.me)

default: setup

.PHONY: setup
setup:
	@./setup.sh

.PHONY: dump
dump:
	brew bundle dump --force


#!/usr/bin/make -f
# (c) Copyright 2018 Maya Vera (mayavera.me)

.PHONY: setup dump
default: setup

setup:
	@./setup.sh

dump:
	brew bundle dump --force


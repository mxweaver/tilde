#!/bin/bash
# (c) Copyright 2018 Maya Vera (mayavera.me)

.PHONY: build
default: build

build:
	@pushd Public > /dev/null; make build; popd > /dev/null
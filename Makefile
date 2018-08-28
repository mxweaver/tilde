#!/usr/bin/make -f
# (c) Copyright 2018 Maya Vera (mayavera.me)

.PHONY: build

default:
	@pushd Public > /dev/null; make; popd > /dev/null
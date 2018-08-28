#!/usr/bin/env bash
# (c) Copyright 2018 Maya Vera (mayavera.me)

# README.md.gen.sh generates a README that displays all of the gifs in this directory.

> README.md

for file in ./*.gif; do
    echo "![]($(basename -- $file))" >> README.md
done
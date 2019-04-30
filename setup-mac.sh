#!/usr/bin/env bash
# (c) Copyright 2018 Maya Vera (mayavera.me)

if [ -x "$(command -v brew)" ]; then
  echo Homebrew already installed
else
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew bundle

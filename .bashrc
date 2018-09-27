#!/usr/bin/env bash
# (c) Copyright 2018 Maya Vera (mayavera.me)

# Binaries
export PATH=$PATH:~/Public/bin

# History
export HISTSIZE=
export HISTFILESIZE=
export SHELL_SESSION_HISTORY=0

export CLICOLOR=1

# Editor
export EDITOR='vim'

# Git
source git-completion.bash

# GPG
export GPG_TTY=$(tty)

# Go 
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin

# Node
export PATH=$PATH:~/node_modules/.bin

# Includes
include () {
    [[ -f "$1" ]] && . "$1"
}

include /usr/local/etc/bash_completion

include .bashrc.local
include .bashrc.alias
include .bashrc.prompt

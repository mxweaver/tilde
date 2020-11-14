#!/usr/bin/env zsh
#
# ZShell Configuration
# Copyright (c) 2020 Maya Vera (maya@mayavera.me)
#

# Automatic Change Directory
setopt AUTO_CD

# Correction
setopt CORRECT
setopt CORRECT_ALL

# History
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history # set history file
setopt EXTENDED_HISTORY # store timestamps with history entries
setopt SHARE_HISTORY # share history between sessions
setopt APPEND_HISTORY # append to history, rather than overwrite
setopt INC_APPEND_HISTORY # adds commands as they are run, not at shell exit
setopt HIST_EXPIRE_DUPS_FIRST # expire duplicate commands first
setopt HIST_FIND_NO_DUPS # ignore duplicates when searching
setopt HIST_REDUCE_BLANKS # removes blank lines from history
setopt HIST_VERIFY # asks for confirmation before running !! commands


export PATH=/usr/local/bin:$PATH

# Scripts
. ~/.bash.scripts

# Platform-specific Configuration
include ~/.platformrc

# Aliases
include ~/.aliasrc

# Prompt
include ~/.zsh.prompt

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && . "$(brew --prefix)/opt/nvm/nvm.sh"

# Completion
# case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'
# partial completion suggestions
zstyle ':completion:*' list-suffixes
zstyle ':completion:*' expand prefix suffix
# autoload -Uz compinit && compinit

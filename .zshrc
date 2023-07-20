#!/bin/zsh

# ZSH Prompt

export PS1="#.>$ "
export ULS="/usr/local/share"

autoload colors && colors
autoload -U promptinit
promptinit; prompt bart

# Exports
export GPG_TTY=$(tty);
export LS_COLORS="$(vivid -m 8-bit generate molokai)"

# Source [file]
. $HOME/.alias \
. $HOME/.profile \
. $ULS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# History
HISTSIZE=1000
HISTFILESIZE=2000

# Set Options
setopt autocd
setopt automenu
setopt HIST_IGNORE_ALL_DUPS

#export RPROMPT=$'^[[2;37m%* [%D]^[[0m'
#export ICN=$'\n^[[1;33m #>.^[[0m^[[0;31m$ ^[[0m'
#export PROMPT=$'^[[2;37m%n^[[0;31m@^[[0m^[[0;32m%m^[[0m ^[[0m^[[0;31m[^[[0m^[[0;36m%d^[[0m^[[0;36m/^[[0m^[[0;31m]^[[0m '"${ICN}"



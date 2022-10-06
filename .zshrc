#!/bin/zsh

# ZSH Prompt

export PS1="#.>$ "

autoload colors && colors
autoload -U promptinit
promptinit; prompt bart


#export RPROMPT=$'^[[2;37m%* [%D]^[[0m'
#export ICN=$'\n^[[1;33m #>.^[[0m^[[0;31m$ ^[[0m'
#export PROMPT=$'^[[2;37m%n^[[0;31m@^[[0m^[[0;32m%m^[[0m ^[[0m^[[0;31m[^[[0m^[[0;36m%d^[[0m^[[0;36m/^[[0m^[[0;31m]^[[0m '"${ICN}"

# Exports
export GPG_TTY=$(tty);
export LS_COLORS="$(vivid -m 8-bit generate molokai)"

# Source [file]
. $HOME/.alias \
. $HOME/.profile \
. $HOME/.config/zsh/lscolors.sh

# History
HISTSIZE=1000
HISTFILESIZE=2000

# Set Options
setopt autocd
setopt automenu
setopt HIST_IGNORE_ALL_DUPS
source /home/danny/.password-store/test/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# chpwd() ls
#ZPLUG 

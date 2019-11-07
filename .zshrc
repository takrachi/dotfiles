#!/usr/bin/env sh
# Created by newuser for 5.2
[[ $- != *i* ]] && return

# python versions switcher
# pour Rachel, de William, avec amour hihi <3
pyswitch()
{
if [[ $(python -V 2>&1 | grep -Po '(?<=Python )(.+)') == 3* ]];
  then
    sudo ln -sf python2 /usr/bin/python && echo -e 'symlink overwritten: /usr/bin/\033[31mpython -> python2'
  else
    sudo ln -sf python3 /usr/bin/python && echo -e 'symlink overwritten: /usr/bin/\033[31mpython -> python3'
  fi
}

# Prompt
PS1='%(?.%B%F{red}.%B%F{yellow})RλCHI %b»%f '
RPS1='[%B%F{blue}%~%f%b]'

[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

# Apps
source $HOME/.config/dynamic-colors/completions/dynamic-colors.zsh
dynamic-colors init
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select=200

#!/usr/bin/env bash

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

PS1="\[\e[97;45m\] \u \[\e[m\]\[\e[44;35m\]\[\e[m\]"    # username
PS1+="\[\e[44;97m\] \w \[\e[m\]\[\e[42;34m\]\[\e[m\]"    # working directory
PS1+="\[\e[42;97m\]\$(git branch 2>/dev/null | grep '^*' | colrm 1 1)"
PS1+=" \[\e[m\]\[\e[32m\]\[\e[m\]"    # git branch
PS1+="  "
export PS1

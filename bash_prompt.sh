#!/usr/bin/env bash

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

PS1="\[\e[97;45m\] \u \[\e[m\]\[\e[44;35m\]\[\e[m\]"    # username
PS1+="\[\e[44;92m\] \w \[\e[m\]\[\e[34m\]"    # working directory
PS1+="\[\e[0;95m\]\$(git branch 2>/dev/null | grep '^*' | colrm 1 1)\[\e[m\]"    # git branch
PS1+="  "
export PS1

#!/usr/bin/env bash

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

PS1="\[\e[30;105m\] \u \[\e[m\]\[\e[104;95m\]\[\e[m\]"    # username
PS1+="\[\e[104;30m\] \w \[\e[m\]\[\e[102;94m\]\[\e[m\]"    # working directory
PS1+="\[\e[102;30m\]\$(git branch 2>/dev/null | grep '^*' | colrm 1 1)"
PS1+=" \[\e[m\]\[\e[92m\]\[\e[m\]"    # git branch
PS1+="  "
export PS1

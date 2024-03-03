#!/usr/bin/env bash

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

cwd=`pwd`
current_username=`whoami`
export $current_username
export HISTSIZE=99999
export HISTFILESIZE=99999
# prompt
FMT_BOLD="\[\e[1m\]"
FMT_DIM="\[\e[2m\]"
FMT_RESET="\[\e[0m\]"
FMT_UNBOLD="\[\e[22m\]"
FMT_UNDIM="\[\e[22m\]"
FG_BLACK="\[\e[30m\]"
FG_BLUE="\[\e[94m\]"
FG_CYAN="\[\e[96m\]"
FG_GREEN="\[\e[32m\]"
FG_YELLOW="\[\e[93m\]"
FG_GREY="\[\e[97m\]"
FG_MAGENTA="\[\e[95m\]"
FG_RED="\[\e[91m\]"
FG_WHITE="\[\e[97m\]"
BG_BLACK="\[\e[40m\]"
BG_BLUE="\[\e[104m\]"
BG_CYAN="\[\e[106m\]"
BG_GREEN="\[\e[42m\]"
BG_YELLOW="\[\e[103m\]"
BG_MAGENTA="\[\e[105m\]"

PS1="\n ${FG_BLUE}╭─" # begin arrow to prompt
PS1+="${BG_MAGENTA}${FG_CYAN}${FMT_BOLD}  " # print OS icon
PS1+="${FG_BLACK}\u" # print username
PS1+="${FMT_UNBOLD}${FMT_BOLD} ${FG_MAGENTA}${BG_BLUE}" # end USERNAME container / begin DIRECTORY container
PS1+="${FG_BLACK} \w " # print directory
PS1+="${FG_BLUE}${BG_CYAN} " # end DIRECTORY container / begin FILES container
PS1+="${FG_BLACK}"
PS1+=" \$(find . -mindepth 1 -maxdepth 1 -type d | wc -l) " # print number of folders
PS1+=" \$(find . -mindepth 1 -maxdepth 1 -type f | wc -l) " # print number of files
PS1+=" \$(find . -mindepth 1 -maxdepth 1 -type l | wc -l) " # print number of symlinks
PS1+="${FMT_RESET}${FG_CYAN}"
PS1+="\$(git branch 2> /dev/null | grep '^*' | colrm 1 2 | xargs -I BRANCH echo -n \"" # check if git branch exists
PS1+="${BG_GREEN} " # end FILES container / begin BRANCH container
PS1+="${FG_BLACK}${FMT_BOLD} BRANCH " # print current git branch
PS1+="${FMT_RESET}${FG_GREEN}\")\n " # end last container (either FILES or BRANCH)
PS1+="${FG_BLUE}╰❯ " # end arrow to prompt
PS1+="${FG_WHITE}  " # print prompt
PS1+="${FMT_RESET}"
export PS1

######################################################################
#
# ALIAS SECTION
#
######################################################################

alias ug='rvm gemset use'
alias g='git'
alias erl='tail -n 100 ~/error_log'
alias cl='clear'
alias py='python'
alias py3='python3'
alias s='subl'
alias remove_ds='sudo find ./ -name ".DS_Store" -depth -exec rm {} \;'

######################################################################
#
# COLOR SECTION
#
######################################################################

PAINT_BLACK='\033[00;30m'
PAINT_RED='\033[00;31m'
PAINT_GREEN='\033[01;32m'
PAINT_BROWN='\033[00;33m'
PAINT_BLUE='\033[01;34m'
PAINT_PURPLE='\033[00;35m'
PAINT_CYAN='\033[01;36m'
END_COLOR="\033[00m"

######################################################################
#
# FUNCTIONS SECTION
#
######################################################################

#For functions, see .bash.functions file

######################################################################
#
# PATH SECTION
#
######################################################################

#For PATH, see .bash.path file

######################################################################
#
# VARIABLES SECTION
#
######################################################################

export LANG=en_US.UTF-8
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache # cache pip-installed packages to avoid re-downloading
export PS1="$PAINT_GREEN\u@\h$END_COLOR in $PAINT_CYAN\W$END_COLOR$PAINT_PURPLE\$(parse_git_branch)$END_COLOR\n\$ " #PROMPT
export EDITOR='subl'

######################################################################
#
# AUTO EXECUTION / IMPORTS SECTION
#
######################################################################

source ~/.bash.functions
source ~/.git-completion.bash
source ~/.bash.path

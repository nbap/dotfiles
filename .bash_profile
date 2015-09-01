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
alias s='subl'
alias remove_ds='sudo find ./ -name ".DS_Store" -depth -exec rm {} \;'
alias mongo_start='mongod --config /usr/local/etc/mongod.conf'


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
# VARIABLES SECTION
#
######################################################################

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true

# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

#PROMPT
export PS1="$PAINT_GREEN\u@\h$END_COLOR in $PAINT_CYAN\W$END_COLOR$PAINT_PURPLE\$(parse_git_branch)$END_COLOR\n\$ "

# PATH
export PATH=/usr/local/bin:/opt/local/bin:/opt/local/sbin:/Users/nbap/Library/android-sdk-macosx/tools:/usr/local/opt/gettext/bin:/Users/nbap/.rvm/gems/ruby-2.1.1/bin:/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH

export GOPATH="$HOME/projetos/"

export BYOBU_PREFIX=$(brew --prefix)
#export ONYO_ROOT_PATH=/Users/nbap/projetos/onyo/onyo-backend
export EDITOR='subl'
######################################################################
#
# AUTO EXECUTION / IMPORTS SECTION
#
######################################################################

source ~/.profile
source /Users/nbap/projetos/onyo/onyo-backend/deploy/dev-docker/utilities.bash
source ~/.bash.functions
source .tmuxinator.bash
source ~/.git-completion.bash

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

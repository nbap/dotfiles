######################################################################
#
# ALIAS SECTION
#
######################################################################

alias ug='rvm gemset use'
alias g='git'
alias cl='clear'
alias py=$(which python)
alias py3='python3'
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
alias s='code'
alias vs='code'
alias remove_ds='sudo find ./ -name ".DS_Store" -depth -exec rm {} \;'
alias tas='tmux attach-session'
alias pr='pipenv run'

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
# AUTO EXECUTION / IMPORTS SECTION
#
######################################################################

function _source() {
    test -e $1 && source $1
}

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
_source ~/.bash.functions
_source ~/.git-completion.bash
_source ~/.bash.path
_source "${HOME}/.iterm2_shell_integration.bash"
_source "${HOME}/.asdf/asdf.sh"
_source "${HOME}/.asdf/completions/asdf.bash"

__git_complete g __git_main

######################################################################
#
# VARIABLES SECTION
#
######################################################################
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache # cache pip-installed packages to avoid re-downloading
export PS1="$PAINT_GREEN\u@\h$END_COLOR in $PAINT_CYAN\W$END_COLOR$PAINT_PURPLE\$(parse_git_branch)$END_COLOR\n\[$(iterm2_prompt_mark)\]\$ " #PROMPT
export EDITOR='subl'
export ANDROID_HOME=/Users/$USER/Library/Android/sdk

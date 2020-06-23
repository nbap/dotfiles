typeset -U path

path=(/usr/local/bin
	  /opt/local/bin
	  /opt/local/sbin
	  /Applications/Postgres.app/Contents/Versions/latest/bin
    /usr/local/opt/openjdk/bin
      $path)

export PATH
export ZSH="/Users/nbap/.oh-my-zsh"
export PIPENV_IGNORE_VIRTUALENVS=1
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

alias ug='rvm gemset use'
alias g='git'
alias cl='clear'
alias py='python3'
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
alias s='code'
alias vs='code'
alias remove_ds='sudo find ./ -name ".DS_Store" -depth -exec rm {} \;'
alias tas='tmux attach-session'
alias pr='pipenv run'

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi

plugins=(git)
source $ZSH/oh-my-zsh.sh
source .zsh.functions

parse_git_branch() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/' }
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

NEWLINE=$'\n'
PROMPT="%{$fg[green]%}%n@%m%{$reset_color%} in %{$fg[cyan]%}%~%{$reset_color%}%{$fg[magenta]%}$(parse_git_branch)%{$reset_color%}${NEWLINE}$ "


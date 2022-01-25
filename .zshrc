typeset -U path
setopt BEEP NO_AUTOLIST BASH_AUTOLIST NO_MENUCOMPLETE

path=(/usr/local/bin
	  /opt/local/bin
	  /opt/local/sbin
    /usr/local/sbin
	  /Applications/Postgres.app/Contents/Versions/latest/bin
    /usr/local/opt/openjdk/bin
    /usr/local/opt/openssl@1.1/bin
      $path)


export PATH
export ZSH="/Users/nbap/.oh-my-zsh"
export PIPENV_IGNORE_VIRTUALENVS=1
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export GOPATH="/Users/nbap/.golang/"

nvm() {
  export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
}

alias j8="export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home; java -version"
alias j13="export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk.jdk/Contents/Home; java -version"

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
alias bkpext='rsync -avhP --exclude=".Spotlight-V100" --exclude=".TemporaryItems" --exclude=".Trashes" /Volumes/nbap_drive /Volumes/cloned_nbap_drive'

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi



plugins=(git)
source /usr/local/opt/asdf/asdf.sh
source $ZSH/oh-my-zsh.sh
source "${HOME}/.zsh.functions"
parse_git_branch() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/' }
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

autoload -Uz vcs_info
zstyle ':vcs_info:git:*' formats ' (%b)'
vcs_info_wrapper() {
  vcs_info
  if [ -n "$vcs_info_msg_0_" ]; then
    echo "${vcs_info_msg_0_}"
  fi
}

NEWLINE=$'\n'
setopt prompt_subst
PROMPT='%{$fg[green]%}%n@%m%{$reset_color%} in %{$fg[cyan]%}%~%{$reset_color%}%{$fg[magenta]%}$(vcs_info_wrapper)%{$reset_color%}${NEWLINE}$ '


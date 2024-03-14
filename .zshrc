typeset -U path
setopt BEEP NO_AUTOLIST BASH_AUTOLIST NO_MENUCOMPLETE

path=(/usr/local/bin
	  /opt/local/bin
	  /opt/local/sbin
    /usr/local/sbin
	  /Applications/Postgres.app/Contents/Versions/latest/bin
    /usr/local/opt/openjdk/bin
    /usr/local/opt/openssl@1.1/bin
    /opt/homebrew/bin
    /opt/homebrew/opt/php@8.1/bin
    /opt/homebrew/opt/php@8.1/sbin
    /opt/homebrew/opt/imagemagick/bin
      $path)

export PATH
export ZSH="/Users/nbap/.oh-my-zsh"
export PIPENV_IGNORE_VIRTUALENVS=1
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export MAGICK_HOME=/opt/homebrew/opt/imagemagick/

nvm() {
  export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
}

alias j8="export JAVA_HOME=/Users/nbap/.asdf/installs/java/adoptopenjdk-8.0.282+8; java -version"
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
alias bkpext='rsync -avhP --exclude=".fseventsd" --exclude=".Spotlight-V100" --exclude=".TemporaryItems" --exclude=".Trashes" --exclude=".DocumentRevisions-V100" /Volumes/nbap_drive /Volumes/cloned_nbap_drive --delete-after'
# alias php="/opt/homebrew/opt/php@8.1/bin/php"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='nano'
fi

plugins=(git)
source /opt/homebrew/opt/asdf/libexec/asdf.sh
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
PROMPT='%F{40}%n@%m%{$reset_color%} in %F{45}%~%{$reset_color%}%F{200}$(vcs_info_wrapper)%{$reset_color%}${NEWLINE}$ '
eval "$(atuin init zsh)"

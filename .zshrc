# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Theme
ZSH_THEME=robbyrussell

source $ZSH/oh-my-zsh.sh

# Directories
export DOTFILES="$HOME/.config/"
export REPOS="$HOME/repositoryVault/"

# cd paths 
alias dot="cd $DOTFILES"
alias repos="cd $REPOS"

# Git
alias gpr="git pull --rebase"
alias gs="git stash"
alias gsa="git stash apply"

# eza
alias ll="eza -al --group-directories-first --icons=always"

# Generic
alias e="exit"
alias c="clear"

# Zellij
alias z="zellij"

# tmux
alias t="tmux"

tnew() {
  t new ${1:+-s "$1"}
}

tach() {
  t a ${1:+-t "$1"}
}

tsw() {
  t switch ${1:+-t "$1"}
}


export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


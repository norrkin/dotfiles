export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="apple"
plugins=(
  aliases
  docker
  git
  kubectl
  themes
)

source $ZSH/oh-my-zsh.sh
source ~/.alias
source <(kubectl completion zsh)

## enable brew
eval "$(/opt/homebrew/bin/brew shellenv)"

if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

## set case-insensitive globbing
setopt NO_CASE_GLOB
## automatically change directory
setopt AUTO_CD

setopt HIST_EXPIRE_DUPS_FIRST  # when trimming history, lose oldest duplicates first
setopt HIST_IGNORE_DUPS  # Do not write events to history that are duplicates of previous events
setopt SHARE_HISTORY
setopt APPEND_HISTORY  # Allow multiple terminal sessions to all append to one zsh command history
setopt INC_APPEND_HISTORY  # Add comamnds as they are typed, don't wait until shell exit

## enable auto correction
setopt CORRECT
setopt CORRECT_ALL

## enable auto completion
autoload -Uz compinit && compinit

## GPG
export GPG_TTY=$(tty)

autoload bashcompinit && bashcompinit
source $(brew --prefix)/etc/bash_completion.d/az

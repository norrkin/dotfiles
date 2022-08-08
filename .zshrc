## prompt
PROMPT='%F{218}%1~%f%b %# '
## enable brew
eval "$(/opt/homebrew/bin/brew shellenv)"

## set case-insensitive globbing
setopt NO_CASE_GLOB
## automatically change directory
setopt AUTO_CD
## save history, share history across multiple zsh sessions, append to history & update history
HISTFILE=$HOME/.zhistory
setopt HIST_EXPIRE_DUPS_FIRST
setopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
## might want to add ignore duplicates & save limits

## enable auto correction
setopt CORRECT
setopt CORRECT_ALL

## enable auto completion
autoload -Uz compinit && compinit

## load aliases
source ~/.alias

## GPG
export GPG_TTY=$(tty)

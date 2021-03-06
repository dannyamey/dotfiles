HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history

setopt NO_CASE_GLOB
setopt AUTO_CD
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST 
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt CORRECT
setopt CORRECT_ALL

autoload -Uz compinit
compinit

[[ -d /opt/homebrew ]] && path=('/opt/homebrew/bin' $path)

SSH_AUTH_SOCK=$HOME/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh
[[ -d $SSH_AUTH_SOCK ]] && export SSH_AUTH_SOCK=$SSH_AUTH_SOCK

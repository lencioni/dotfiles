# The following lines were added by compinstall

setopt appendhistory autocd beep extendedglob nomatch


zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/joe/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
export ZSH_THEME="candy"

export ZSH=$HOME/.oh-my-zsh
export DISABLE_AUTO_UPDATE="true"
plugins=(git brew gem knife rails ruby)
source $ZSH/oh-my-zsh.sh

alias restart_unicorn="kill -USR2 \`cat ~/causes/tmp/pids/unicorn.pid\`"

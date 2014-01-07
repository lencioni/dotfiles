# The following lines were added by compinstall

setopt appendhistory autocd beep extendedglob nomatch
setopt nonomatch # unmatched patterns are left unchanged

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/joe/.zshrc'

autoload -Uz compinit
compinit

# Load rbenv if available
if which rbenv > /dev/null; then
  eval "$(rbenv init -)"
fi

export EDITOR=vim

# End of lines added by compinstall
export ZSH_THEME="candy"

export ZSH=$HOME/.oh-my-zsh
export DISABLE_AUTO_UPDATE="true"
plugins=(git brew gem knife rails ruby)
source $ZSH/oh-my-zsh.sh

source $HOME/.shells/path

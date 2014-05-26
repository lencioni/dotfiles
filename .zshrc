#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# The following lines were added by compinstall
setopt appendhistory autocd beep extendedglob nomatch
setopt nonomatch # unmatched patterns are left unchanged

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/joe/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Load rbenv if available
if which rbenv > /dev/null; then
  eval "$(rbenv init -)"
fi

export EDITOR=vim

#
# Load extra functionality
#

if [ -d ~/dotfiles ] ; then
    export DOTFILES=~/dotfiles
fi

if [ $DOTFILES ] ; then
  for f in $DOTFILES/shell/* ; do
    source $f
  done
fi

source $HOME/.shells/path

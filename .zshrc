#!/usr/bin/env zsh

#
# Basic configuration
#

setopt appendhistory
setopt autocd
setopt beep
setopt extendedglob
setopt nomatch
setopt nonomatch # unmatched patterns are left unchanged

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename "$HOME/.zshrc"
autoload -Uz compinit
compinit

# Source tmuxinator completion
if [[ -s "${ZDOTDIR:-$HOME}/.bin/tmuxinator.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.bin/tmuxinator.zsh"
fi

# Source Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Load rbenv if available
if which rbenv > /dev/null; then
  eval "$(rbenv init -)"
fi

export EDITOR=vim
export VISUAL=vim

# Source .zshrc.local if it exists
test -r ~/.zshrc.local && source ~/.zshrc.local

#
# Load extra functionality
#

if [ -d ~/dotfiles ] ; then
  export DOTFILES=~/dotfiles
fi

for f in ~/.shells/* ; do
  source "$f"
done

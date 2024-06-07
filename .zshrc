#!/usr/bin/env zsh

#
# Basic configuration
#

HISTFILE=~/.history
HISTSIZE=100000
SAVEHIST=$HISTSIZE

setopt appendhistory
setopt autocd
setopt beep
setopt correct
setopt extendedglob
setopt nonomatch # unmatched patterns are left unchanged
setopt sharehistory

# Interactive shells
if [[ $- == *i* ]]; then
  # Source Prezto
  if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
    source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
  fi
fi

# Load chruby if available
CHRUBY=/usr/local/share/chruby
test -e "$CHRUBY/chruby.sh" && . "$CHRUBY/chruby.sh"
test -e "$CHRUBY/auto.sh" && . "$CHRUBY/auto.sh"

export EDITOR=nvim
export VISUAL=nvim

#
# Load extra functionality
#

if [ -d ~/dotfiles ] ; then
  export DOTFILES=~/dotfiles
fi

source ~/.zsh/aliases
source ~/.zsh/base16-shell
source ~/.zsh/colors
source ~/.zsh/functions

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# Source .zshrc.local if it exists
test -r ~/.zshrc.local && source ~/.zshrc.local

# Activate mise
# https://mise.jdx.dev/
eval "$(~/.local/bin/mise activate zsh)"

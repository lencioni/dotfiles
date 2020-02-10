#!/bin/sh

set -e

export TERMINFO=$HOME/.terminfo

mkdir -p "$TERMINFO"

patch_terminfo() {
  FILENAME=$1
  tic -o "$TERMINFO" "$HOME/dotfiles/extras/$FILENAME"
}

patch_terminfo tmux.terminfo
patch_terminfo tmux-256color.terminfo
patch_terminfo xterm-256color.terminfo

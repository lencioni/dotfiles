#!/usr/bin/env zsh

# Set USER if it does not exist.
# https://github.com/sorin-ionescu/prezto/pull/605
if [ ! "$USER" ] ; then
  export USER="${USER:-$(whoami)}"
fi

# Interactive shells
if [[ $- == *i* ]]; then
  # Source Prezto
  if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zprofile" ]]; then
    source "${ZDOTDIR:-$HOME}/.zprezto/runcoms/zprofile"
  fi
fi

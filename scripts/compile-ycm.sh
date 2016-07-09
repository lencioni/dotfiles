#!/bin/sh

set -e

(
  cd .vim/bundle/YouCompleteMe
  git submodule update --init --recursive
  echo 'Installing YouCompleteMe...'
  ./install.py
)

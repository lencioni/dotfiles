#!/bin/sh

set -e

(
  cd .vim/bundle/command-t/ruby/command-t
  echo 'Building Command-T...'
  ruby extconf.rb
  make clean
  make
)

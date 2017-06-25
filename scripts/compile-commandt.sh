#!/bin/sh

set -e

(
  cd .vim/bundle/command-t/ruby/command-t/ext/command-t/
  echo 'Building Command-T...'
  ruby extconf.rb
  make clean
  make
)

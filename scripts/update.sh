#!/bin/sh

set -e

git submodule foreach git checkout master
git submodule foreach git pull --recurse-submodules

# Update prezto
(
  cd .zprezto
  git submodule update --init --recursive
)

DIR=$(dirname "$0")
"$DIR/compile-ycm.sh"
"$DIR/compile-commandt.sh"

vim -c "call pathogen#helptags() | quit"

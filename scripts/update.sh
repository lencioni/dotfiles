#!/bin/sh

set -e

git submodule foreach git checkout master
git submodule foreach git pull --recurse-submodules

# Update prezto
(
  cd .zprezto
  git submodule update --init --recursive
)

./compile-ycm.sh
./compile-commandt.sh

vim -c "call pathogen#helptags() | quit"

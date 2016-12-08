#!/usr/bin/env bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Set default shell to zsh
chsh -s /bin/zsh

git submodule update --init --recursive
cd ~
ln -sFi dotfiles/.ackrc .
ln -sFi dotfiles/.agignore .
ln -sFi dotfiles/.ctags .
ln -sFi dotfiles/.gemrc .
ln -sFi dotfiles/.gitattributes .
ln -sFi dotfiles/.gitconfig .
ln -sFi dotfiles/.gitexcludes .
ln -sFi dotfiles/.hammerspoon .
ln -sFi dotfiles/.rdebugrc .
ln -sFi dotfiles/.rspec .
ln -sFi dotfiles/.shells .
ln -sFi dotfiles/.tmux.conf .
ln -sFi dotfiles/.vimrc .
ln -sFi dotfiles/.vim .

ln -sFi dotfiles/.zprezto .
ln -sFi dotfiles/.zpreztorc .
ln -sFi dotfiles/.zprofile .
ln -sFi dotfiles/.zshrc .
ln -sFi .zprezto/runcoms/zlogin .zlogin
ln -sFi .zprezto/runcoms/zlogout .zlogout
ln -sFi .zprezto/runcoms/zshenv .zshenv

# Make sure current user owns their .viminfo file. If they do not, Vim history
# will not work.
touch ~/.viminfo || true
sudo chown "$USER" ~/.viminfo

( # Set up ~/bin
  mkdir -p ~/bin
  cd ~/bin
  ln -sFi "$(brew --prefix)/share/git-core/contrib/diff-highlight/diff-highlight" .
)

cp dotfiles/extras/inconsolata/*.ttf ~/Library/Fonts
cp dotfiles/extras/Inconsolata-dz-Powerline.otf ~/Library/Fonts

dotfiles/.osx

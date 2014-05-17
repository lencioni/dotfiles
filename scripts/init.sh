git submodule update --init
cd ~
ln -s dotfiles/.ackrc .
ln -s dotfiles/.gitconfig .
ln -s dotfiles/.gitexcludes .
ln -s dotfiles/.oh-my-zsh .
ln -s dotfiles/.rdebugrc .
ln -s dotfiles/.rspec .
ln -s dotfiles/.shells .
ln -s dotfiles/.slate .
ln -s dotfiles/.tmux.conf .
ln -s dotfiles/.vimrc .
ln -s dotfiles/.vim .
ln -s dotfiles/.zlogin .
rm .zshrc
ln -s dotfiles/.zshrc .

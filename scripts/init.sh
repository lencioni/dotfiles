git submodule update --init --recursive
cd ~
ln -s dotfiles/.ackrc .
ln -s dotfiles/.gitconfig .
ln -s dotfiles/.gitexcludes .
ln -s dotfiles/.rdebugrc .
ln -s dotfiles/.rspec .
ln -s dotfiles/.shells .
ln -s dotfiles/.slate .
ln -s dotfiles/.tmux.conf .
ln -s dotfiles/.vimrc .
ln -s dotfiles/.vim .

ln -s dotfiles/.zprezto .
ln -s dotfiles/.zpreztorc .
rm .zshrc
ln -s dotfiles/.zshrc .
ln -s .zprezto/runcoms/zlogin .zlogin
ln -s .zprezto/runcoms/zlogout .zlogout
ln -s .zprezto/runcoms/zprofile .zprofile
ln -s .zprezto/runcoms/zshenv .zshenv

cp dotfiles/extras/inconsolata/*.ttf ~/Library/Fonts
cp dotfiles/extras/Inconsolata-dz-Powerline.otf ~/Library/Fonts

dotfiles/.osx

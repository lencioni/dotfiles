git submodule foreach git checkout master
git submodule foreach git fetch --all
git submodule foreach git reset --hard origin/master
git submoudle update --init --recursive

cd .vim/bundle/command-t/ruby/command-t
ruby extconf.rb
make clean
make
cd -

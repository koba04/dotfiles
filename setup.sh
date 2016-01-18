#!/bin/sh -xe

cd $(dirname $0)
for dotfile in .?*
do
    if [ $dotfile != '..' ] && [ $dotfile != '.git' ]
    then
        ln -Fis "$PWD/$dotfile" $HOME
    fi
done

git submodule init && git submodule update

# pathogen
ln -s $HOME/.vim/bundle/vim-pathogen/autoload/pathogen.vim $HOME/.vim/autoload/pathogen.vim

# anyenv
if [ ! -e $HOME/.anyenv ]
then
    git clone https://github.com/riywo/anyenv ~/.anyenv
fi

cat <<EOL

Setup hoven't finished completely yet.

vim:
  % vim
  :BundleInstall

AtomEditor:
  % apm stars --install

EOL

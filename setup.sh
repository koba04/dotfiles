#!/bin/sh -xe

cd $(dirname $0)
for dotfile in .?*
do
    if [ $dotfile != '..' ] && [ $dotfile != '.git' ]
    then
        ln -Fis "$PWD/$dotfile" $HOME
    fi
done

# anyenv
if [ ! -e $HOME/.anyenv ]
then
    git clone https://github.com/riywo/anyenv ~/.anyenv
fi

cat <<EOL

Setup hoven't finished completely yet.

vim:
  % curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh

VSCode:
  % sh setup-vscode.sh

AtomEditor:
  % apm stars --install

EOL

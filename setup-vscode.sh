#!/bin/sh -xe
mv "${HOME}/Library/Application Support/Code/User/keybindings.json"{,.bk}
ln -s "${HOME}/repos/github/dotfiles/.vscode/keybindings.json" "${HOME}/Library/Application Support/Code/User/keybindings.json"

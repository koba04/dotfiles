#!/bin/sh -xe

SRC_DIR="${HOME}/repos/github.com/koba04/dotfiles/.vscode/"
DEST_CODE_DIR="${HOME}/Library/Application Support/Code/User/"

ln -s "${SRC_DIR}keybindings.json" "${DEST_CODE_DIR}keybindings.json"
ln -s "${SRC_DIR}settings.json" "${DEST_CODE_DIR}settings.json"


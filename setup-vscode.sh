#!/bin/sh -xe

SRC_DIR="${HOME}/repos/github/dotfiles/.vscode/"
DEST_CODE_DIR="${HOME}/Library/Application Support/Code/User/"
DEST_CODE_INSIDER_DIR="${HOME}/Library/Application Support/Code - Insiders/User/"

ln -s "${SRC_DIR}keybindings.json" "${DEST_CODE_DIR}keybindings.json"
ln -s "${SRC_DIR}keybindings.json" "${DEST_CODE_INSIDER_DIR}keybindings.json"

ln -s "${SRC_DIR}settings.json" "${DEST_CODE_DIR}settings.json"
ln -s "${SRC_DIR}settings.json" "${DEST_CODE_INSIDER_DIR}settings.json"


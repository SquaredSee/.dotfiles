#!/bin/bash

DIR=~/.dotfiles
SYS_DIR=${DIR}/system
ATOM_DIR=${DIR}/atom

# if DIR is a repo and if git is installed
if [ -d "${DIR}/.git" ] && [ $(command -v git 2>/dev/null) ]; then
    echo "Pulling new data from github..."
    git --work-tree="${DIR}" --git-dir="${DIR}/.git" pull origin master
fi

echo "Creating symlinks..."


for DOTFILE in $(find ${SYS_DIR}); do
    if [ -f ${DOTFILE} ]; then
        ln -sfv ${DOTFILE} ~
    fi
done

if [ ! -d ~/.atom ]; then
    mkdir ~/.atom
fi
for DOTFILE in $(find ${ATOM_DIR}); do
    if [ -f ${DOTFILE} ]; then
        ln -sfv ${DOTFILE} ~/.atom
    fi
done

~/.atom/package_install.sh

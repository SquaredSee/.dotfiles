#!/usr/bin/env bash

gflag=''
while getopts ":g" opt; do
    case $opt in
        g)
            # pulls new data from github before anything else
            gflag=true
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            exit 1
            ;;
    esac
done

# directory variables
dir=~/.dotfiles
sys_dir=${dir}/system
atom_dir=${dir}/atom

if [ "$gflag" = true ]; then
    # if dir is a repo and if git is installed
    if [ -d "${dir}/.git" ] && [ $(command -v git 2>/dev/null) ]; then
        echo "Pulling new data from github..."
        git --work-tree="${dir}" --git-dir="${dir}/.git" pull origin master
    fi
fi


echo "Creating symlinks..."

# symlink root dir files
for DOTFILE in $(find ${sys_dir}); do
    if [ -f ${DOTFILE} ]; then
        ln -sfv ${DOTFILE} ~
    fi
done

#symlink .atom files
if [ ! -d ~/.atom ]; then
    mkdir ~/.atom
fi
for DOTFILE in $(find ${atom_dir}); do
    if [ -f ${DOTFILE} ]; then
        ln -sfv ${DOTFILE} ~/.atom
    fi
done
# install atom packages
# ~/.atom/package_install.sh

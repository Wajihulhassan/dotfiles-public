#!/bin/bash

dir=`pwd`
files=".emacs .emacs.d .bashrc .bash_aliases"        # list of files/folders to symlink in homedir

for file in $files; do
    if [ -L ~/$file ]; then
	unlink ~/$file
    fi
    echo "Creating symlink to ${file} in home directory."
    ln -s $dir/$file ~/$file
done

source ~/.bashrc
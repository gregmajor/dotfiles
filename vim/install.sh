#!/bin/sh
#
# This script will install vim goodies.

source $DOTHOME/lib/common

if [ ! -d "~/.vim/bundle/Vundle.vim" ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi
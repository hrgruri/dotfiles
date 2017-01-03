#!/bin/sh
ln -s .vimrc ~/.vimrc
ln -s .vim ~/.vim
mkdir -p ~/.cache/dein
mkdir -p ~/.vim/dein/repos/github.com/Shougo
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/.cache/dein/installer.sh
sh ~/.cache/dein/installer.sh ~/.vim/dein

#!/bin/sh
DOT_FILES=(.vimrc .vim .zsh .zshrc)
for file in ${DOT_FILES[@]}
do
    ln -sf $HOME/dotfiles/$file $HOME/$file
done

# for vim
mkdir -p ~/.cache/dein
mkdir -p ~/.vim/dein/repos/github.com/Shougo
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/.cache/dein/installer.sh
sh ~/.cache/dein/installer.sh ~/.vim/dein

#!/bin/zsh
DOT_FILES=(.vimrc .vim .zsh .zshrc)
for file in ${DOT_FILES[@]}
do
    ln -sf $HOME/.dotfiles/$file $HOME/$file
done

# for vim
mkdir -p ~/.cache/dein
mkdir -p ~/.vim/dein/repos/github.com/Shougo
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/.cache/dein/installer.sh
sh ~/.cache/dein/installer.sh ~/.vim/dein

# docker
mkdir -p ~/.zsh/completions
curl -L https://raw.githubusercontent.com/docker/compose/$(docker-compose version --short)/contrib/completion/zsh/_docker-compose > ~/.zsh/completions/_docker-compose

# git
ln -s $HOME/.dotfiles/git/.gitignore_global $HOME/.gitignore_global
ln -s $HOME/.dotfiles/git/.gitconfig $HOME/.gitconfig

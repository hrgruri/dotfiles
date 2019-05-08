#!/bin/zsh

DOT_DIRECTORIES=(zsh vim)
for directory in ${DOT_DIRECTORIES[@]}
do
  if [ ! -d "$HOME/.$directory" ]; then
    mkdir "$HOME/.$directory"
  fi
  ln -si $HOME/dotfiles/$directory/* $HOME/.$directory
done

DOT_FILES=(.zshrc .vimrc)
for file in ${DOT_FILES[@]}
do
  ln -si $HOME/dotfiles/$file $HOME/$file
done

# vim
if [ ! -d "$HOME/.cache/dein" ]; then
  mkdir -p "$HOME/.cache/dein"
  curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > "$HOME/.cache/dein/installer.sh"
  sh ~/.cache/dein/installer.sh ~/.vim/dein
fi

if [ ! -d "$HOME/.vim/dein/repos/github.com/Shougo" ]; then
  mkdir -p "$HOME/.vim/dein/repos/github.com/Shougo"
fi


# completion
if [ ! -d "$HOME/.zsh/completions" ]; then
  mkdir -p "$HOME/.zsh/completions"
fi
curl -L https://raw.githubusercontent.com/docker/compose/$(docker-compose version --short)/contrib/completion/zsh/_docker-compose > "$HOME/.zsh/completions/_docker-compose"
curl -L https://raw.githubusercontent.com/github/hub/master/etc/hub.zsh_completion > "$HOME/.zsh/completions/_hub"

# git
ln -si $HOME/dotfiles/git/.gitconfig $HOME/.gitconfig
if [ ! -d "$HOME/.config/git" ]; then
  mkdir -p "$HOME/.config/git"
fi
ln -si $HOME/dotfiles/git/.gitignore_global $HOME/.config/git/ignore

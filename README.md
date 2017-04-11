# dotfiles

## Installation
```sh
git clone git@github.com:hrgruri/dotfiles.git $HOME/.dotfiles
cd $HOME/.dotfiles
./setup.sh
```

### atom
```sh
ln -sf $HOME/.dotfiles/.atom $HOME/.atom
# install starred packages
apm stars --install

# star all installed packages
apm star --installed
```

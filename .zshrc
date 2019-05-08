export PATH="$PATH:$HOME/.composer/vendor/bin:/usr/local/sbin"
export LSCOLORS=gxfxcxdxbxegedabagacad
export FIGNORE=${FIGNORE}:.class:.DS_Store

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
autoload -Uz colors
autoload -U compinit
compinit -u

if [ -e /usr/local/share/zsh-completions ]; then
  fpath=(/usr/local/share/zsh-completions $fpath)
fi

if [ -e "$HOME/.zsh/completions" ]; then
  fpath=("$HOME/.zsh/completions" $fpath)
fi

# read zsh files
DOT_FILES=('alias' 'history' 'extends')
for file in ${DOT_FILES[@]}
do
  if [ -f "$HOME/.zsh/$file.zsh" ]; then
    . "$HOME/.zsh/$file.zsh"
  fi
done

# PROMPT
if [ -f "$HOME/.zsh/prompt.zsh" ]; then
  . "$HOME/.zsh/prompt.zsh"
else
  PROMPT='%d$ '
fi

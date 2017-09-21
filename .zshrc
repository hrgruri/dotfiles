export PATH="$PATH:$HOME/.composer/vendor/bin:/usr/local/sbin"
export LSCOLORS=gxfxcxdxbxegedabagacad
bindkey "^[[3~" delete-char
autoload -Uz colors
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# alias
alias ll='ls -la'
alias la='ls -a'

if [ -e /usr/local/share/zsh-completions ]; then
    fpath=(/usr/local/share/zsh-completions $fpath)
fi
if [ -e "$HOME/.zsh/completions" ]; then
    fpath=("$HOME/.zsh/completions" $fpath)
fi
autoload -U compinit
compinit -u

# ignore files
export FIGNORE=${FIGNORE}:.class:.DS_Store

# read zsh files
DOT_FILES=('alias' 'function' 'history' 'extends')
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

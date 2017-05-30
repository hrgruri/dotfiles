set number
set tabstop=4
set expandtab
set shiftwidth=4
set smartindent
set hlsearch
set nocompatible
filetype plugin indent on

set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim,~/.vim/
call dein#begin(expand('~/.vim/dein'))
call dein#add('Shougo/dein.vim')
call dein#add('Townk/vim-autoclose')
call dein#add('nathanaelkane/vim-indent-guides')
call dein#add('vim-scripts/PDV--phpDocumentor-for-Vim')
call dein#add('scrooloose/nerdtree')
call dein#add('w0ng/vim-hybrid')
call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neosnippet.vim')
call dein#end()
if dein#check_install()
    call dein#install()
endif

syntax on
runtime! autoload/init/*.vim
runtime! autoload/plugin/*.vim

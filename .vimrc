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
call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')
call dein#end()
if dein#check_install()
    call dein#install()
endif

syntax on
runtime! autoload/init/*.vim
runtime! autoload/plugin/*.vim

" map
map <C-n> :NERDTreeToggle<CR>

" NERDTree
let NERDTreeIgnore = ['\.git$', '\.DS_Store$', '\.idea$']
let NERDTreeShowHidden = 1
autocmd VimEnter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

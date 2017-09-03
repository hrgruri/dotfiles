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
call dein#add('jistr/vim-nerdtree-tabs')
call dein#add('w0ng/vim-hybrid')
call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neosnippet.vim')
call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')
call dein#add('soramugi/auto-ctags.vim')
call dein#end()
if dein#check_install()
    call dein#install()
endif

syntax on
runtime! autoload/init/*.vim
runtime! autoload/plugin/*.vim

let mapleader = "\<Space>"
map <Leader>n <plug>NERDTreeTabsToggle<CR>
nnoremap <ESC><ESC> :noh<CR>

nnoremap <Leader>o gT
nnoremap <Leader>p gt
nnoremap <Leader><Left> <C-w>h
nnoremap <Leader><Down> <C-w>j
nnoremap <Leader><Up> <C-w>k
nnoremap <Leader><Right> <C-w>l

" NERDTree
let NERDTreeIgnore = ['\.git$', '\.DS_Store$', '\.idea$']
let NERDTreeShowHidden = 1
autocmd VimEnter * if !argc() | execute 'NERDTreeTabsOpen' | endif
" let g:nerdtree_tabs_open_on_console_startup=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#max_list = 50
let g:neocomplete#max_keyword_width = 80

" ctags
let g:auto_ctags = 1
nnoremap <Leader>] g<C-]>
nnoremap <Leader>t <C-t>

" Vundle stuff
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'scrooloose/syntastic'
Plugin 'christoomey/vim-system-copy'
Plugin 'jiangmiao/auto-pairs'
Plugin 'alvan/vim-closetag'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'Chiel92/vim-autoformat'
Plugin 'flazz/vim-colorschemes'

call vundle#end()

" My stuff
filetype plugin indent on
syntax on
colorscheme BlackSea
let loaded_matchparen=1
let mapleader=' '

set incsearch ignorecase smartcase
set relativenumber number
set expandtab shiftwidth=2 softtabstop=2
set wildmenu

map ; :
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
nmap <leader>t :!npm test<cr>
nmap <leader>c :colorscheme<space>
nmap <leader>o o<esc>
nmap <leader>O O<esc>
nmap <leader>u <C-r>
nmap <leader>bi :BundleInstall<cr>
nmap <leader>bc :BundleClean<cr>
nmap <leader>f :Autoformat<cr>
nmap <leader>sc :set spell spelllang=en_us<esc>
nmap Q @q
nmap j gj
nmap k gk
nmap Y y$
nmap <C-f> :<C-f>i%s//gc<esc>hhi
imap <C-f> <C-x><C-f>

let g:ctrlp_custom_ignore = 'node_modules/'
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

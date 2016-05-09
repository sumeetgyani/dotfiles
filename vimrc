" Vundle stuff
set nocompatible              
filetype off                 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'scrooloose/syntastic'
Plugin 'christoomey/vim-system-copy'

call vundle#end()

" My stuff
filetype plugin indent on
syntax on
let mapleader=' '

set incsearch ignorecase smartcase 
set relativenumber number
set expandtab shiftwidth=2 softtabstop=2

map ; :
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
nmap <leader>o o<esc>
nmap <leader>O O<esc>
nmap <leader>u <C-r>
nmap <leader>f mzgg=G`z
nmap <leader>sc :set spell spelllang=en_us<esc>
nmap Q @q
nmap j gj
nmap k gk
nmap Y y$ 
nmap <C-f> :<C-f>i%s//gc<esc>hhi
imap <tab> <C-p>
imap <C-f> <C-x><C-f>

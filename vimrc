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

call vundle#end()

" My stuff
filetype plugin indent on
syntax on
let mapleader=' '

set incsearch ignorecase smartcase 
set relativenumber number
set expandtab shiftwidth=2 softtabstop=2

map ; :
nmap <leader>o o<esc>
nmap <leader>O O<esc>
nmap <leader>u <C-r>
nmap <leader>f mzgg=G`z
nmap Q @q
nmap j gj
nmap k gk
nmap Y y$ 
imap <C-f> <C-x><C-f>

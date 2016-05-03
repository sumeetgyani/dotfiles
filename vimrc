" Vundle stuff
set nocompatible              
filetype off                 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-commentary'

call vundle#end()

filetype plugin indent on
syntax on

set incsearch 
set relativenumber  
set number
set expandtab         
set shiftwidth=2
set softtabstop=2

map ; :
nmap j gj
nmap k gk
nmap Y y$ 
nmap Q mzgg=G'z
imap [ []<ESC>i
imap ( ()<ESC>i

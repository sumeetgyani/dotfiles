" Vundle stuff
set nocompatible              
filetype off                 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-commentary'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()

filetype plugin indent on
syntax on

set incsearch 
set relativenumber number
set expandtab shiftwidth=2 softtabstop=2

map ; :
map <C-f> mzgg=G'z  "reformat entire file
nmap j gj
nmap k gk
nmap Y y$ 
imap [ []<ESC>i
imap ( ()<ESC>i

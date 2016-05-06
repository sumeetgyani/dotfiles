" Vundle stuff
set nocompatible              
filetype off                 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'

call vundle#end()

filetype plugin indent on
syntax on

set incsearch 
set relativenumber number
set expandtab shiftwidth=2 softtabstop=2

map ; :
nmap Q gg=G''zz
nmap j gj
nmap k gk
nmap Y y$ 
imap <C-f> <C-x><C-f>
imap [ []<ESC>i
imap ( ()<ESC>i

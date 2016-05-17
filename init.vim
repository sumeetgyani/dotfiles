" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary' "commenting out text as motion
Plug 'tpope/vim-surround' "add/change surrounding elements, like doublequotes
Plug 'neomake/neomake' "syntax checker on file save
Plug 'christoomey/vim-system-copy' "copy and paste into vim from system clipboard
Plug 'jiangmiao/auto-pairs' "automatically add closing paren/quote
Plug 'alvan/vim-closetag' "automatically add closing html tags
Plug 'ctrlpvim/ctrlp.vim' "fuzzy file finder
Plug 'rking/ag.vim' "code searching tool
Plug 'ervandew/supertab' "smart autocomplete with tab
Plug 'Chiel92/vim-autoformat' "autoformat file
Plug 'pangloss/vim-javascript' "better syntax/indent for js

call plug#end()

" My stuff
filetype plugin indent on
syntax on
let loaded_matchparen=1
let mapleader=' '

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
colorscheme one
set incsearch ignorecase smartcase
set relativenumber number
set expandtab shiftwidth=2 softtabstop=2
set wildmenu

map ; :
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
nmap Q @q
nmap j gj
nmap k gk

nmap <leader>t :!npm test<cr>
nmap <leader>o o<esc>
nmap <leader>f :Autoformat<cr>
nmap <leader>sc :set spell spelllang=en_us<esc>
nmap <leader>e <C-w>v:terminal vifm<cr>
nmap <leader>s <C-w>v:terminal<cr>

autocmd! BufWritePost * Neomake

" Vundle stuff
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' "manages plugins
Plugin 'tpope/vim-commentary' "commenting out text as motion
Plugin 'tpope/vim-surround' "add/change surrounding elements, like doublequotes
Plugin 'scrooloose/syntastic' "syntax checker on file save
Plugin 'christoomey/vim-system-copy' "copy and paste into vim from system clipboard
Plugin 'jiangmiao/auto-pairs' "automatically add closing paren/quote
Plugin 'alvan/vim-closetag' "automatically add closing html tags
Plugin 'ctrlpvim/ctrlp.vim' "fuzzy file finder
Plugin 'rking/ag.vim' "code searching tool
Plugin 'ervandew/supertab' "smart autocomplete with tab
Plugin 'SirVer/ultisnips' "snippets
Plugin 'Chiel92/vim-autoformat' "autoformat file
Plugin 'flazz/vim-colorschemes' "colorschemes
Plugin 'scrooloose/nerdtree' "filetree
Plugin 'pangloss/vim-javascript' "better syntax/indent for js

call vundle#end()

" My stuff
filetype plugin indent on
syntax on
colorscheme BlackSea
let loaded_matchparen=1
let mapleader=' '

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set incsearch ignorecase smartcase
set relativenumber number
set expandtab shiftwidth=2 softtabstop=2
set wildmenu

map ; :
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
nmap <leader>t :!npm test<cr>
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

map <leader>n :NERDTreeToggle<cr>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:ctrlp_custom_ignore = 'node_modules/'

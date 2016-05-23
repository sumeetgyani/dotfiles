" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary' "commenting out text as motion
Plug 'tpope/vim-surround' "add/change surrounding elements, such as doublequotes
Plug 'neomake/neomake' "syntax checker on file save
Plug 'jiangmiao/auto-pairs' "automatically add closing paren/quote
Plug 'alvan/vim-closetag' "automatically add closing html tags
Plug 'rking/ag.vim' "code searching tool
Plug 'ervandew/supertab' "smart autocomplete with tab
Plug 'Chiel92/vim-autoformat' "autoformat file
Plug 'pangloss/vim-javascript' "better syntax/indent for js
Plug 'SirVer/ultisnips' "snippets
Plug 'othree/javascript-libraries-syntax.vim' "syntax for angular/lodash/etc.
Plug 'junegunn/fzf' "fuzzy file finder
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' } "distraction free writing

call plug#end()

" My stuff
filetype plugin indent on
syntax on
colorscheme one
let loaded_matchparen=1
let mapleader=' '

set incsearch ignorecase smartcase nohlsearch
set relativenumber number
set expandtab shiftwidth=2 softtabstop=2
set wildmenu

abbr /// ////////////

map ; :
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
nmap Q @q
nmap j gj
nmap k gk
nmap Y y$
nmap <C-f> :<C-f>i%s//gc<esc>hhi
nmap <C-p> :FZF<cr>

nmap <leader>w :Goyo<cr>
nmap <leader>t :!npm test<cr>
nmap <leader>o o<esc>
nmap <leader>f :Autoformat<cr>
nmap <leader>sc :set spell spelllang=en_us<esc>
nmap <leader>e <C-w>v:terminal vifm<cr>
nmap <leader>s <C-w>v:terminal<cr>

autocmd! BufWritePost * Neomake
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
let $FZF_DEFAULT_COMMAND = 'ag -l -g ""'

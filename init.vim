" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary' "commenting out text as motion
Plug 'tpope/vim-surround' "add/change surrounding elements, such as doublequotes
Plug 'neomake/neomake' "syntax checker on file save
Plug 'jiangmiao/auto-pairs' "automatically add closing paren/quote
Plug 'ervandew/supertab' "smart autocomplete with tab
Plug 'Chiel92/vim-autoformat' "autoformat file
Plug 'mxw/vim-jsx' "jsx syntax highlighting
Plug 'pangloss/vim-javascript' "better syntax/indent for js
Plug 'othree/javascript-libraries-syntax.vim' "better syntax/indent for js
" Plug 'SirVer/ultisnips' "snippets
Plug 'ctrlpvim/ctrlp.vim' "fuzzy file finder
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' } "distraction free writing
Plug 'joonty/vim-phpqa' "php linter
Plug 'StanAngeloff/php.vim' "php stuff (not sure if useful)
Plug 'mileszs/ack.vim' "code search tool

call plug#end()

" My stuff
filetype plugin indent on
syntax on

set incsearch ignorecase smartcase nohlsearch
set relativenumber number
" set expandtab shiftwidth=2 softtabstop=2
set tabstop=2 shiftwidth=2
set wildmenu

map ; :
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nmap Q @q
nmap j gj
nmap k gk
nmap Y y$
nmap <C-f> :<C-f>i%s//gc<esc>hhi

let mapleader=' '
nmap <leader>e <C-w>v:terminal vifm .<cr>
nmap <leader>f :Autoformat esformatter<cr>
nmap <leader>o o<esc>
nmap <leader>s <C-w>v:terminal<cr>
nmap <leader>sc :set spell spelllang=en_us<esc>
nmap <leader>w :Goyo<cr>
nnoremap <leader>r : !gg-repo-sync %:p<CR>

autocmd! BufWritePost * Neomake
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
let loaded_matchparen=1 "do not highlight matching paren
let g:ctrlp_custom_ignore='node_modules/'
let g:neomake_javascript_enabled_makers = ['eslint']
let g:jsx_ext_required = 0
" let g:phpqa_messdetector_ruleset = "/Users/sumeetgyani/metv-common/ops/php-linting/phpmd/ruleset.xml"
" let g:phpqa_codesniffer_args = "--error-severity=1"

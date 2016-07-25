" Plugins
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary' "commenting out text as motion
Plug 'tpope/vim-surround' "add/change surrounding elements, such as doublequotes
Plug 'tpope/vim-repeat' "allow dot operator on some other plugins
Plug 'easymotion/vim-easymotion' "move within files quicker
Plug 'neomake/neomake' "syntax checker on file save
Plug 'jiangmiao/auto-pairs' "automatically add closing paren/quote
Plug 'ervandew/supertab' "smart autocomplete with tab
Plug 'Chiel92/vim-autoformat' "autoformat file
Plug 'mxw/vim-jsx' "jsx syntax highlighting
Plug 'pangloss/vim-javascript' "better syntax/indent for js
Plug 'othree/javascript-libraries-syntax.vim' "better syntax/indent for js
Plug 'ctrlpvim/ctrlp.vim' "fuzzy file finder
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' } "distraction free writing
Plug 'StanAngeloff/php.vim' "better php stuff?
Plug 'rking/ag.vim' "code searching tool
Plug 'flazz/vim-colorschemes' "colorschemes
Plug 'SirVer/ultisnips' "snippets
Plug 'vim-scripts/ReplaceWithRegister' "let you repeat pasting

call plug#end()

" My stuff
filetype plugin indent on
syntax on
colorscheme mahowned

set incsearch ignorecase smartcase nohlsearch
set relativenumber number
set tabstop=2 shiftwidth=2
set wildmenu
set clipboard=unnamed

map ; :
nnoremap <C-e> 4<C-e>
nnoremap <C-y> 4<C-y>
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nmap Q @q
nmap j gj
nmap k gk
nmap Y y$
nmap <C-f> :<C-f>i%s//gc<esc>hhi

let mapleader=' '
nmap <leader>e <leader><leader>s
nmap <leader>f :Autoformat esformatter<cr>
nmap <leader>o o<esc>
nmap <leader>s <C-w>v:terminal<cr>
nmap <leader>sc :set spell spelllang=en_us<esc>
nmap <leader>cc :set colorcolumn=90<esc>
nmap <leader>g :Goyo<cr>
nmap <leader>y "*y
nmap <leader>p "*p
nmap <leader>d yip}o<esc>kp
nnoremap <leader>r :!gg-repo-sync %:p<CR>

autocmd! BufWritePost * Neomake
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
let loaded_matchparen=1 "do not highlight matching paren
let g:ctrlp_custom_ignore = 'node_modules\|lib'
let g:ag_working_path_mode="r"
let g:neomake_javascript_enabled_makers = ['eslint']
let g:jsx_ext_required = 0
" UltiSnips config
inoremap <silent><expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

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
Plug 'StanAngeloff/php.vim' "better php stuff?
Plug 'rking/ag.vim' "code searching tool
Plug 'flazz/vim-colorschemes' "colorschemes
Plug 'SirVer/ultisnips' "snippets
Plug 'vim-scripts/ReplaceWithRegister' "let you repeat pasting
Plug 'tpope/vim-fugitive' "git stuff
Plug 'godlygeek/tabular' "line up tabs
Plug 'majutsushi/tagbar' "outline of class
Plug 'dag/vim-fish' "fish syntax highlighting
Plug 'junegunn/limelight.vim' "highlight text
Plug 'vim-scripts/fountain.vim' "syntax for fountain files
Plug 'reedes/vim-wordy' "fix wordy writing

call plug#end()

" Personal changes
filetype plugin indent on
syntax on
colorscheme mahowned

set incsearch ignorecase smartcase nohlsearch
set relativenumber number
set tabstop=2 shiftwidth=2
set path+=**
set clipboard=unnamed
set wildmenu
set ruler

map ; :
nmap Q @q
nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>
nmap j gj
nmap k gk
nmap ' `
nmap Y y$
nmap <C-f> :<C-f>i%s//gc<esc>hhi
vmap y ygv<esc>
vmap . :normal .<CR>

" centering screen after actions
nmap n nzz
nmap N Nzz
nmap <silent> * *zz
nmap <silent> g* g*zz
nmap <silent> # #zz

" leader commands
let mapleader=' '
nmap <leader>su :w !sudo tee % > /dev/null<CR>
nmap <leader>t :TagbarOpenAutoClose<cr>
nmap <leader>p :Ag<space>'
nmap <leader>e <leader><leader>s
nmap <leader>f :Autoformat esformatter<cr>
nmap <leader>o o<esc>
nmap <leader>sc :set spell spelllang=en_us<esc>
nmap <leader>cc :set colorcolumn=90<esc>
nmap <leader>d yip}o<esc>kp
nmap <leader>as :Tabularize /\sas<CR>
nmap <leader>= :Tabularize /=<CR>
nmap <leader>r :!gg-repo-sync %:p<CR>
nmap <leader>l :Limelight!!<CR>

" Make netrw work like nerdtree
let g:netrw_banner=0
let g:netrw_liststyle=3

" Plugin options
au BufRead,BufNewFile *.fountain	set filetype=fountain
autocmd! BufWritePost * Neomake
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
let loaded_matchparen=1 "do not highlight matching paren
let g:ctrlp_custom_ignore = 'bower_components/\|node_modules/\|lib/\|public/'
let g:ag_working_path_mode="r"
let g:neomake_javascript_enabled_makers = ['eslint']
let g:jsx_ext_required = 0
inoremap <silent><expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>" 
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:tagbar_iconchars = ['▸', '▾']

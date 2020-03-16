" PLUGINS
call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'                              " Distraction free writing
Plug 'junegunn/fzf'                                   " Fuzzy file finding
Plug 'danilo-augusto/vim-afterglow'
call plug#end()

" SETTINGS
set incsearch ignorecase smartcase nohlsearch
set relativenumber number
colorscheme afterglow

" LEADER MAPPINGS
let mapleader=' '
nmap <leader>p :FZF!<CR>

" REMAPPING
map ; :

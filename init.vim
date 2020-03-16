" PLUGINS
call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'                              " Distraction free writing
Plug 'junegunn/fzf'                                   " Fuzzy file finding
Plug 'danilo-augusto/vim-afterglow'                   " Theme
call plug#end()

" SETTINGS
colorscheme afterglow
set incsearch ignorecase smartcase nohlsearch
set relativenumber number

" LEADER MAPPINGS
let mapleader=' '
nmap <leader>p :FZF!<CR>
nmap <leader>g :Goyo<CR>

" REMAPPING
map ; :

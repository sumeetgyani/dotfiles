" PLUGINS
call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'                              " Distraction free writing
Plug 'junegunn/fzf'                                   " Fuzzy file finding
call plug#end()

" SETTINGS
set relativenumber number

" LEADER MAPPINGS
let mapleader=' '
nmap <leader>p :FZF!<CR>

" REMAPPING
map ; :

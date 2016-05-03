filetype plugin indent on
syntax on

" easier to type
nnoremap ; :
vnoremap ; :
" move based on screen rather than actual lines
nnoremap j gj
nnoremap k gk
" stay consistent with C and D
nnoremap Y y$
" avoid entering Ex mode, replace with formatting whole file
nnoremap Q gg=G

set incsearch
" Set relative number, with current line being absolute
set rnu
set number

" Always use 2 spaces for tabs
set expandtab
set shiftwidth=2
set softtabstop=2

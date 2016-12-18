" Basic vimrc
filetype plugin indent on
syntax on

set path+=** " Lets you do things like 'find *' to have a fuzzy file finder substitute
set wildmenu " Lets you tab complete all options
set relativenumber number " Show relative numbers and actual line number for current line
set incsearch ignorecase smartcase " Make searching nice

" Netrw
let g:netrw_banner=0 " Don't show halfscreen banner
let g:netrw_liststyle=3 " Make netrw work like nerdtree

" Mappings
map ; :


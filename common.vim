set nocompatible
let mapleader = ","
nnoremap \ ,

"-------------------------------------------------------------------------------
" line numbers
set number                   " Show line numbers
set relativenumber           " Show relative line numbers

"-------------------------------------------------------------------------------
" tabs
set tabstop=4                " Tabs are displayed as 4 spaces
set shiftwidth=4             " Shifts using > are 4 spaces
set expandtab                " Tabs are converted to spaces.

"-------------------------------------------------------------------------------
" search and replace
" turn off magic in search
nnoremap / /\v
vnoremap / /\v
set ignorecase               " When searching, case of normal letters is ignored
set smartcase                " Ignore case when the pattern contains lowercase letters only
set gdefault                 " flag 'g' is default on
set incsearch                " Enable incremental search
set hlsearch                 " Enable search hightlighting
set showmatch                " % will briefly jump to match
" clear search results
nnoremap <leader><space> :noh<cr>

"nnoremap ; :
"nnoremap : :

set clipboard=unnamed " Use the system clipboard for y and p

" Map Alt-j/k to move lines up and down.
nnoremap <silent> <A-j> <C-E><C-E><C-E>
nnoremap <silent> <A-k> <C-Y><C-Y><C-Y>

filetype off " required!

let &rtp=&rtp.",".myvimpath."\\bundle\\vundle"
call vundle#rc(myvimpath."\\bundle")

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-surround'
"vmap s S " Map visual mode to use s and not S

Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'
if has('gui_running')
    set sessionoptions+=resize,winpos
    let g:session_autoload='yes'
    let g:session_autosave='yes'
endif

"Bundle 'scrooloose/nerdtree'
"let NERDTreeHijackNetrw = 0

" Walk through installed colorschemes using arrow keys. 
Bundle 'ScrollColors'

Bundle 'Colour-Sampler-Pack'
if has('gui_running')
    colorscheme inkpot
endif
"Bundle 'altercation/vim-colors-solarized'
"Bundle 'tomasr/molokai'
"Bundle 'zeis/vim-kolor'

Bundle 'mbbill/VimExplorer'
Bundle 'eiginn/netrw'
"Bundle 'netrw.vim'
"Bundle 'bufexplorer.zip'

Bundle 'vim-pandoc/vim-pandoc'
let g:pandoc_no_folding = 1

Bundle 'xolox/vim-shell'
Bundle 'tpope/vim-repeat'
Bundle 'PProvost/vim-ps1'

"Bundle 'xolox/vim-notes'
"let g:notes_suffix = '.md'
"let g:notes_smart_quotes = 0
"au BufNewFile,BufRead *.md set filetype=pandoc

" vim-snipmate dependancies
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/vim-snippets"

" vim-snipmate
Bundle "garbas/vim-snipmate"

" Python stuff
Bundle 'davidhalter/jedi-vim'

filetype plugin indent on     " required!

filetype off " required!

let &rtp=&rtp.",".myvimpath."\\bundle\\neobundle.vim"
call neobundle#rc(myvimpath."\\bundle")

" required! 
NeoBundle 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'mingw32-make.exe -f make_mingw32.mak'
      \    },
      \ }

"NeoBundle 'Shougo/vimfiler.vim'
"NeoBundle 'Shougo/unite.vim'
"call unite#filters#matcher_default#use(['matcher_fuzzy'])
"let g:unite_source_history_yank_enable = 1
"nnoremap <leader>mb :Unite -no-split -buffer-name=buffer -start-insert buffer<cr>
"nnoremap <leader>mf :Unite -no-split -buffer-name=files  -start-insert file_rec/async<cr>
"nnoremap <leader>mg :Unite grep:.<cr>

NeoBundle 'tpope/vim-surround'
"vmap s S " Map visual mode to use s and not S

NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-session'
if has('gui_running')
    set sessionoptions+=resize,winpos
    let g:session_autoload='yes'
    let g:session_autosave='yes'
endif

" Walk through installed colorschemes using arrow keys. 
"NeoBundle 'ScrollColors'
"NeoBundle 'Colour-Sampler-Pack'
NeoBundle 'w0ng/vim-hybrid'
"NeoBundle 'dandorman/vim-colors'
"NeoBundle 'flazz/vim-colorschemes'
"NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'xolox/vim-colorscheme-switcher'
if has('gui_running')
    "colorscheme inkpot
    "colorscheme maroloccio
    "colorscheme jellybeans
    "colorscheme rootwater
    colorscheme hybrid
    "colorscheme candyman
    "colorscheme darkrobot
endif

NeoBundle 'mbbill/VimExplorer'
NeoBundle 'eiginn/netrw'
NeoBundle 'xolox/vim-shell'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'PProvost/vim-ps1'
"NeoBundle 'yonchu/accelerated-smooth-scroll'
"NeoBundle 'Kazark/vim-SimpleSmoothScroll'

" vim-snipmate dependancies
NeoBundle "MarcWeber/vim-addon-mw-utils"
NeoBundle "tomtom/tlib_vim"
NeoBundle "honza/vim-snippets"

" vim-snipmate
NeoBundle "garbas/vim-snipmate"

" Python stuff
NeoBundle 'davidhalter/jedi-vim'

NeoBundle 'vim-pandoc/vim-pandoc'
let g:pandoc_no_folding = 1

NeoBundle 'vim-scripts/VOoM'
NeoBundle 'vimwiki/vimwiki'

"let wiki_1 = {}
"let wiki_1.path = '~/my_docs/'
let wiki_1.ext = '.md'
let wiki_1.syntax = 'markdown'
let g:vimwiki_list = [wiki_1]
autocmd BufWinEnter,BufLeave,BufEnter */dropbox/notes/*.md set syntax=vimwiki

"Bundle 'scrooloose/nerdtree'
"let NERDTreeHijackNetrw = 0

"NeoBundle 'altercation/vim-colors-solarized'
"NeoBundle 'tomasr/molokai'
"NeoBundle 'zeis/vim-kolor'
"NeoBundle 'bufexplorer.zip'
"
"NeoBundle 'xolox/vim-notes'
"let g:notes_suffix = '.md'
"let g:notes_smart_quotes = 0
"au BufNewFile,BufRead *.md set filetype=pandoc

filetype plugin indent on     " required!

" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck

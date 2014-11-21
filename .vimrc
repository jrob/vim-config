﻿"let wiki_1 = {}
"let wiki_1.path = 's:\dropbox\notes'
" let myvimpath="s:\\dropbox\\bak\\vim"
" source s:\dropbox\bak\vim\.vimrc

set nocompatible

" This needs to be done before other mappings. Otherwise alt mappings dont
" work.
set encoding=utf-8       " Set default encoding to utf-8
set fileencoding=utf-8   " Set default encoding to utf-8

"-------------------------------------------------------------------------------
exec "source ".myvimpath."\\backup-undo.vim"
exec "source ".myvimpath."\\common.vim"
exec "source ".myvimpath."\\abbreviations.vim"
exec "source ".myvimpath."\\neobundle.vim"
exec "source ".myvimpath."\\line-move.vim"
exec "source ".myvimpath."\\line-delete.vim"
exec "source ".myvimpath."\\formd.vim"
exec "source ".myvimpath."\\netrw.vim"
exec "source ".myvimpath."\\pandoc.vim"
"-------------------------------------------------------------------------------

set wildmenu             " enables a menu at the bottom of the vim/gvim window
set scrolloff=3          " Minimal number of screen lines to keep above and below the cursor
set autoindent           " Copy indent from current line when starting a new line
"set showmode            " If in Insert, Replace or Visual mode '.put a message on the last line.
"set ttyfast             " Indicates a fast terminal connection
set ruler                " dislpay line,row
set laststatus=2         " Always show the status line
"set undofile
set showcmd              " Show (partial) command in the last line of the screen
syntax enable            " Automatically show syntax colors
set syntax=automatic     " Choose syntax automatically
set clipboard+=unnamed   " Use the system clipboard for y and p
set history=10000        " remember more commands and search history
set undolevels=10000     " use many muchos levels of undo
"set autochdir           " Change directory to the current buffer when opening files.

" vim litter
"set nobackup            " Do not create backup files when saving over existing files
"set nowritebackup       " A little paranoid, but disable the writebackup function as well
"set noswapfile          " No swap files when editing please

set listchars=tab:»\     " Show Tab Characters
"set listchars+=eol:¬    " Make Line Wraps More Noticeable
"set listchars+=trail:·  " Show Trailing Whitespace
"set listchars&          " This will reset the listchars option to the default
"set list
autocmd FileType * set list
autocmd FileType qf,help set nolist

"autocmd FileType pandoc,vim,vimwiki set list


" Set the cursor to the same as windows default
set guicursor=n-v-c:block-Cursor/lCursor-Cursor-blinkwait530-blinkoff530-blinkon530,ve:ver35-Cursor-Cursor-blinkwait530-blinkoff530-blinkon530,o:hor50-Cursor-Cursor-blinkwait530-blinkoff530-blinkon530,i-ci:ver25-Cursor/lCursor-Cursor-blinkwait530-blinkoff530-blinkon530,r-cr:hor20-Cursor/lCursor,sm:block-Cursor-blinkwait530-blinkoff530-blinkon530

if has("win32")
    :set shell=C:\Windows\system32\cmd.exe\ /d
endif


if has('gui_running')
    set guioptions-=T  "remove toolbar
    set guioptions-=m  "remove menu bar
    set guioptions-=T  "remove toolbar
    set guioptions-=r  "remove right-hand scroll bar
    set guioptions-=R
    set guioptions-=l
    set guioptions-=L
    set guioptions-=e

    " Set the fontet if running in the gui
    " Compatible consolas powerline font set.
    " https://github.com/runsisi/consolas-font-for-powerline
    set guifont=Powerline_Consolas:h10:cANSI " 2014-10-24

    " Set a better diff color scheme
    highlight DiffAdd        term=bold ctermbg=9 guifg=NONE guibg=#CCF5CC
    highlight DiffDelete     term=bold ctermfg=9 ctermbg=11 guifg=NONE guibg=#FFB2B2
    highlight DiffChange     term=bold ctermbg=13 guifg=NONE guibg=#DCCAFF
    highlight DiffText       term=reverse cterm=bold ctermbg=12 gui=bold guifg=NONE guibg=#B894FF
endif

" vim
" ---
noremap <C-s> :write<CR>

highlight ExtraWhitespace ctermbg=darkblue guibg=darkblue

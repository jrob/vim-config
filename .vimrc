"let wiki_1 = {}
"let wiki_1.path = 's:\dropbox\notes'
" let myvimpath="s:\\dropbox\\bak\\vim"
" source s:\dropbox\bak\vim\.vimrc

set nocompatible

" This needs to be done before other mappings. Otherwise alt mappings dont
" work.
set encoding=utf-8          " Set default encoding to utf-8
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
"set listchars&          " This will reset the listchars option to the default:
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
endif

" Pandoc
"nmap <silent> <leader>mc :silent ! pandoc "%:p" -H %:p:hRender\header.html -B %:p:hRender\body.html -A %:p:hRender\footer.html -o %:p:hRender\output.html <CR>
"nmap <silent> <leader>mc :%! pandoc -H %:p:hRender\header.html -B %:p:hRender\body.html -A %:p:hRender\footer.html -o %:p:hRender\output.html <CR>
"nmap <silent> <leader>mx :silent call xolox#misc#os#exec({'command': 'pandoc "%:p" -H %:p:hRender\header.html -B %:p:hRender\body.html -A %:p:hRender\footer.html -o %:p:hRender\output.html', 'async': 0}) <CR>


"map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>

" noremap <C-PageUp> :bp
" noremap <C-PageDown> :bn
" noremap <C-F4> :bd

highlight ExtraWhitespace ctermbg=darkblue guibg=darkblue

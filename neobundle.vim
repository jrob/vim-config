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


NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-session'
if has('gui_running')
    set sessionoptions+=resize,winpos
    let g:session_autoload='yes'
    let g:session_autosave='yes'
    "let g:session_default_to_last=1
endif

" Walk through installed colorschemes using arrow keys. 
"NeoBundle 'ScrollColors'
"NeoBundle 'Colour-Sampler-Pack'
NeoBundle 'w0ng/vim-hybrid'
"NeoBundle 'dandorman/vim-colors'
NeoBundle 'flazz/vim-colorschemes'
"NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'xolox/vim-colorscheme-switcher'
"NeoBundle 'jonathanfilip/vim-lucius'
nnoremap <F9> :let @A = g:colors_name."','"<CR>
let g:colorscheme_switcher_exclude = [
    \ 'default',
    \ 'koehler','morning','murphy',
    \ 'shine','zellner','blue','elflord',
    \ 'pablo','ron','peachpuff','torte','darkblue','delek',
    \ 'ibmedit','impact','ironman','jhdark','khaki','3dglasses','adam','adobe','adrian','af','aiseered','aqua','astronaut',
    \ 'asu1dark','badwolf','basic','bayQua','billw','blacklight','bluez','bog','borland','breeze','brown','busierbee','bw','c','calmar256-light','campfire','carrot','carvedwoodcool','chela_light','chlordane','ChocolateLiquor','cleanphp',
    \ 'adaryn','advantage','ansi_blows','baycomb','beachcomber','bensday','blackbeauty','bluegreen','bluegreen','blueprint','blugrine','bmichaelsen',
    \ 'busybee','buttercream','charon','chocolate','ChocolatePapaya','clarity','cloudy','clue','codeblocks_dark','coffee','colorer','colorful','colorful256','colorscheme_template','colorzone','contrasty','cool','corn','cthulhian','custom','d8g_01','d8g_02','dante',
    \ 'dark-ruby','darkblack','darkBlue','darkbone','darkdot','darker-robin','darkocean','darkroom',
    \ 'darkzen','delphi','derefined','desertedocean','desertedoceanburnt','deveiate',
    \ 'd8g_04','denim','django','doorhinge','doriath','earth','edo_sea','ekvoli','elise','elisex','far',
    \ 'fnaqevan','fog','gardener','gemcolors','golden','google','gor','gothic','greens','greenvision','greyblue','guardian','guepardo','h80','impactG','kib_plastic',
    \ 'legiblelight','lilac','lilydjwg_dark','lilydjwg_green','luinnar','made_of_code','manxome','marklar','mars','matrix','mellow','miko','miko','MountainDew','mud','navajo','navajo-night','neutron','nicotine','night_vision','nightVision','oceanblack256','oceanlight','orange','pink','potts',
    \ 'tabula','telstar','tetragrammaton','thestars','tibet','tomatosoup','twilight256','vylight','wargrey','widower','win9xblueback','wood','xian','xmaslights','zen'
    \ ]
if has('gui_running')
    "colorscheme inkpot
    "colorscheme maroloccio
    "colorscheme jellybeans
    "colorscheme rootwater
    "colorscheme hybrid-light
    "colorscheme candyman
    "colorscheme darkrobot
    "colorscheme dual
    "set background=light
    let moria_style='white'
    colorscheme moria
    "colorscheme eclipse
endif

NeoBundle 'mbbill/VimExplorer'
NeoBundle 'eiginn/netrw'
NeoBundle 'xolox/vim-shell'
NeoBundle 'PProvost/vim-ps1'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-unimpaired'
"NeoBundle 'yonchu/accelerated-smooth-scroll'
"NeoBundle 'Kazark/vim-SimpleSmoothScroll'
NeoBundle 'dhruvasagar/vim-table-mode'
NeoBundle 'godlygeek/tabular'

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
let g:vimwiki_table_mappings = 0
let g:vimwiki_table_auto_fmt = 0

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

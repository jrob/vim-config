filetype off " required!

let &rtp=&rtp.",".myvimpath."\\bundle\\neobundle.vim"
call neobundle#rc(myvimpath."\\bundle")

" required!
NeoBundle 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'tools\\update-dll-mingw',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }

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
"neoBundle 'dandorman/vim-colors'
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
    "set background=light
    "colorscheme eclipse
    " ----- 2014-10-10 -----
    "let moria_style='white'
    "colorscheme moria
    " ----- 2014-10-10 -----
    "colorscheme dual
    " ----- 2014-10-24 -----
    let moria_style='white'
    colorscheme moria
endif

NeoBundle 'eiginn/netrw'
NeoBundle 'xolox/vim-shell'
NeoBundle 'PProvost/vim-ps1'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'godlygeek/tabular'
NeoBundle 'tpope/vim-markdown'
let g:vim_markdown_folding_disabled=1
NeoBundle 'MarcWeber/vim-addon-mw-utils'  " vim-snipmate dependancies
NeoBundle 'tomtom/tlib_vim'               " vim-snipmate dependancies
NeoBundle 'honza/vim-snippets'            " vim-snipmate dependancies
NeoBundle 'garbas/vim-snipmate'           " vim-snipmate
NeoBundle 'davidhalter/jedi-vim'          " Python stuff
NeoBundle 'ntpeters/vim-better-whitespace'
let g:better_whitespace_filetypes_blacklist=['qf', 'help']

NeoBundle 'chrisbra/csv.vim'
NeoBundle 'jlanzarotta/bufexplorer'
NeoBundle 'vim-ruby/vim-ruby'

" Compatible consolas powerline font set.
" https://github.com/runsisi/consolas-font-for-powerline
NeoBundle 'bling/vim-airline'      " Improved status line
let g:airline_theme='light'
let g:airline_powerline_fonts = 1

filetype plugin indent on     " required!

" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck

filetype off " required!

let &rtp=&rtp.",".myvimpath."\\bundle\\neobundle.vim"
call neobundle#begin(myvimpath."\\bundle")

" required!
NeoBundleFetch 'Shougo/neobundle.vim'

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
NeoBundle 'vim-scripts/moria'
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

NeoBundle 'eiginn/netrw'                    " Default in file browser
NeoBundle 'xolox/vim-shell'
NeoBundle 'PProvost/vim-ps1'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'davidhalter/jedi-vim'            " Python stuff
NeoBundle 'ntpeters/vim-better-whitespace'  " whitespace display and cleanup
NeoBundle 'chrisbra/csv.vim'
NeoBundle 'jlanzarotta/bufexplorer'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'OrangeT/vim-csharp'              " C# sytanx file
NeoBundle 'gerw/vim-HiLinkTrace'
NeoBundle 'vim-airline/vim-airline'               " Improved status line
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'tpope/vim-fugitive'              " Git wrapper
NeoBundle 'gregsexton/gitv'                 " Git Log viewer
NeoBundle 'junegunn/vim-easy-align'         " An alternative alignment plugin

call neobundle#end()

filetype plugin indent on     " required!

" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck

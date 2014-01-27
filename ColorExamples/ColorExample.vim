NeoBundle 'xolox/vim-misc'
NeoBundle 'xolox/vim-session'
if has('gui_running')
    set sessionoptions+=resize,winpos
    let g:session_autoload='yes'
    let g:session_autosave='yes'
    "let g:session_default_to_last=1
endif

"nnoremap <leader>mb :Unite -no-split -buffer-name=buffer -start-insert buffer<cr>
"nnoremap <leader>mf :Unite -no-split -buffer-name=files  -start-insert file_rec/async<cr>
"nnoremap <leader>mg :Unite grep:.<cr>

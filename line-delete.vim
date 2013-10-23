" http://vim.wikia.com/wiki/Quickly_adding_and_deleting_empty_lines

" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
"nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
"nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent> <A-J> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent> <A-K> :set paste<CR>m`O<Esc>``:set nopaste<CR>

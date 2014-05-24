" a function to execute formd and return the cursor back
" to it's original position within the buffer.

" This script assumes formd is in your path at:
" ~/bin/formd/formd
" http://drbunsen.github.com/formd/


function! Formd(option)
    :let save_view = winsaveview()
    :let flag = a:option
    :if flag == "-r"
        :%! formd -r
    :elseif flag == "-i"
        :%! formd -i
    :else
        :%! formd -f
    :endif
    :call winrestview(save_view)
endfunction

" formd mappings

nnoremap <leader>fr :call Formd("-r")<CR>
nnoremap <leader>fi :call Formd("-i")<CR>
nnoremap <leader>f :call Formd("-f")<CR>

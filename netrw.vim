" http://modal.us/blog/2013/07/27/back-to-vim-with-nerdtree-nope-netrw/

" Toggle Vexplore with Ctrl-E
function! ToggleVExplorer()
  if exists("t:expl_buf_num")
      let expl_win_num = bufwinnr(t:expl_buf_num)
      if expl_win_num != -1
          let cur_win_nr = winnr()
          exec expl_win_num . 'wincmd w'
          close
          exec cur_win_nr . 'wincmd w'
          unlet t:expl_buf_num
      else
          unlet t:expl_buf_num
      endif
  else
      exec '1wincmd w'
      Vexplore
      let t:expl_buf_num = bufnr("%")
  endif
endfunction
map <silent> <C-E> :call ToggleVExplorer()<CR>

" Hit enter in the file browser to open the selected
" file with :vsplit to the right of the browser.
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_hide = 1

" Default to tree mode
let g:netrw_liststyle=3

" Set the sort order.
let g:netrw_sort_by = "time"
let g:netrw_sort_direction = "reverse"
let g:netrw_winsize = 20
let g:netrw_keepdir = 0

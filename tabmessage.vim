" This function will take the a command's output and display
" http://vim.wikia.com/wiki/Capture_ex_command_output

" Example usage:
" :TabMessage highlight
function! TabMessage(cmd)
  redir => message
  silent execute a:cmd
  redir END
  tabnew
  silent put=message
  set nomodified
endfunction
command! -nargs=+ -complete=command TabMessage call TabMessage(<q-args>)

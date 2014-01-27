" http://stackoverflow.com/questions/4331776/change-vim-swap-backup-undo-file-name
"
" Save your backups to a less annoying place than the current directory.
" If you have .vim-backup in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/backup or . if all else fails.
if isdirectory($HOME . '/.vim/backup') == 0
  if has("win32")
    :silent !mkdir \%USERPROFILE\%\.vim\backup
  else
    :silent !mkdir -p ~/.vim/backup >/dev/null 2>&1
  endif
endif
set backupdir-=.
set backupdir+=.
set backupdir-=~/
set backupdir^=~/.vim/backup/
set backupdir^=./.vim-backup/
set backup

" Save your swp files to a less annoying place than the current directory.
" If you have .vim-swap in the current directory, it'll use that.
" Otherwise it saves it to ~/.vim/swap, ~/tmp or .
if isdirectory($HOME . '/.vim/swap') == 0
  if has("win32")
    :silent !mkdir \%USERPROFILE\%\.vim\swap
  else
    :silent !mkdir -p ~/.vim/swap >/dev/null 2>&1
  endif
endif
set directory=./.vim-swap//
set directory+=~/.vim/swap//
set directory+=~/tmp//
set directory+=.

" viminfo stores the the state of your previous editing session
set viminfo+=n~/.vim/viminfo

if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($HOME . '/.vim/undo') == 0
    if has("win32")
      :silent !mkdir \%USERPROFILE\%\.vim\undo
    else
      :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
    endif
  endif
  set undodir=./.vim-undo//
  set undodir+=~/.vim/undo//
  set undofile
endif

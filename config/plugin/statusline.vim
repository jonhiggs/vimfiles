func! WorkingDir()
  return substitute(getcwd(), $HOME, "~", "")
endfunc

set laststatus=2
set statusline=%{WorkingDir()}/%f\ %m
set statusline+=%=
set statusline+=[%l:%c]
set statusline+=\ %y

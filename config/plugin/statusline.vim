func! WorkingDir()
  return substitute(getcwd(), $HOME, "~", "")
endfunc

set laststatus=2
set statusline=
set statusline+=%{WorkingDir()}
set statusline+=%=%y

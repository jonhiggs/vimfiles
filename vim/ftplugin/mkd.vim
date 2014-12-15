setlocal autoindent ts=4 sw=4 sts=4 tw=79 spell

setlocal formatoptions-=t
setlocal linebreak
setlocal nonumber
setlocal wrap
setlocal columns=79       " wrap at 79 columns regardless of size of buffer.
setlocal colorcolumn=0

if has('gui_running')
  set guioptions=''
  set showtabline=0
  set laststatus=0
  nmap <F12> :VimroomToggle<CR>
else
  setlocal foldcolumn=12
endif

map <buffer> <S-m> :!/Applications/Marked.app/Contents/Resources/mark %<CR><CR>

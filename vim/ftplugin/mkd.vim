setlocal autoindent ts=4 sw=4 sts=4 tw=79 spell

setlocal formatoptions-=t
setlocal linebreak
setlocal nonumber
setlocal wrap
setlocal columns=79       " wrap at 79 columns regardless of size of buffer.

if has('gui_running')
  set laststatus=0
else
  setlocal foldcolumn=12
endif

map <buffer> <S-m> :!/Applications/Marked.app/Contents/Resources/mark %<CR><CR>

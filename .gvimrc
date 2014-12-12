set guifont=Cousine:h24
set antialias
set fullscreen

" configure buffer movement
if has("gui_macvim")
  "    " configure the buffer movement
  "    macmenu &Tools.List\ Errors     key=<nop>
  "    map <D-h> <C-w>h
  "    map <D-j> <C-w>j
  "    map <D-k> <C-w>k
  "    map <D-l> <C-w>l

  " swipe between tabs in macvim.
  nnoremap <silent> <SwipeLeft> :tabnext<CR>
  nnoremap <silent> <SwipeRight> :tabprevious<CR>
endif

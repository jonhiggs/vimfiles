" Configure the font to terminus
set guifont=Terminus\ \(TTF\):h12
set noantialias

" Remove gVim GUI noise
set guioptions-=m
set guioptions-=T
set guioptions-=l
set guioptions-=r
set guioptions-=b

" configure navigation.
if has("gui_gtk2")
  map <C-n> :tabnext<CR>
  map <C-p> :tabprevious<CR>
endif

" configure buffer movement
if has("gui_macvim")
  " configure the buffer movement
  macmenu &Tools.List\ Errors     key=<nop>
  map <D-h> <C-w>h
  map <D-j> <C-w>j
  map <D-k> <C-w>k
  map <D-l> <C-w>l

  " swipe between tabs in macvim.
  nnoremap <silent> <SwipeLeft> :tabnext<CR>
  nnoremap <silent> <SwipeRight> :tabprevious<CR>
endif

" configure trailertrash
call ShowTrailerTrash()
highlight   UnwantedTrailerTrash  guibg=red       ctermbg=red

" reload on each change
au BufWritePost .gvimrc so ~/.gvimrc

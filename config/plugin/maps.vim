" Disable Ex and remap Macros to Q
nnoremap Q q
nnoremap q <Nop>

" Map qq to wrap paragraph
nnoremap qq gqip

" Tab Shortcuts
map <C-n> :tabnext<CR>
map <C-p> :tabprevious<CR>

" Make Y behave like other capitals
map Y y$

" move between panes.
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

" <C-h> is mapped to backspace on ML62. Add a fix in.
nmap <silent> <Backspace> :wincmd h<CR>

" Toggle Paste
set pastetoggle=<F1>
autocmd InsertLeave * :set nopaste

" Toggle Search Highlighting
map <F2> :set hlsearch!<CR>
autocmd InsertEnter * :set nohlsearch

" Toggle Spell Highlighting
map <F3> :setlocal spell! spell?<CR>
map <F7> :tabe ~/.local/src/vimfiles/config/after/plugin/abolish.vim<CR>

map <F10> :q<CR>

" Goyo
map <F12> :Goyo<CR>:GitGutterEnable<CR>

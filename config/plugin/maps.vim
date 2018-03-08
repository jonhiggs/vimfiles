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

" Paste
set pastetoggle=<F1>
autocmd InsertLeave * :set nopaste

" Search Highlighting
map <F2> :set hlsearch!<CR>
autocmd InsertEnter * :set nohlsearch

" Redraw Screen
map <F5> :GitGutterAll<CR>:redraw!<CR>:echom expand('%:p')<CR>

" MacDict
map <F10> "dyiw:call MacDict(@d)<CR>

" Goyo
map <F12> :Goyo<CR>:GitGutterEnable<CR><F5>

" Save with esc in command mode
nnoremap <Esc> :w<CR>

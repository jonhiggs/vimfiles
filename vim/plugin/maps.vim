set pastetoggle=<F1>
map <F2> :set hlsearch!<CR>

" Tab Shortcuts
map <C-n> :tabnext<CR>
map <C-p> :tabprevious<CR>

" Redraw Screen
map <F5> :GitGutterAll<CR>:redraw!<CR>

" Goyo
map <F12> :Goyo<CR>:GitGutterEnable<CR><F5>

" MacDict
map <F11> "dyiw:call MacDict(@d)<CR>

" Disable EX mode
map Q <Esc>

" Make Y behave like other capitals
map Y y$

" move between panes.
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

" <C-h> is mapped to backspace on ML62. Add a fix in.
nmap <silent> <Backspace> :wincmd h<CR>

" fix current word with first spelling suggestion.
map Z 1z=

" Horizontal Rule.
"   c3w for example doesn't work.
"map 3 :exec ":normal i".repeat("#",79)<CR>

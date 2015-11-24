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

" fix current word with first spelling suggestion.
map Z 1z=

" Setup the F Key maps.
set pastetoggle=<F1>
map <F2> :set hlsearch!<CR>
map <F3> :setlocal spell! spell?<CR>

" Redraw Screen
map <F5> :GitGutterAll<CR>:redraw!<CR>

" MacDict
map <F10> "dyiw:call MacDict(@d)<CR>

" Goyo
map <F12> :Goyo<CR>:GitGutterEnable<CR><F5>

" Horizontal Rule.
"   c3w for example doesn't work.
"map 3 :exec ":normal i".repeat("#",79)<CR>
"

" Readline Shortcuts
imap <M-b>  <C-O>b
imap <M-f>  <C-O>e<C-O>l
imap <M-f>  <C-O>e<C-O>l
imap <C-a>  <C-O>^
imap <C-e>  <C-O>$
imap <M-BS> <C-O>b<C-O>dE

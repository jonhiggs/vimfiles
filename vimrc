syntax on
set backspace=indent,eol,start        " allow backspace to delete before insert point.
set clipboard=unnamed
set colorcolumn=80
set expandtab
set laststatus=2
set modeline                          " make sure the modeline is used if it exists.
set mouse=a
set nocursorline                      " disabled because it makes keyboard repeat too slow.
set nofoldenable
set nowrap
set nu
set ruler
set scrolloff=8                       " start scrolling before reaching the bottom.
set showtabline=2
set sw=2
set t_Co=256                          " enable 256 colors
set ts=2
set visualbell

set background=dark
colorscheme ir_black

" Set pwd to the current file.
set autochdir

" Load Pathogen
call pathogen#infect()

" Configure the colorcolumn
highlight   ColorColumn           guibg=#3C111A   ctermbg=52
highlight   Comment               ctermbg=232     ctermfg=237
highlight   Cursor                guibg=#00FD39   guifg=#000000
highlight   CursorLine            guibg=#111111
highlight   LineNr                ctermbg=232     ctermfg=237
highlight   NonText               guifg=#3C3C3C   ctermfg=12
highlight   SignColumn            guibg=black     ctermbg=none      " GitGutter
highlight   SpecialKey            guibg=#111111
highlight   TabLine               ctermfg=242     ctermbg=234
highlight   TabLineFill           ctermfg=234
highlight   TabLineSel            ctermfg=15      ctermbg=25
highlight   UnwantedTrailerTrash  guibg=red       ctermbg=52

" Configure the invisible characters
set listchars=tab:▸\ ,eol:$

" make Y behave like other capitals
map Y y$
" disable ex mode
map Q <Esc>

" map for next and previous tabs
map <C-n> gt
map <C-p> gT

" add a horizontal rule
map 3 :exec ":normal i".repeat("#",79)<CR>

" Enable Spell Checking
set nospell
set spelllang=en_gb
set encoding=utf-8
set spellfile=~/Repos/dotfiles/dictionary/custom-dictionary.utf-8.add
set dict=~/Repos/dotfiles/dictionary/custom-dictionary.utf-8.add
set dict+=~/Repos/dotfiles/dictionary/en_gb-words.txt
set complete=.          " current buffer
set complete+=w         " buffers in other windows
set complete+=b         " other loaded buffers
set complete+=t         " tags
set complete+=i         " included files
set complete+=k         " dictionaries

" fix last typo with first suggested substitution.
map Z [s1z=``
" fix current word with first spelling suggestion.
map z 1z=

" SOME SHORTCUTS I'M GOING TO FORGET.
"
"     1z=           substitute word for first suggested word.
"     [s            go to last spelling mistake.
"     `]            move to the last insert point.
"     ``            go back to whence you came.
"     zg            the word is good.
"

" Configure ctrlp
let g:ctrlp_map = '<c-t>'
let g:ctrlp_prompt_mappings = {
\ 'AcceptSelection("e")': [],
\ 'AcceptSelection("t")': ['<ct>', '<c-m>'],
\ }
" Configure airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


" Configure ag - The Silver Searcher
if executable('ag')
  let g:agprg="/usr/local/bin/ag --column"
  map <c-S> :Ag
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Configure tig
map <C-G> :! EDITOR="/usr/local/bin/vim --remote-tab" /usr/local/bin/tig status <CR><CR>

" Setup file type for unsupported extensions.
au! BufRead,BufNewFile *.markdown set filetype=markdown
au! BufRead,BufNewFile *.md       set filetype=markdown
au! BufRead,BufNewFile *.pill     set filetype=ruby

" Configure standard settings for file types.
autocmd FileType json            setlocal autoindent ts=2 sw=2 sts=2 nospell
autocmd FileType make            setlocal autoindent ts=4 sw=4 sts=4 noexpandtab list
autocmd FileType markdown        setlocal autoindent ts=4 sw=4 sts=4 tw=79
autocmd FileType python          setlocal autoindent ts=4 sw=4 sts=4
autocmd FileType ruby,eruby,yaml setlocal autoindent ts=2 sw=2 sts=2 expandtab
autocmd FileType sh              setlocal autoindent ts=2 sw=2 sts=2 expandtab

" configure chef
map <c-b> :ChefFindAnySplit<CR>

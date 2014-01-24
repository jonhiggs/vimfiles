syntax on
set ts=2
set sw=2
set expandtab
set nu
set mouse=a
set modeline
set visualbell
set ruler
set clipboard=unnamed
set showtabline=2
set nowrap
set laststatus=2
set colorcolumn=80
set nocursorline         " disabled because it makes keyboard repeat too slow.
set t_Co=256             " enable 256 colors
set scrolloff=8          " start scrolling before reaching the bottom.
set nofoldenable

set background=dark
colorscheme ir_black

" Load Pathogen
call pathogen#infect()

" Configure the colorcolumn
highlight   ColorColumn           guibg=#3C111A
highlight   NonText               guifg=#3C3C3C   ctermfg=12
highlight   NonText               guibg=#000000
highlight   SpecialKey            guibg=#111111
highlight   CursorLine            guibg=#111111
highlight   Cursor                guibg=#00FD39   guifg=#000000

" Configure the font to terminus
set guifont=Terminus\ Medium:h12
set noantialias

" Remove gVim GUI noise
set guioptions-=m
set guioptions-=T
set guioptions-=l
set guioptions-=r
set guioptions-=b

" Configure the invisible characters
set listchars=tab:▸\ ,eol:\ 

" make Y behave like other capitals
map Y y$
" disable ex mode
map Q <Esc>

" Enable Spell Checking
set spell
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

" Highlight the TODO lines.
syntax match TODO /[#"\/;]\ TODO.*/
syntax match TODO /[#"\/;]\ NOTE.*/
highlight TODO ctermfg=red guifg=red cterm=bold gui=bold

" Configure ctrlp
let g:ctrlp_map = '<c-t>'
let g:ctrlp_prompt_mappings = {
\ 'AcceptSelection("e")': [],
\ 'AcceptSelection("t")': ['<ct>', '<c-m>'],
\ }

" Configure ag - The Silver Searcher
let g:agprg="/usr/local/bin/ag --column"
map <c-S> :Ag

" Configure TrailerTrash
hi UnwantedTrailerTrash guibg=red ctermbg=red

" Configure notes
:let g:notes_suffix = '.txt'

" Configure snippets dir
let g:snippets_dir = "~/.vim/bundle/snipmate-snippets/snippets"

" Setup file type for weird extensions.
au! BufRead,BufNewFile *.pill    setfiletype ruby

" Configure standard settings for file types.
autocmd FileType json            setlocal autoindent ts=2 sw=2 sts=2 nospell
autocmd FileType make            setlocal autoindent ts=4 sw=4 sts=4 noexpandtab list
autocmd FileType markdown        setlocal autoindent ts=4 sw=4 sts=4
autocmd FileType python          setlocal autoindent ts=4 sw=4 sts=4
autocmd FileType ruby,eruby,yaml setlocal autoindent ts=2 sw=2 sts=2 expandtab
autocmd FileType sh              setlocal autoindent ts=2 sw=2 sts=2 expandtab

" configure chef
map <c-b> :ChefFindAnySplit<CR>

" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

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

" Turn on TrailerTrash and set the colors.

" Remove gvim gui noise
set guioptions-=m
set guioptions-=T
set guioptions-=l
set guioptions-=r
set guioptions-=b

" Configure the invisible charactors
set listchars=tab:▸\ ,eol:\ 

" make Y behave like other capitals
map Y y$
" disable ex mode
map Q <Esc>

" Highlight the todo lines.
syntax match TODO /[#"\/;]\ TODO.*/
highlight TODO ctermfg=red guifg=red cterm=bold gui=bold

" Setup filetype for weird extensions.
au! BufRead,BufNewFile *.pill setfiletype ruby

" configure ctrlp
let g:ctrlp_map = '<c-t>'
let g:ctrlp_prompt_mappings = {
\ 'AcceptSelection("e")': [],
\ 'AcceptSelection("t")': ['<ct>', '<c-m>'],
\ }

" configure snippets dir
"let g:snippets_dir = "~/.vim/bundle/snipmate-snippets/snippets+~/.vim/snippets"
let g:snippets_dir = "~/.vim/bundle/snipmate-snippets/snippets"

" Configure standard settings for file types.
autocmd FileType sh              setlocal autoindent ts=2 sw=2 sts=2 expandtab
autocmd FileType ruby,eruby,yaml setlocal autoindent ts=2 sw=2 sts=2 expandtab
autocmd FileType python          setlocal autoindent ts=4 sw=4 sts=4

" configure chef
map <c-b> :ChefFindAnySplit<CR>

" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

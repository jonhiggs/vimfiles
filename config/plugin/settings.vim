set backspace=indent,eol,start  " allow backspace to delete before insert point.
set colorcolumn=80
set clipboard+=unnamedplus
set expandtab
set list
set listchars=tab:▶\ ,eol:\     " configure the invisible characters.
set modeline                    " make sure the modeline is used if it exists.
set mouse=a
set nocursorline                " disabled because it makes keyboard repeat too slow.
set nofoldenable
set nowrap
set number
set numberwidth=1
set ruler
set scrolloff=8                 " start scrolling before reaching the bottom.
set shiftwidth=2
set showtabline=2
set tabstop=2
set visualbell
set inccommand=nosplit          " do live regex (https://asciinema.org/a/92207)

if exists(':PencilOff')
  PencilOff
endif

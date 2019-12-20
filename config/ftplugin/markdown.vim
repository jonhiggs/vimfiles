setlocal autoindent
setlocal colorcolumn=0
setlocal linebreak
setlocal nonumber
setlocal shiftwidth=4
setlocal spell
setlocal tabstop=4
setlocal wrap
setlocal formatoptions=a2tq

" use yaml syntax at the start of Jekyll markdown.
let g:vim_markdown_frontmatter=1

" don't press my buttons
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_new_list_item_indent = 0

PencilSoft
"map <buffer> <S-m> :!open -b $(osascript -e 'id of app "Marked 2"') %<CR><CR>
map <buffer> <S-m> :!mdviewer %<CR><CR>

" don't collapse links
set conceallevel=0

" FIXME: this is broken still
syn region Todo start="^TODO:" end="^$"
syn region Todo start="^FIXME:" end="$"

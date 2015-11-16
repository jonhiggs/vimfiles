setlocal autoindent
setlocal colorcolumn=0
setlocal linebreak
setlocal nonumber
setlocal shiftwidth=4
setlocal spell
setlocal tabstop=4
setlocal wrap

" use yaml syntax at the start of Jekyll markdown.
let g:vim_markdown_frontmatter=1

PencilSoft
map <buffer> <S-m> :!open -b $(osascript -e 'id of app "Marked 2"') %<CR><CR>

" FIXME: this is broken still
syn region Todo start="^TODO:" end="^$"
syn region Todo start="^FIXME:" end="$"

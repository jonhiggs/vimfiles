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
map <buffer> <S-m> :!/Applications/Marked.app/Contents/Resources/mark %<CR><CR>


" a custom todo match.

syn region Todo start="\S\@<=++\|++\S\@=" end="\S\@<=++\|++\S\@=" keepend oneline

setlocal autoindent
setlocal colorcolumn=0
setlocal linebreak
setlocal nonumber
setlocal shiftwidth=4
setlocal spell
setlocal tabstop=4
setlocal wrap
setlocal formatoptions=a2tq
setlocal nojoinspaces

call Stylish()

" use yaml syntax at the start of Jekyll markdown.
let g:vim_markdown_frontmatter=1

" don't press my buttons
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_new_list_item_indent = 0

PencilSoft

autocmd BufWritePost *.md silent execute '!md2html % /tmp/vim.html; scp /tmp/vim.html mac:/tmp/vim.html'

" don't collapse links
set conceallevel=0

" FIXME: this is broken still
syn region Todo start="^TODO:" end="^$"
syn region Todo start="^FIXME:" end="$"

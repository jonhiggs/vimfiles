setlocal autoindent
setlocal linebreak
setlocal number
setlocal shiftwidth=4
setlocal spell
setlocal tabstop=4
setlocal wrap

map <buffer> <S-m> :!open -b $(osascript -e 'id of app "Marked 2"') %<CR><CR>

syn region Todo start="^TODO:" end="^$"
syn region Todo start="^FIXME:" end="$"

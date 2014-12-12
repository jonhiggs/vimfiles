setlocal autoindent ts=4 sw=4 sts=4 tw=79 spell

setlocal wrap
setlocal linebreak
setlocal formatoptions-=t

"map <buffer> = gg gqG <C-O> <C-O>
map <buffer> <S-m> :!/Applications/Marked.app/Contents/Resources/mark %<CR><CR>

"map <buffer> <silent> k gk
"map <buffer> <silent> j gj
"map <buffer> <silent> 0 g0
"map <buffer> <silent> $ g$
"map <buffer> <silent> D d$
"map <buffer> <silent> dd g0 d$ hx


"" EMACS IN INSERT MODE
"" stolen from https://github.com/maxbrunsfeld/vim-emacs-bindings/blob/master/plugin/emacs-bindings.vim
"imap <C-b> <Left>
"imap <C-f> <Right>
"imap <C-a> <C-o>:call <SID>home()<CR>
"imap <C-e> <End>
"imap <C-d> <Del>
"imap <C-h> <BS>
"imap <C-k> <C-r>=<SID>kill_line()<CR>
"
"function! s:home()
"  let start_col = col('.')
"  normal! ^
"  if col('.') == start_col
"    normal! 0
"  endif
"  return ''
"endfunction
"
"function! s:kill_line()
"  let [text_before_cursor, text_after_cursor] = s:split_line_text_at_cursor()
"  if len(text_after_cursor) == 0
"    normal! J
"  else
"    call setline(line('.'), text_before_cursor)
"  endif
"  return ''
"endfunction
"
"function! s:split_line_text_at_cursor()
"  let line_text = getline(line('.'))
"  let text_after_cursor  = line_text[col('.')-1 :]
"  let text_before_cursor = (col('.') > 1) ? line_text[: col('.')-2] : ''
"  return [text_before_cursor, text_after_cursor]
"endfunction
""

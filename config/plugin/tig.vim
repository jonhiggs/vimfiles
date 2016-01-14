" TODO: make it not highlight misspelt words
" TODO: make it switch back to the original file
"
function! s:tig_status()
  if exists('#goyo')
    :Goyo
  endif

  cd `driller --scm-root %`
  tabnew|term tig status
endfunction

map <C-G> :TigStatus<CR><CR>
command! TigStatus call s:tig_status()

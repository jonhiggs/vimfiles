function! s:tig_status()
  cd `driller --scm-root %`
  !tig status
endfunction

map <C-G> :TigStatus<CR><CR>
command! TigStatus call s:tig_status()

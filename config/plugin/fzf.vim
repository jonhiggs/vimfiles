let $FZF_DEFAULT_COMMAND = 'ag --hidden -l -g ""'

function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()
nmap <C-t> :ProjectFiles<CR>

setlocal spell
setlocal formatoptions=a2tq
setlocal colorcolumn=73
setlocal textwidth=72
setlocal nojoinspaces
let b:mailmode=1

call Stylish()
function! MailModeOn()
  let b:mailmode=1
  setlocal formatoptions=a2tq
  hi ModeMsg ctermbg=red
endfunction

function! MailModeOff()
  let b:mailmode=0
  setlocal formatoptions=jcroql
  hi ModeMsg ctermbg=NONE
endfunction

function! MailModeToggle()
  if b:mailmode
    call MailModeOff()
  else
    call MailModeOn()
  endif
endfunction

map <buffer> <F11>    :call MailModeToggle()<CR>
map <buffer> -jon :read !printf -- "-- \nJon\n"<CR>

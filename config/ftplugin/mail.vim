setlocal spell
setlocal formatoptions=a2tq
setlocal colorcolumn=73
setlocal textwidth=72
setlocal nojoinspaces

call Stylish()

map <buffer> -jon :read !printf -- "-- \nJon\n"<CR>

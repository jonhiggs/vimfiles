call pathogen#infect()
let g:gitgutter_sign_removed = '_'
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1
call GitGutterEnable()
map <C-L> :call GitGutterAll() <CR>

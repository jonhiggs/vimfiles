let g:gitgutter_sign_removed = '_'
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 0
call GitGutterEnable
map <C-G> :call GitGutterAll() <CR>

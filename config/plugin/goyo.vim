let g:goyo_width=60
let g:goyo_margin_top=0
let g:goyo_margin_bottom=0

function! s:goyo_leave()
  source ~/.config/nvim/colors/gitgutter.vim
endfunction

autocmd! User GoyoLeave nested call <SID>goyo_leave()

" SPDX-FileCopyrightText: 2022 Sotiris Papatheodorou
" SPDX-License-Identifier: CC0-1.0
if exists('b:did_ftplugin')
  finish
endif
let b:did_ftplugin = 1

setlocal noexpandtab
setlocal nowrap
setlocal textwidth=0
setlocal nolist

if exists('*TSVAlign')
  if exists(':autocmd')
    autocmd BufRead,BufWrite <buffer> call TSVAlign()
  endif

  nnoremap <buffer> <F6> :call TSVAlign()<CR>
  nnoremap <buffer> <F7> :call TSVHeader()<CR>
endif

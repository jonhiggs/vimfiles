let g:gitgutter_eager = 1
let g:gitgutter_realtime = 1

set signcolumn=no

"GitGutterAll
"GitGutterLineNrHighlightsEnable
"GitGutterSignsDisable

"let g:gitgutter_sign_added = '█'
"let g:gitgutter_sign_modified = '█'
"let g:gitgutter_sign_modified_removed = '▁'
"let g:gitgutter_sign_removed = '▁'
"let g:gitgutter_sign_removed_first_line = '▀'

autocmd VimEnter         * source ~/.config/nvim/colors/gitgutter.vim
autocmd VimEnter         * GitGutterLineNrHighlightsEnable
autocmd TextChanged      * GitGutterAll

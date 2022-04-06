set signcolumn=no
let g:gitgutter_signs=1
let g:gitgutter_highlight_linenrs = 0

autocmd VimEnter         * source ~/.config/nvim/colors/gitgutter.vim
autocmd VimEnter         * GitGutterLineNrHighlightsEnable
autocmd TextChanged      * GitGutterAll
autocmd InsertLeave      * GitGutterAll
autocmd InsertEnter      * GitGutterAll

"map <C-[> :GitGutterPrevHunk<CR>
"map <C-]> :GitGutterNextHunk<CR>

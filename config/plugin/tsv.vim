" SPDX-FileCopyrightText: 2022 Sotiris Papatheodorou
" SPDX-License-Identifier: CC0-1.0
if exists('g:loaded_vim_tsv')
        finish
endif
let g:loaded_vim_tsv = 1

if exists('+vartabstop')
        " TSVAlign() modifies vartabstop to align TSV columns in the current
        " buffer using awk to compute the appropriate value.
        function! TSVAlign()
                silent let cmd = system('awk ''BEGIN { FS = "\t"; OFS = "," } { for (i = 1; i <= NF; i++) { l = length($i) + 2; if (l > t[i]) t[i] = l } } END { for (i in t) $i = t[i]; printf "set vartabstop="; print }'' ', bufnr())
                if match(cmd, "^set vartabstop=") == 0
                        execute cmd
                else
                        echoerr cmd
                endif
        endfunction

        " TSVHeader() toggles a buffer on top of the current one showing the
        " TSV header. Idea from here:
        " https://alangrow.com/blog/turn-vim-into-excel-tips-for-tabular-data-editing
        " Known issues:
        " * If TSVHeader() is called using an autocmd like TSVAlign() or in
        "   ftplugin the cursor will remain in the header window.
        function! TSVHeader()
                if exists('b:tsv_header_win')
                        execute b:tsv_header_win . 'wincmd c'
                        unlet b:tsv_header_win
                else
                        " Create a one line, read only buffer above the
                        " current one and show the first line of the TSV file.
                        above 1sview +1
                        " Store the window number to allow closing it later.
                        let b:tsv_header_win = winnr()
                        " Bind the horizontal scrolling of the two buffers.
                        setlocal scrollopt=hor
                        setlocal scrollbind
                        wincmd p
                        setlocal scrollbind
                endif
        endfunction

        " Automatically align columns of TSV files.
        if exists(':autocmd')
                autocmd FileType tsv call TSVAlign()
        endif
endif

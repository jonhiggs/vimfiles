setlocal autoindent ts=4 sw=4 sts=4 expandtab

let g:SimpylFold_docstring_preview = 1
setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
setlocal foldexpr< foldmethod<

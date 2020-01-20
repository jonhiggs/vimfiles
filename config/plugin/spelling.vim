set nospell
set spelllang=en_au

" FIXME: make this work so that I'm not hardcoding paths
"let s:path = fnamemodify('<sfile>:p', ":p:h")

if empty(glob("~/.local/src/vimfiles/data/site/spell/custom-dictionary.utf-8.add.spl"))
  mkspell ~/.local/src/vimfiles/data/site/spell/custom-dictionary.utf-8.add
endif

set spellfile=~/.local/src/vimfiles/data/site/spell/custom-dictionary.utf-8.add
set dict=~/.local/src/vimfiles/data/site/spell/custom-dictionary.utf-8.add
set dict+=~/.local/src/vimfiles/data/site/spell/en_au-words.txt
set complete=.          " current buffer
set complete+=w         " buffers in other windows
set complete+=b         " other loaded buffers
set complete+=t         " tags
set complete+=i         " included files
set complete+=k         " dictionaries

map <F3> :setlocal spell! spell?<CR>

" fix current word with first spelling suggestion.
map Z 1z=

" Fix previous misspelled word with your best guess
inoremap <C-s>    <Esc>[s1z=``a
noremap  <C-s>    [s1z=``


" SOME SHORTCUTS I'M GOING TO FORGET.
"
"     1z=           substitute word for first suggested word.
"     [s            go to last spelling mistake.
"     ]s            go to next spelling mistake.
"     `]            move to the last insert point.
"     ``            go back to whence you came.
"     zg            the word is good.
"     zw            the word is wrong.

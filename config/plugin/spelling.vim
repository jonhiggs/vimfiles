set nospell
set spelllang=en_au

if empty(glob("~/etc/vimfiles/data/site/spell/custom-dictionary.utf-8.add.spl"))
  mkspell ~/etc/vimfiles/data/site/spell/custom-dictionary.utf-8.add
endif

set spellfile=~/etc/vimfiles/data/site/spell/custom-dictionary.utf-8.add
set dict=~/etc/vimfiles/data/site/spell/custom-dictionary.utf-8.add
set dict+=~/etc/vimfiles/data/site/spell/en_au-words.txt
set complete=.          " current buffer
set complete+=w         " buffers in other windows
set complete+=b         " other loaded buffers
set complete+=t         " tags
set complete+=i         " included files
set complete+=k         " dictionaries

inoremap <C-s>    <Esc>[s1z=<C-o>a
noremap  <C-s>    [s1z=<C-o>

" SOME SHORTCUTS I'M GOING TO FORGET.
"
"     1z=           substitute word for first suggested word.
"     [s            go to last spelling mistake.
"     ]s            go to next spelling mistake.
"     `]            move to the last insert point.
"     ``            go back to whence you came.
"     zg            the word is good.
"     zw            the word is wrong.

syn match url 'http[s]\?://[^\ ]*'  contains=@NoSpell
syn match url 'ftp://[^ ]*'         contains=@NoSpell
syn match url 'www\.[^\ ]*'         contains=@NoSpell

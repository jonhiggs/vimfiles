syn match txtUrl 'http[s]\?://[^\ ]*'  contains=@NoSpell
syn match txtUrl 'ftp://[^ ]*'         contains=@NoSpell
syn match txtUrl 'www\.[^\ ]*'         contains=@NoSpell

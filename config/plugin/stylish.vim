function! Stylish()
  abbreviate <buffer> ^^0  ⁽⁰⁾
  abbreviate <buffer> ^^1  ⁽¹⁾
  abbreviate <buffer> ^^2  ⁽²⁾
  abbreviate <buffer> ^^3  ⁽³⁾
  abbreviate <buffer> ^^4  ⁽⁴⁾
  abbreviate <buffer> ^^5  ⁽⁵⁾
  abbreviate <buffer> ^^6  ⁽⁶⁾
  abbreviate <buffer> ^^7  ⁽⁷⁾
  abbreviate <buffer> ^^8  ⁽⁸⁾
  abbreviate <buffer> ^^9  ⁽⁹⁾
  abbreviate <buffer> --    —
  abbreviate <buffer> ...   …
endfunction

function! UnStylish()
  unabbreviate <buffer> ^^0
  unabbreviate <buffer> ^^1
  unabbreviate <buffer> ^^2
  unabbreviate <buffer> ^^3
  unabbreviate <buffer> ^^4
  unabbreviate <buffer> ^^5
  unabbreviate <buffer> ^^6
  unabbreviate <buffer> ^^7
  unabbreviate <buffer> ^^8
  unabbreviate <buffer> ^^9
  unabbreviate <buffer> --
  unabbreviate <buffer> ...
endfunction

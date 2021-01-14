iabclear <buffer>
function! Stylish()
  iabbrev <buffer> ^^0   ⁰
  iabbrev <buffer> ^^1   ¹
  iabbrev <buffer> ^^2   ²
  iabbrev <buffer> ^^3   ³
  iabbrev <buffer> ^^4   ⁴
  iabbrev <buffer> ^^5   ⁵
  iabbrev <buffer> ^^6   ⁶
  iabbrev <buffer> ^^7   ⁷
  iabbrev <buffer> ^^8   ⁸
  iabbrev <buffer> ^^9   ⁹
  iabbrev <buffer> ^^-   —
  iabbrev <buffer> --    —
  iabbrev <buffer> ^^e   …
  iabbrev <buffer> <1/2> ½
  iabbrev <buffer> <1/4> ¼
  iabbrev <buffer> <3/4> ¾
  iabbrev <buffer> <1/3> ⅓
  iabbrev <buffer> <2/3> ⅔
  iabbrev <buffer> <1/8> ⅛
  iabbrev <buffer> <3/8> ⅜
  iabbrev <buffer> <5/8> ⅝
  iabbrev <buffer> <7/8> ⅞
endfunction

function! UnStylish()
  iunabbrev <buffer> ^^0
  iunabbrev <buffer> ^^1
  iunabbrev <buffer> ^^2
  iunabbrev <buffer> ^^3
  iunabbrev <buffer> ^^4
  iunabbrev <buffer> ^^5
  iunabbrev <buffer> ^^6
  iunabbrev <buffer> ^^7
  iunabbrev <buffer> ^^8
  iunabbrev <buffer> ^^9
  iunabbrev <buffer> ^^-
  iunabbrev <buffer> --
  iunabbrev <buffer> ^^e
  iunabbrev <buffer> <1/2>
  iunabbrev <buffer> <1/4>
  iunabbrev <buffer> <3/4>
  iunabbrev <buffer> <1/3>
  iunabbrev <buffer> <2/3>
  iunabbrev <buffer> <1/8>
  iunabbrev <buffer> <3/8>
  iunabbrev <buffer> <5/8>
  iunabbrev <buffer> <7/8>
endfunction

" Vim syntax file
" Language:     Httest	
" Maintainer:   Christian Liesch <ia97lies@users.sourceforge.net>	
" Last Change:	2013 June 8 

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn keyword httStorageClass     CLIENT SERVER DAEMON BLOCK END
syn keyword httStorageClass     LUA
syn keyword httStorageClass     SH
syn keyword httInclude          INCLUDE
syn keyword httStatement        _-
syn keyword httStatement        _ADD_HEADER
syn keyword httStatement        _AUTO_CLOSE
syn keyword httStatement        _AUTO_COOKIE
syn keyword httStatement        _ASSERT
syn keyword httStatement        _BREAK
syn keyword httStatement        _CALL
syn keyword httStatement        _CHECK
syn keyword httStatement        _CHUNK
syn keyword httStatement        _CLOSE
syn keyword httStatement        _DEBUG
syn keyword httStatement        _DOWN
syn keyword httStatement        _EXEC
syn keyword httStatement        _EXIT
syn keyword httStatement        _EXPECT
syn keyword httStatement        _FLUSH
syn keyword httStatement        _GREP
syn keyword httStatement        _HEADER
syn keyword httStatement        _IGNORE_BODY
syn keyword httStatement        _LOCAL
syn keyword httStatement        _LOG_LEVEL
syn keyword httStatement        _LOG_LEVEL_GET
syn keyword httStatement        _LOG_LEVEL_SET
syn keyword httStatement        _MATCH
syn keyword httStatement        _ONLY_PRINTABLE
syn keyword httStatement        _PIPE
syn keyword httStatement        _PLAY
syn keyword httStatement        _PRINT_HEX
syn keyword httStatement        _PROCESS
syn keyword httStatement        _PROC_WAIT
syn keyword httStatement        _READLINE
syn keyword httStatement        _RECORD
syn keyword httStatement        _RECV
syn keyword httStatement        _REQ
syn keyword httStatement        _RES
syn keyword httStatement        _RESWAIT
syn keyword httStatement        _SENDFILE
syn keyword httStatement        _SEQUENCE
syn keyword httStatement        _SET
syn keyword httStatement        _SH
syn keyword httStatement        _SOCKET
syn keyword httStatement        _SOCKSTATE
syn keyword httStatement        _TIMEOUT
syn keyword httStatement        _TUNNEL
syn keyword httStatement        _UNSET
syn keyword httStatement        _UP
syn keyword httStatement        _USE
syn keyword httStatement        _VERSION
syn keyword httStatement        _WAIT
syn keyword httStatement        __
syn match httStatement          "\<_BINARY:RECV\>"
syn match httStatement          "\<_BINARY:SEND\>"
syn match httStatement          "\<_CODER:B64DEC\>"
syn match httStatement          "\<_CODER:B64ENC\>"
syn match httStatement          "\<_CODER:HTMLDEC\>"
syn match httStatement          "\<_CODER:URLDEC\>"
syn match httStatement          "\<_CODER:URLENC\>"
syn match httStatement          "\<_DATE:FORMAT\>"
syn match httStatement          "\<_DATE:GET_TIME\>"
syn match httStatement          "\<_DATE:SYNC\>"
syn match httStatement          "\<_DATE:TIMER\>"
syn match httStatement          "\<_DBG:BP\>"
syn match httStatement          "\<_MATH:EVAL\>"
syn match httStatement          "\<_MATH:OP\>"
syn match httStatement          "\<_MATH:RAND\>"
syn match httStatement          "\<_PROC:DETACH\>"
syn match httStatement          "\<_PROC:GET_PID\>"
syn match httStatement          "\<_PROC:LOCK\>"
syn match httStatement          "\<_PROC:UNLOCK\>"
syn match httStatement          "\<_SOCKS:CONNECT\>"
syn match httStatement          "\<_SSL:ACCEPT\>"
syn match httStatement          "\<_SSL:CLOSE\>"
syn match httStatement          "\<_SSL:CONNECT\>"
syn match httStatement          "\<_SSL:GET_CERT_VALUE\>"
syn match httStatement          "\<_SSL:GET_SESSION\>"
syn match httStatement          "\<_SSL:GET_SESSION_ID\>"
syn match httStatement          "\<_SSL:LOAD_CERT\>"
syn match httStatement          "\<_SSL:LOAD_KEY\>"
syn match httStatement          "\<_SSL:RENEG_CERT\>"
syn match httStatement          "\<_SSL:SECURE_RENEG_SUPPORTED\>"
syn match httStatement          "\<_SSL:SET_CERT\>"
syn match httStatement          "\<_SSL:SET_ENGINE\>"
syn match httStatement          "\<_SSL:SET_LEGACY\>"
syn match httStatement          "\<_SSL:SET_SESSION\>"
syn match httStatement          "\<_SYS:SLEEP\>"
syn match httStatement          "\<_TCP:ACCEPT\>"
syn match httStatement          "\<_TCP:CLOSE\>"
syn match httStatement          "\<_TCP:CONNECT\>"
syn match httStatement          "\<_TCP:LISTEN\>"
syn match httStatement          "\<_THREAD:GET_NUMBER\>"
syn match httStatement          "\<_UDP:BIND\>"
syn match httStatement          "\<_UDP:CONNECT\>"
syn match httStatement          "\<_WS:RECV\>"
syn match httStatement          "\<_WS:SEND\>"
syn match httStatement          "\<_WS:VERSION\>"
syn keyword httRepeat           _LOOP _FOR _BPS _RPS _POLL _IGNORE_BODY _MILESTONE _END
syn keyword httConditional      _IF _ELSE _ERROR _END

" Constants
syn keyword httConstant         POLL CHUNKED DO_NOT_CHECK AUTO on off On Off SSL SSL2 SSL3 TLS1 OK FAILED
syn keyword httOperator         NOT MATCH EQUAL LT GT LE GE EQ ADD SUB MUL DIV
syn match httIdentifier		"$[^ /.:\$"]\+" 
syn match httIdentifier		"${[^ /.:\$}"]\+}" 
syn match httNumber		"\<[0-9]\+\>"
syn match httFunction           "^ *__.*" contains=httIdentifier,httConstant
syn match httFunction           "^ *_-.*" contains=httIdentifier
syn match   httSpecial contained "\\\d\d\d\|\\."
syn region  httString		  start=+"+  skip=+\\\\\|\\"+  end=+"+  contains=basicSpecial,httIdentifier
syn region httComment	        display oneline start="^ *#" end="$" contains=httTodo
syn keyword httTodo             contained TODO FIXME XXX NOTE
syn keyword httType             EXEC HEADERS BODY VAR IGNORE_MONITORS exec headers body var Exec Headers Body Var

runtime! syntax/lua.vim
unlet b:current_syntax
syntax include @Lua syntax/lua.vim
syntax region luaCode  start=+\<BLOCK:LUA\>+ keepend end=+END+  contains=@Lua

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_htt_syntax_inits")
  if version < 508
    let did_htt_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  " The default methods for highlighting.  Can be overridden later
  HiLink httStatement    Statement
  HiLink httFunction     Macro
  HiLink httIdentifier	 Identifier
  HiLink httNumber	 Number
  HiLink httComment	 Comment
  HiLink httTodo	 Todo
  HiLink httString       String
  HiLink httRepeat       Repeat
  HiLink httConditional	 Conditional
  HiLink httOperator     Operator
  HiLink httStorageClass StorageClass
  HiLink httInclude      Include
  HiLink httConstant     Constant
  HiLink httType         Type 

  delcommand HiLink
endif

let b:current_syntax = "htt"

" vim: ts=8

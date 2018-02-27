" ir_black color scheme
" More at: http://blog.infinitered.com/entries/show/8

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "ir_black"

hi ColorColumn                   ctermbg=234
hi Comment                       ctermfg=darkgray      ctermbg=NONE      cterm=NONE
hi Conditional                   ctermfg=blue          ctermbg=NONE      cterm=NONE
hi Constant                      ctermfg=cyan          ctermbg=NONE      cterm=NONE
hi Cursor                        ctermfg=black         ctermbg=white     cterm=reverse
hi CursorColumn                  ctermfg=NONE          ctermbg=234       cterm=BOLD
hi CursorLine                    ctermfg=NONE          ctermbg=NONE      cterm=BOLD
hi Delimiter                     ctermfg=cyan          ctermbg=NONE      cterm=NONE
hi Error                         ctermfg=white         ctermbg=red       cterm=NONE
hi ErrorMsg                      ctermfg=white         ctermbg=red       cterm=NONE
hi FoldColumn                    ctermfg=0             ctermbg=NONE
hi Folded                        ctermfg=8             ctermbg=234       cterm=NONE
hi Function                      ctermfg=brown         ctermbg=NONE      cterm=NONE
hi GitGutterAddDefault           ctermfg=2             ctermbg=NONE
hi GitGutterChangeDefault        ctermfg=3             ctermbg=NONE
hi GitGutterChangeDeleteDefault  ctermfg=130           ctermbg=NONE
hi GitGutterChangeLineDefault    ctermfg=3             ctermbg=NONE
hi GitGutterDeleteDefault        ctermfg=1             ctermbg=NONE
hi Identifier                    ctermfg=cyan          ctermbg=NONE      cterm=NONE
hi javaDocSeeTag                 ctermfg=darkgray      ctermbg=NONE      cterm=NONE
hi javaDocSeeTag                 ctermfg=darkgray      ctermbg=NONE      cterm=NONE
hi Keyword                       ctermfg=blue          ctermbg=NONE      cterm=NONE
hi LineNr                        ctermfg=237           ctermbg=NONE      cterm=NONE
hi MatchParen                    ctermfg=white         ctermbg=darkgray  cterm=NONE
hi ModeMsg                       ctermfg=black         ctermbg=cyan      cterm=BOLD
hi NonText                       ctermfg=235           ctermbg=NONE      cterm=NONE
hi Normal                        ctermfg=NONE          ctermbg=NONE      cterm=NONE
hi Number                        ctermfg=magenta       ctermbg=NONE      cterm=NONE
hi Operator                      ctermfg=white         ctermbg=NONE      cterm=NONE
hi Pmenu                         ctermfg=NONE          ctermbg=234       cterm=NONE
hi PmenuSbar                     ctermfg=black         ctermbg=white     cterm=NONE
hi PmenuSel                      ctermfg=15            ctermbg=25        cterm=NONE
hi PreProc                       ctermfg=blue          ctermbg=NONE      cterm=NONE
hi rubyControl                   ctermfg=blue          ctermbg=NONE      cterm=NONE
hi rubyEscape                    ctermfg=cyan          ctermbg=NONE      cterm=NONE
hi rubyInterpolationDelimiter    ctermfg=blue          ctermbg=NONE      cterm=NONE
hi rubyRegexp                    ctermfg=brown         ctermbg=NONE      cterm=NONE
hi rubyRegexpDelimiter           ctermfg=brown         ctermbg=NONE      cterm=NONE
hi rubyStringDelimiter           ctermfg=lightgreen    ctermbg=NONE      cterm=NONE
hi Search                        ctermfg=0             ctermbg=11        cterm=NONE
hi SignColumn                    ctermbg=NONE
hi Special                       ctermfg=white         ctermbg=NONE      cterm=NONE
hi SpecialKey                    ctermfg=235           ctermbg=NONE      cterm=NONE
hi SpellBad                      ctermfg=253           ctermbg=52        cterm=NONE
hi SpellCap                      ctermfg=253           ctermbg=19        cterm=NONE
hi SpellLocal                    ctermfg=0             ctermbg=14        cterm=NONE
hi Statement                     ctermfg=lightblue     ctermbg=NONE      cterm=NONE
hi StatusLine                    ctermfg=white         ctermbg=darkgray  cterm=NONE
hi StatusLineNC                  ctermfg=blue          ctermbg=darkgray  cterm=NONE
hi String                        ctermfg=green         ctermbg=NONE      cterm=NONE
hi TabLine                       ctermfg=242           ctermbg=234       cterm=NONE
hi TabLineFill                   ctermfg=234           ctermbg=234       cterm=NONE
hi TabLineSel                    ctermfg=15            ctermbg=25        cterm=NONE
hi Title                         ctermfg=15            ctermbg=NONE      cterm=underline
hi Todo                          ctermfg=red           ctermbg=NONE      cterm=NONE
hi Type                          ctermfg=yellow        ctermbg=NONE      cterm=NONE
hi UnwantedTrailerTrash          ctermbg=52
hi VertSplit                     ctermfg=darkgray      ctermbg=NONE      cterm=NONE
hi Visual                        ctermfg=NONE          ctermbg=darkgray  cterm=NONE
hi WarningMsg                    ctermfg=white         ctermbg=red       cterm=NONE
hi WildMenu                      ctermfg=black         ctermbg=yellow    cterm=NONE

hi link Boolean                  Constant
hi link Character                Constant
hi link csXmlTag                 Keyword
hi link Debug                    Special
hi link Define                   PreProc
hi link Exception                Statement
hi link Float                    Number
hi link htmlEndTag               Identifier
hi link htmlTag                  Keyword
hi link htmlTagName              Conditional
hi link Include                  PreProc
hi link javaCommentTitle         javaDocSeeTag
hi link javaDocParam             javaDocSeeTag
hi link javaDocSeeTagParam       javaDocSeeTag
hi link javaDocTags              javaDocSeeTag
hi link javaScopeDecl            Identifier
hi link javaScriptNumber         Number
hi link Label                    Statement
hi link Macro                    PreProc
hi link PreCondit                PreProc
hi link Repeat                   Statement
hi link rubyClass                Keyword
hi link rubyClassVariable        Identifier
hi link rubyConstant             Type
hi link rubyGlobalVariable       Identifier
hi link rubyIdentifier           Identifier
hi link rubyInstanceVariable     Identifier
hi link rubyKeyword              Keyword
hi link rubyModule               Keyword
hi link rubyOperator             Operator
hi link rubySharpBang            Comment
hi link shFunctionKey            Keyword
hi link SpecialChar              Special
hi link SpecialComment           Special
hi link StorageClass             Type
hi link Structure                Type
hi link Tag                      Special
hi link Typedef                  Type
hi link xmlEndTag                Identifier
hi link xmlTag                   Keyword
hi link xmlTagName               Conditional

syntax clear

" Comments
syntax match skriptComment "#.*"
highlight link skriptComment Comment

" String Variables
syntax match skriptPlaceholder "%{[^{}]*}%"
highlight link skriptPlaceholder Identifier

" Strings
syntax region skriptString start=/"/ skip=/\\"/ end=/"/ contains=skriptStringVariable,skriptChatCode
highlight link skriptString String

" Keywords
syntax keyword skriptKeyword command function if while return continue exit else wait options trigger loop variables stop
highlight link skriptKeyword Keyword

" Operators
syntax match skriptOperator "\%(is\|>=\|+\|<\|-\|=\|\*\)"
highlight link skriptOperator Operator
highlight skriptOperator ctermfg=Yellow guifg=Yellow

" Numbers
syntax match skriptNumber "\v\d+"
highlight link skriptNumber Number

" Variables - Will break if nested deep enough but by then the code is god
" awful anyway
syntax match skriptVariable "{[^{}]*\%({[^{}]*\%({[^{}]*}[^{}]*\)*}[^{}]*\)*}"
highlight link skriptVariable Identifier

" String Variables
syntax match skriptStringVariable "%{[^{}]*\%({[^{}]*\%({[^{}]*}[^{}]*\)*}[^{}]*\)*}%"
highlight link skriptStringVariable Identifier

" Booleans
syntax keyword skriptBoolean true false yes no on off
highlight link skriptBoolean Boolean

" Colours
syntax match skriptChatCode "&[0-9a-fA-FkKlLmMnNoOrR]"
syntax match skriptChatCode "<#[0-9A-Fa-f]\{6}>"
highlight link skriptChatCode Special

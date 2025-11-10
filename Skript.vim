syntax clear

" Comments
syntax match skriptComment "#.*"
highlight link skriptComment Comment

" Strings
syntax region skriptString start=/"/ skip=/\\"/ end=/"/
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

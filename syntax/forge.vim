if exists("b:current_syntax")
    finish
endif

syn keyword forgeKeyword abstract and as assert
syn keyword forgeKeyword but check else exactly enum
syn keyword forgeKeyword fact for fun module
syn keyword forgeKeyword iff implies Int let in
syn keyword forgeKeyword open or pred run sum extends
syn keyword forgeKeyword test expect

syn keyword forgeConstant univ iden
syn keyword forgeOperator one lone all some no none disj not set

syn keyword forgeKeyword   sig  nextgroup=forgeSigDecl skipwhite skipnl
syn match   forgeSigDecl   /[A-Z][_0-9a-zA-Z']*/ contained nextgroup=forgeComma skipwhite skipnl
syn match   forgeComma     /,/                   contained nextgroup=forgeSigDecl skipwhite skipnl

syn region forgeComment start="/\*" end="\*/"
syn region forgeComment start="\-\-" end="\n"
syn region forgeComment start="//" end="\n"

hi def link forgeKeyword    Statement
hi def link forgeComment    Comment
hi def link forgeConstant   Constant
hi def link forgeOperator   Operator
hi def link forgeSigDecl    Type

let b:current_syntax = "forge"

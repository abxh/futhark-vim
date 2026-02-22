" Literals
syn match   Number          "\v[+-]?<((\d+|0[xX]\x+|0[bB][01]+)([ui](8|16|32|64))?)>"
syn match   Float           "\v[+-]?<((\d+(\.\d+)?)(f(32|64))?)>"
syn match   Float           "\v-?(\d(\d|_)*|(\d(\d|_)*)?\.(\d(\d|_)*))[eE][+\-]?\d+"
syn region  String          start=/"/ skip=/\\"/ end=/"/ keepend excludenl

" Identifiers
syn match   FutChar         "\v'\\?.'"
syn match   FutConstructor  "\v#\w(\w|')*" contains=NONE
syn match   FutId           "\v\h(\w|')*" contains=NONE
syn match   FutIdSpecial    "\v\h(\w|')*" contained contains=NONE
syn match   FutIdType       "\v\h(\w|')*" contained contains=NONE
syn match   FutAttribute    "\v#\[[^]]+\]"
syn match   FutHole         "\v[^\s]\?\?\?[^\s]" contains=NONE

" Common types
syn keyword Type            i8 i16 i32 i64 
syn keyword Type            u8 u16 u32 u64 
syn keyword Type            f16 f32 f64
syn keyword Type            int real bool char

" Keywords
syn keyword Conditional     if then else
syn keyword Repeat          loop for while do
syn keyword Keyword         unsafe match case
syn keyword Statement       with entry in local type val let module include
syn match   Statement       "\vtype[~^]?" nextgroup=FutIdType skipwhite skipempty
syn keyword Statement       def entry nextgroup=FutIdSpecial skipwhite skipempty
syn keyword PreProc         open import nextgroup=FutIdSpecial skipwhite skipempty
syn keyword Boolean         true false
syn keyword Delimiter       _

" Delimiters
syn match   Delimiter       '[:()[\],\\.{}]'

" Operators
syn match   Operator        '[+\-*/<>%!&|^=]'
syn match   Operator        '\v[+\-*/<>%!&|^=]{2,}'
syn match   Operator        '`[^`]*`'
syn match   Operator        '\v\.\.\.'
syn match   Operator        '\v\.\.'
syn match   Operator        '\v\.\.<'

" Links
hi def link FutChar         Character
hi def link FutId           Identifier
hi def link FutIdSpecial    Function
hi def link FutIdType       Type
hi def link FutConstructor  Constant
hi def link FutAttribute    PreProc
hi def link FutHole         WarningMsg

" Comments
syn match   Comment         '--.*$'

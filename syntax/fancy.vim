"  Vim syntax file
" Language: Fancy (http://fancy-lang.org)
" Maintainer: Steven! Ragnarök
" Latest Revision: 15 October 2011

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword fancyKeyword class def try catch finally retry return return_local
syn keyword fancyKeyword match case
" use match for `require:` since Vim doesn't like the colon in a keyword.
syn match fancyKeyword '\(require:\|->\|=>\)'

" Special variables
syn keyword fancySpecialVar nil self super
syn keyword fancyBoolean true false

" Literals
syn match fancyInteger '[0-9]+'
syn match fancyFloat '[0-9]+\.[0-9]+'
"syn match

syn match fancyConstant '[A-Z][a-zA-Z0-9_]*'

syn region fancyBlock start="{" end="}" fold transparent


let b:current_syntax = "fancy"

highlight def link fancyKeyword Keyword
highlight def link fancyConstant Constant
highlight def link fancySpecialVar Special
highlight def link fancyBoolean Boolean
highlight def link fancyInteger Number
highlight def link fancyFloat Float

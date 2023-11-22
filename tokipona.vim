" Vim syntax file
" Language:   Toki Pona (unofficial) <https://tokipona.org>
" Maintainer: jan Lesate <alxndr+tp.vim@gmail.com>
" Source:     https://github.com/alxndr/vim-syntax-tokipona

let b:current_syntax = "tokipona"

" `la`-phrases
syntax match tpPrenex _[,\.:!?][^,\.:!?]\+\<la\>_ms=s+1
syntax match tpPrenexLineStart _^[^,.:!?]\+\<la\>_

" arbitrary headnouns + names
syntax match tpNamesMatch '\<[a-z]\+\s\+\(\<[A-Z][A-Za-z]\+\>\s*\)\+'

" question in the form of `X ala X`
syntax match tpInterrogativesMatch '\<\([a-z]\+\) ala \1\>'

" keywords
syntax keyword tpInterrogatives anu seme
syntax keyword tpNounParticles en pi
syntax keyword tpModifiers kin taso
syntax keyword tpPrepositions kama ken kepeken lon sama tan tawa
syntax keyword tpPronouns mi ni ona sina
syntax keyword tpQuantifier ala ale ali
syntax keyword tpVerbParticles e li
syntax keyword tpVocalizations a o

highlight tpPrenex gui=italic
highlight tpPrenexLineStart gui=italic
highlight tpVocalizations gui=underline
highlight default link tpNamesMatch          Function
highlight default link tpPronouns            Statement
highlight default link tpNounParticles       Type
highlight default link tpInterrogatives      Special
highlight default link tpInterrogativesMatch Special
highlight default link tpQuantifier          Type
highlight default link tpPrepositions        Type
highlight default link tpNonLetters          Comment
highlight default link tpVerbParticles       Constant
highlight default link tpModifiers           String

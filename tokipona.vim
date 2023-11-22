" Vim syntax file
" Language:   Toki Pona (unofficial) <https://tokipona.org>
" Maintainer: jan Lesate <alxndr+tp.vim@gmail.com>
" Source:     https://github.com/alxndr/vim-syntax-tokipona

let b:current_syntax = "tokipona"

" ... first define the most general things
syntax   match tpWord '[A-Za-z]\+'

" ... then define regions
syntax   match tpPrenex _[,\.:!?][^,\.:!?]\+\s\+la\>_ms=s+1
syntax   match tpPrenexLineStart _^[^,.:!?]\+\s\+la\>_

" ... then match arbitrary headnouns + names
syntax   match tpNamesMatch '\<[a-z]\+\s\+\(\<[A-Z][A-Za-z]\+\>\s*\)\+'

" ... then define more specific terms
syntax keyword tpInterrogatives anu seme
syntax   match tpInterrogativesMatch '\<\([a-z]\+\) ala \1\>'
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
" highlight default link tpNonLetters          Comment
highlight default link tpVerbParticles       Constant
highlight default link tpModifiers           String

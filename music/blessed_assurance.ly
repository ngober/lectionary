BlessedAssuranceSoprano = \relative b' {
    \clef "treble" \numericTimeSignature\time 9/8 \key d \major | % 1
    \partial 4. fis8 e d | %2
    a'4. a g8 a b | %3
    a2. a8 fis a | %4
    d4. cis4 8 b8 a gis | %5
    a2. fis8 e d | %6
    a'4. a b8 a b | %7
    a2. d,8 e fis | %8
    g4. e d8 e cis | %9
    \partial 2. d2. \bar "||" \partial 4. a'8 a a | %10
    d4. a b8 b b | %11
    a2. a8 a a | %12
    b4. d4. cis8 cis b | %13
    cis2. cis8 d e | %14
    d4. a4. b8 a b | %15
    a2. d,8 e fis | %16
    g4. e4. d8 e cis | %17
    \partial 2. d2. \bar "|."
}

BlessedAssuranceAlto = \relative c' {
    \clef "treble" \numericTimeSignature\time 9/8 \key d \major | % 1
    \partial 4. d8 d d | %2
    fis4. fis d8 d d | %3
    d2. fis8 d fis | %4
    fis4. e4 e8 e e e | %5
    e2. d8 d d | %6
    fis4. fis d8 d d | %7
    d2. d8 d d | %8
    d4. b d8 cis a | %9
    \partial 2. a2. \bar "||" \partial 4. fis'8 fis fis | %10
    fis4. fis g8 g g | %11
    fis2. fis8 fis fis | %12
    g4. a4. a8 a gis | %13
    a2. g8 g g | %14
    fis4. fis4. g8 fis g | %15
    fis2. d8 cis d | %16
    d4. b4. d8 cis a | %17
    \partial 2. a2. \bar "|."
}

BlessedAssuranceTenor = \relative g {
    \clef "bass" \numericTimeSignature\time 9/8 \key d \major | % 1
    \partial 4. a8 g fis | %2
    a4. a b8 fis g | %3
    fis2. a8 a a | %4
    a4. a4 a8 d8 cis b | %5
    cis2. a8 g fis | %6
    a4. a b8 fis g | %7
    fis2. fis8 g a | %8
    b4. g4. fis8 g e | %9
    \partial 2. fis2. \bar "||" \partial 4. d'8 d d | %10
    a4. d d8 d d | %11
    d2. d8 d d | %12
    d4. d4. e8 e e | %13
    e2. a,8 b cis | %14
    d4. d4. d8 d d | %15
    d2. a8 a a | %16
    b4. g4. fis8 g e | %17
    \partial 2. fis2. \bar "|."
}

BlessedAssuranceBass = \relative bes, {
    \clef "bass" \numericTimeSignature\time 9/8 \key d \major | % 1
    \partial 4. d8 8 8 | %2
    d4. 4. 8 8 8 | %3
    d2. 8 8 8 | %4
    d4. e4 e8 8 8 8 | %5
    a2. d,8 8 8 | %6
    d4. 4. 8 8 8 | %7
    d2. 8 8 8 | %8
    g,4. 4. a8 8 8 | %9
    \partial 2. d2. \bar "||" \partial 4. 8 8 8 | %10
    d4. 4. g8 8 8 | %11
    d2. 8 8 8 | %12
    g4. fis4. e8 8 8 | %13
    a2. 8 8 8 | %14
    d,4. 4. 8 8 8 | %15
    d2. fis8 e d | %16
    g,4. 4. a8 8 8 | %17
    \partial 2. d2. \bar "|."
}

BlessedAssuranceVerseOne = \lyricmode {
    Bless -- ed as -- sur -- "ance," Je -- sus is "mine:"
    Oh what a fore -- taste of glo -- ry di -- "vine!"
    Heir of sal -- va -- "tion," pur -- chase of "God;"
    born of his Spir -- "it," washed in his "blood."

    This is my sto -- "ry," this is my "song,"
    prais -- ing my sav -- ior all the day "long."
    This is my sto -- "ry," this is my "song,"
    prais -- ing my sav -- ior all the day "long."
}

BlessedAssuranceVerseTwo = \lyricmode {
    Per -- fect sub -- mis -- "sion," per -- fect de -- "light:"
    vi -- sions of rap -- ture \skip1 burst on my "sight."
    An -- gels de -- scen -- ding bring from a -- bove
    ech -- oes of mer -- "cy," whis -- pers of "love."
}

BlessedAssuranceVerseThree = \lyricmode {
    Per -- fect sub -- mis -- "sion," all is at "rest,"
    I in my sav -- ior am hap -- py and "blest."
    Watch -- ing and wait -- "ing," look -- ing a -- "bove,"
    filled with his good -- "ness," lost in his "love."
}


\tocItem \markup "Blessed Assurance"
\score {
    \header {
        title = "Blessed Assurance"
        composer =  "Phoebe Palmer Knapp (1839-1908)"
        poet = "Fanny Crosby (1820-1915)"
    }
    <<
        \new StaffGroup <<
        \new Staff <<
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "BlessedAssuranceSoprano" {  \voiceOne \BlessedAssuranceSoprano }
                \new Lyrics \lyricsto "BlessedAssuranceSoprano" { \set stanza = "1." \BlessedAssuranceVerseOne }
                \new Lyrics \lyricsto "BlessedAssuranceSoprano" { \set stanza = "2." \BlessedAssuranceVerseTwo }
                \new Lyrics \lyricsto "BlessedAssuranceSoprano" { \set stanza = "3." \BlessedAssuranceVerseThree }
                \context Voice = "BlessedAssuranceAlto" {  \voiceTwo \BlessedAssuranceAlto }
        >>
        \new Staff <<
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "BlessedAssuranceTenor" {  \voiceOne \BlessedAssuranceTenor }
                \context Voice = "BlessedAssuranceBass" {  \voiceTwo \BlessedAssuranceBass }
        >>
    >>
    >>
}

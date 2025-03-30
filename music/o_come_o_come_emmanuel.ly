OComeOComeEmmanuelSoprano =  \relative e' {
    \clef "treble" \numericTimeSignature\time 2/2 \key g \major \partial
    4 e4 | % 1
    <e g>4 <fis b>4 <e b'>4 <d b'>4 | % 2
    a'4 ( c4  <dis, b'>4 ) <fis a>4  | % 3
    \slurDashed <e g>2. ( \slurSolid <e a>4 ) | % 4
    <e b'>4 <e g>4 <b e>4 <e g>4 | % 5
    a4 ( fis4 ) e4 ( d4 ) | % 6
    <b e>2. \bar ""
    <d a'>4 | % 7
    <cis a'>4 <cis e>4 <c e>4 <c fis>4 | % 8
    <b g'>2 fis'4 ( e4 ) | % 9
    <b dis>2. <e g>4 | \barNumberCheck #10
    <fis a>4 <g b>4 <g b>4 <g b>4 | % 11
    a4 ( c4 ) <g b>4 ( <fis a>4 ) | % 12
    <d g>2. \bar ""
    <g d'>4 | % 13
    <fis d'>2. <e b'>4 | % 14
    <dis b'>2. <dis b'>4 | % 15
    a'4 ( c4 <dis, b'>4 ) <fis a>4 | % 16
    <e g>2. <d? a'>4 | % 17
    <d b'>4 <d g>4 <c e>4 <d g>4 | % 18
    a'4 ( fis4 ) e4 ( d4 ) | % 19
    <b e>2. \bar "|."
    }

OComeOComeEmmanuelVerseOne =  \lyricmode {
    "O" "come," O "come," Em -- man -- u -- "el," And
    ran -- som cap -- tive Is -- ra -- "el," That mourns in
    lone -- ly ex -- ile here Un -- til the Son of God ap
    -- "pear." Re -- "joice!" Re -- "joice!" Em -- man --
     u -- el Shall come to "thee," O Is -- ra -- "el!"
    }

OComeOComeEmmanuelVerseTwo =  \lyricmode {
    "O" "come," Thou Day -- "spring," come and cheer And
    com -- fort by Thine ad -- vent "here;" Dis -- pel the
    long "night’s" brood -- ing "gloom;" And rend the shad -- ows
    of the "tomb."
    }

OComeOComeEmmanuelVerseThree =  \lyricmode {
    "O" "come," Thou Rod of Jes -- "se’s"  "stem," From
    ev -- "’ry" wound Thou heal -- est them That in Thy word
    doth trust and "heed;" That they there -- by be -- come
    Thy "seed."
    }

OComeOComeEmmanuelVerseFive =  \lyricmode {
    "O" "come," De -- sire of Na -- "tions,"  bind In one
    the hearts of hu -- man -- "kind;" That we our sad di --
    vi -- sions "cease;" And fill the world with heav --
    "en’s"  "peace."
    }

OComeOComeEmmanuelVerseFour =  \lyricmode {
    "O" "come," Thou Key of Da -- "vid,"  come And o --
    pen up our "Heav’n" -- ly "home;" Un -- lock the fet --
    ters of the "mind," And o -- pen up the eyes of the
    "blind."
    }

OComeOComeEmmanuelAlto =  \relative e' {
    \clef "treble" \numericTimeSignature\time 2/2 \key g \major \partial
    4 e4 s1 | % 2
    e2 s2*5 | % 5
    e2 b2 s2. \bar ""
    s4*7 b2 s1*2 | % 11
    e2 s4*5 \bar ""
    s4*9 | % 15
    e2 s2*5 | % 18
    c2 b2 s2. \bar "|."
    }

OComeOComeEmmanuelTenor =  \relative e {
    \clef "bass" \numericTimeSignature\time 2/2 \key g \major \partial 4
    <e g>4 | % 1
    <e b'>4 <d b'>4 <c b'>4 <b g'>4 | % 2
    a'2 ( fis4 ) <dis b'>4 | % 3
    <e b'>2. <e c'>4 | % 4
    <e d'>4 <d b'>4 <cis g'>4 <cis b'>4 | % 5
    <c? a'>2 g'4 ( fis4 ) | % 6
    <e g>2. \bar ""
    <e b'>4 | % 7
    <e b'>4 <e a>4 <a, a'>4 <a a'>4 | % 8
    <e' b'>2 a4 ( g4 ) | % 9
    <b, fis'>2. <b b'>4 | \barNumberCheck #10
    <e b'>4 <e b'>4 <d b'>4 <b d'>4 | % 11
    <c c'>4 ( <a e''>4 ) <b d'>4 ( ~ <d d'>4 ) | % 12
    <g b>2. \bar ""
    <g b>4 | % 13
    <d a'>2. <e g>4 | % 14
    <b fis'>2. <fis' a>4 | % 15
    <a c>4 ( <a, a'>4 <b fis'>4 ) <dis b'>4 | % 16
    <e b'>2. <fis a>4 | % 17
    g4 <b, g'>4 <c g'>4 <b d>4 | % 18
    e4 ( fis4 ) g4 ( fis4 ) | % 19
    <e g>2. \bar "|."
    }

OComeOComeEmmanuelBass =  \relative c {
    \clef "bass" \numericTimeSignature\time 2/2 \key g \major \partial 4
    s4*5 | % 2
    c4 ( a4  b ) s4 s2. \bar ""
    s4*7 b2 s4*15 \bar ""
    s4*17 | % 17
    g'4 s2. | % 18
    a,2 b2 s2. \bar "|."
    }


% The score definition
\tocItem \markup "O Come, O Come, Emmanuel"
\score {
\header {
    title =  "O Come, O Come, Emmanuel"
    composer =  "VENI EMMANUEL"
    arranger =  "Jason Hunsaker"
    }

    <<
        \new StaffGroup
        <<
            \new Staff
            <<
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "OComeOComeEmmanuelSoprano" {  \voiceOne \OComeOComeEmmanuelSoprano }
                    \new Lyrics \lyricsto "OComeOComeEmmanuelSoprano" { \set stanza = "1." \OComeOComeEmmanuelVerseOne }
                    \new Lyrics \lyricsto "OComeOComeEmmanuelSoprano" { \set stanza = "2." \OComeOComeEmmanuelVerseTwo }
                    \new Lyrics \lyricsto "OComeOComeEmmanuelSoprano" { \set stanza = "3." \OComeOComeEmmanuelVerseThree }
                    \new Lyrics \lyricsto "OComeOComeEmmanuelSoprano" { \set stanza = "4." \OComeOComeEmmanuelVerseFour }
                    \new Lyrics \lyricsto "OComeOComeEmmanuelSoprano" { \set stanza = "5." \OComeOComeEmmanuelVerseFive }
                    \context Voice = "OComeOComeEmmanuelAlto" {  \voiceTwo \OComeOComeEmmanuelAlto }
                    >>
                >>
            \new Staff
            <<
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "OComeOComeEmmanuelTenor" {  \voiceOne \OComeOComeEmmanuelTenor }
                    \context Voice = "OComeOComeEmmanuelBass" {  \voiceTwo \OComeOComeEmmanuelBass }
                    >>
                >>
            >>
        >>
    }


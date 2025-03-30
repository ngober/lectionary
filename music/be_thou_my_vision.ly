BeThouMyVisionSoprano =  \relative es' {
    \clef "treble" \numericTimeSignature\time 3/4 \key es \major | % 1
    es4 es4 f8( es8) | % 2
    c4 bes4 c4 | % 3
    es4 es4 f4 | % 4
    g2. | % 5
    f4 f4 f4 | % 6
    f4 g4 bes4 | % 7
    c4 bes4 g4 | % 8
    bes2. | % 9
    c4 c8( d8) es8( d8) | \barNumberCheck #10
    \slurDashed c4( bes4) g4 | % 11
    bes4 es,4 d4 | % 12
    \slurSolid c2( bes4) | % 13
    es4 g4 bes4 | % 14
    c8( bes8) g4 es8( g8) | % 15
    f4 es4 es4 | % 16
    es2. \bar "|."
    }

BeThouMyVisionAlto =  \relative c' {
    \clef "treble" \numericTimeSignature\time 3/4 \key es \major | % 1
    bes4 bes4 bes4 | % 2
    aes4 bes4 c4 | % 3
    bes4 c4 d4 | % 4
    es2. | % 5
    d4 d4 es4 | % 6
    f4 es4 es4 | % 7
    es4 es4 es4 | % 8
    f2. | % 9
    aes4 es4 es4 | \barNumberCheck #10
    \slurDashed es4( es4) f4 | % 11
    es4 c bes4 | % 12
    \slurSolid aes2( bes4) | % 13
    bes4 es4 f4 | % 14
    es4 es4 d4 | % 15
    c4 c4 aes4 | % 16
    bes2. \bar "|."
    }

BeThouMyVisionTenor =  \relative g {
    \clef "bass" \numericTimeSignature\time 3/4 \key es \major | % 1
    g4 g4 es4 | % 2
    es4 d4 es4 | % 3
    es4 g4 bes4 | % 4
    bes2. | % 5
    bes4 bes4 a4 | % 6
    bes4 bes4 bes4 | % 7
    aes4 bes4 c4 | % 8
    d2. | % 9
    es4 c8( bes8) aes4 | \barNumberCheck #10
    \slurDashed aes4( g4) bes4 | % 11
    g4 g4 f4 | % 12
    \slurSolid es2( f4) | % 13
    g4 bes4 bes4 | % 14
    g4 bes4 bes4 | % 15
    aes4 aes4 f4 | % 16
    <es g>2. \bar "|."
    }

BeThouMyVisionBass =  \relative bes, {
    \clef "bass" \numericTimeSignature\time 3/4 \key es \major | % 1
    es4 es4 g,4 | % 2
    aes4 bes4 aes4 | % 3
    g4 c4 bes4 | % 4
    es2. | % 5
    bes4 bes4 c4 | % 6
    d4 es4 g4 | % 7
    aes4 g4 c4 | % 8
    bes2. | % 9
    aes,4 aes4 c4 | \barNumberCheck #10
    \slurDashed es4( es4) d4 | % 11
    c4 c4 g4 | % 12
    \slurSolid aes4( c4 d4) | % 13
    es4 es4 d4 | % 14
    c4 bes4 g4 | % 15
    aes4 <aes es'>4 <f c'>4 | %16
    <es bes'>2. \bar "|."
    }

BeThouMyVisionVerseOne =  \lyricmode {
    Be thou my vis -- "ion," Oh Lord of my "heart;"
    Naught be all else to me save that thou "art."
    Thou my best thought by day and by "night;"
    Wak -- ing or sleep -- "ing," thy pre -- sence my "light"
    }

BeThouMyVisionVerseTwo =  \lyricmode {
    Be thou my wis -- "dom," and thou my true "Word;"
    I ev -- er with thee and thou with "me," "Lord."
    Thou my great
    \set ignoreMelismata = ##t
    Fa -- "ther,"
    \unset ignoreMelismata
    and I thy dear "child;"
    Thou in me dwell -- "ing," with thee re -- con -- "ciled."
    }

BeThouMyVisionVerseThree =  \lyricmode {
    Rich -- es I heed "not," nor "vain," em --pty "praise;"
    Thou mine in -- her -- it -- ance now and al -- "ways."
    Thou and thou on -- "ly," first in my "heart,"
    High King of Heav -- "en," my trea -- sure thou "art."
    }

BeThouMyVisionVerseFour =  \lyricmode {
    High King of Heav -- "en," my vic -- to -- ry "won,"
    May I reach Heav -- "en's" "joys," Oh bright "Heaven's" "Sun!"
    Heart of my "heart," what -- ev -- er be -- "fall,"
    Still be my vis -- "ion," Oh Rul -- er of "all."
    }




% The score definition
\tocItem \markup "Be Thou My Vision"
\score {
    \header {
        title = "Be Thou My Vision"
        composer =  "Ancient Irish Tune"
        poet = "Mary E. Byrne (1880-1931)"
    }
    <<
        \new StaffGroup <<
        \new Staff <<
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "BeThouMyVisionSoprano" {  \voiceOne \BeThouMyVisionSoprano }
                \new Lyrics \lyricsto "BeThouMyVisionSoprano" { \set stanza = "1." \BeThouMyVisionVerseOne }
                \new Lyrics \lyricsto "BeThouMyVisionSoprano" { \set stanza = "2." \BeThouMyVisionVerseTwo }
                \new Lyrics \lyricsto "BeThouMyVisionSoprano" { \set stanza = "3." \BeThouMyVisionVerseThree }
                \new Lyrics \lyricsto "BeThouMyVisionSoprano" { \set stanza = "4." \BeThouMyVisionVerseFour }
                \context Voice = "BeThouMyVisionAlto" {  \voiceTwo \BeThouMyVisionAlto }
        >>
        \new Staff <<
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "BeThouMyVisionTenor" {  \voiceOne \BeThouMyVisionTenor }
                \context Voice = "BeThouMyVisionBass" {  \voiceTwo \BeThouMyVisionBass }
        >>
    >>
    >>
}


ComeYeSinnersSoprano =  \relative f' {
    \clef "treble" \numericTimeSignature\time 4/4 \key as \major | % 1
    f4 as4 f4 es8( f8) | % 2
    as4 as4 f8( es8) c4 | % 3
    es4 es4 f4 es8( f8) | % 4
    as4 bes4 c2 | % 5
    c4 es4 c8( bes8) as4 | % 6
    bes4 c4 as8( f8) es4 | % 7
    f4. as8 f8( es8) c8( bes8) | % 8
    c4 es4 f2 \bar "||"
    f4 as8 as8 f4 es8( f8) | \barNumberCheck #10
    as4 as4 f8( es8) c4 | % 11
    es4 es8 es8 f4 es8( f8) | % 12
    as4 bes4 c2 | % 13
    c4 es4 c8( bes8) as4 | % 14
    bes4 c4 as8( f8) es4 | % 15
    f4. as8 f8( es8) c8( bes8) | % 16
    c4 es4 f2 \bar "|."
    }

ComeYeSinnersAlto = \relative f' {
    \clef "treble" \numericTimeSignature\time 4/4 \key as \major | %1
    c4 c des des  | %2
    c4 c des c  | %3
    c4 c des es | %4
    c4 es es2 | %5
    es4 es aes8( g) f4 | %6
    es4 es c c | %7
    c4. es8 des8( bes) c8( bes) | %7
    c4 bes c2 \bar "||"
    c4 c8 c des4 des | %9
    c4 c des c | %10
    c4 c8 c des4 es | %11
    c4 es es2 | %12
    es4 es aes8( g) f4 | %13
    es4 es c c | %14
    c4. es8 des8( bes) c8( bes) | %15
    c4 bes c2 \bar "|."
}

ComeYeSinnersTenor =  \relative g {
    \clef "bass" \numericTimeSignature\time 4/4 \key as \major | % 1
    aes4 aes aes aes | %2
    aes4 aes aes aes | %3
    aes4 aes aes aes | %4
    aes4 g aes2 | %5
    aes4 bes c c | %6
    bes4 aes aes g | %7
    aes4. aes8 aes8( g) aes( g) | %8
    aes4 bes aes2 \bar "||" %9
    aes4 aes8 aes aes4 aes | %10
    aes4 aes aes aes | %11
    aes4 aes8 aes aes4 aes | %12
    aes4 g aes2 | %13
    aes4 bes c c | %14
    bes4 aes aes g | %15
    aes4. aes8 aes8( g) aes( g) | %16
    aes4 bes aes2 \bar "|."
}

ComeYeSinnersBass =  \relative g {
    \clef "bass" \numericTimeSignature\time 4/4 \key as \major | % 1
    f4 f f f | %2
    f4 f des aes | %3
    aes4 aes des c | %4
    f4 es aes,2 | %5
    aes'4 g f f | %6
    g4 aes f c | %7
    f4. c8 des8( es) f8( g) | %8
    aes4 g f2 | %9
    f4 f8 f f4 f | %10
    f4 f des g | %11
    g4 g8 g des4 c | %12
    f4 es g2 | %13
    aes4 g f f | %14
    g4 aes f c | %15
    f4. c8 des8( es) f( g) | %16
    aes4 g f2 \bar "|."
}

ComeYeSinnersVerseOne =  \lyricmode {
    Come ye sin -- "ners, " poor and nee -- "dy," Weak and woun -- "ded," sick and "sore;"
    Je -- sus read -- y stands to save "you," Full of pi -- "ty," love and "pow'r."
    I will a -- rise and go to Je -- "sus," He will em -- brace me in His "arms;"
    In the arms of my dear Sa -- "vior," O there are ten thou -- sand "charms."
    }

ComeYeSinnersVerseTwo =  \lyricmode {
    "Come," ye thir -- "sty, " come and wel -- "come,"
    "God's" free boun -- "ty " glo -- ri -- "fy;"
    True be -- lief and true re -- pen -- "tance,"
    "Ev'" -- ry grace that brings you "nigh."
    }

ComeYeSinnersVerseThree =  \lyricmode {
    Come ye wea -- "ry, " hea -- vy -- la -- "den,"
    Lost and ru -- ined by the "fall;"
    If you tar -- ry till "you're" bet -- "ter,"
    You will ne -- ver come at "all."
    }

ComeYeSinnersVerseFour =  \lyricmode {
    Let not cons -- "cience " make you lin -- "ger,"
    Nor of fit -- ness fond -- ly "dream;"
    All the fit -- ness He re -- qui -- reth
    Is to feel your  need of "Him."
    }


% The score definition
\tocItem \markup "Come, Ye Sinners, Poor and Needy"
\score {
\header {
    title =  "Come, Ye Sinners, Poor and Needy"
    poet = "Joseph Hart (1712-1768)"
    composer = "Walker's \"Southern Harmony\", 1835"
    }

    <<
        \new StaffGroup
        <<
            \new Staff << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "ComeYeSinnersSoprano" {  \voiceOne \ComeYeSinnersSoprano }
                \new Lyrics \lyricsto "ComeYeSinnersSoprano" { \set stanza = "1." \ComeYeSinnersVerseOne }
                \new Lyrics \lyricsto "ComeYeSinnersSoprano" { \set stanza = "2." \ComeYeSinnersVerseTwo }
                \new Lyrics \lyricsto "ComeYeSinnersSoprano" { \set stanza = "3." \ComeYeSinnersVerseThree }
                \new Lyrics \lyricsto "ComeYeSinnersSoprano" { \set stanza = "4." \ComeYeSinnersVerseFour }
                \context Voice = "ComeYeSinnersAlto" {  \voiceTwo \ComeYeSinnersAlto }
                >>
            >>

            \new Staff <<
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "ComeYeSinnersTenor" {  \voiceOne \ComeYeSinnersTenor }
                \context Voice = "ComeYeSinnersBass" {  \voiceTwo \ComeYeSinnersBass }
            >>
        >>
    }


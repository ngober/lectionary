TurnYourEyesSoprano =  \relative f' {
    \clef "treble" \time 3/4 \key f \major | % 1
    <f a>4 s2 | % 2
    <f a>4 <f gis>4 <f a>4 | % 3
    <f c'>4 <f bes>4 <es a>4 | % 4
    <d a'>2. | % 5
    <d g>2 d4 | % 6
    <c f>4 <c e>4 <c f>4 | % 7
    <e a>4 <e g>4 c4 | % 8
    <f a>2. ~ ~ | % 9
    <f a>2 <f a>8 <f a>8 | \barNumberCheck #10
    <f a>4 <f gis>4 <f a>4 | % 11
    <f d'>4 <f c'>4 <f a>4 | % 12
    <f a>2. | % 13
    g2 <e g>4 | % 14
    <f a>4 <d b'>4 <dis c'>4 | % 15
    e4 <c f>4 <b d>4 | % 16
    c2. ~ | % 17
    c2. \bar "||"
    <c a'>2 <c a'>4 | % 19
    <e c'>4. <e a>8 <e g>4 | \barNumberCheck #20
    f2. | % 21
    <es f>2 <es f>4 | % 22
    <d bes'>4 <d bes'>4 <d bes'>4 | % 23
    <d d'>4 <d bes'>4 <d a'>4 | % 24
    g2. ~ | % 25
    <e g>2 <f a>8 <f bes>8 | % 26
    <f c'>2 <e c'>4 | % 27
    <f c'>4 <f a>4 <e g>4 | % 28
    f2 <es f>4 | % 29
    <d f>2 f8 <f g>8 | \barNumberCheck #30
    <f a>4. <e g>8 <f a>4 | % 31
    <e bes'>4 <e a>4 <e g>4 | % 32
    <c f>2 \bar "|."
    }

TurnYourEyesVerseOne =  \lyricmode {
    O "soul," are you wear -- y and trou -- "bled?"
    No light in the dark -- ness you "see?"
    "There’s" a light for a look at the Sav -- "ior,"
    And life more a -- bun -- dant and "free!"
    }

TurnYourEyesVerseTwo =  \lyricmode {
    Through death in -- to life ev -- er -- last -- ing He
    "passed," and we fol -- low Him "there;" Ov -- er us sin no
    more hath do -- min -- "ion" For more than con -- quer -- ors we
    "are!" Turn your eyes up -- on Je -- "sus," Look full in His
    won -- der -- ful "face," And the things of earth will grow
    strange -- ly "dim," In the light of His glo -- ry and "grace."
    }

TurnYourEyesVerseThree =  \lyricmode {
    His Word shall not fail you He prom -- "ised;" Be -- lieve
    "Him," and all will be "well:" Then __ \skip1 go to a world that is
    dy -- "ing," His pe -- rfect sal -- va -- tion to "tell!"
    }

TurnYourEyesAlto =  \relative d' {
    \clef "treble" \time 3/4 \key f \major s2*7 d4 s4*5 c4 s4*15 | % 13
    g'2 s1 | % 15
    e4 s2 | % 16
    c2. ~ | % 17
    c2. \bar "||"
    s1. | \barNumberCheck #20
    f2. s4*9 | % 24
    d4 ( c4 d4 s4*9 | % 28
    f2 s2. f8 s8*17 \bar "|."
    }

TurnYourEyesTenor =  \relative f {
    \clef "bass" \time 3/4 \key f \major | % 1
    <f c'>4 s2 | % 2
    <f c'>4 <f b>4 <f c'>4 | % 3
    <f a>4 <d f>4 <c f>4 | % 4
    f2 ( fis4 ) | % 5
    <bes, g'>2 <bes bes'>4 | % 6
    <c a'>4 <c g'>4 <c a'>4 | % 7
    <c c'>4 <c bes'>4 <e g>4 | % 8
    <f c'>2. ~ ~ | % 9
    <f c'>2 <f c'>8 <f c'>8 | \barNumberCheck #10
    <f c'>4 <f b>4 <f c'>4 | % 11
    <f bes>4 <f a>4 <f c'>4 | % 12
    <d b'>2. | % 13
    <e c'>2 <c c'>4 | % 14
    <f c'>4 <f g>4 <fis a>4 | % 15
    <g c>4 <d a'>4 <g, f'>4 | % 16
    <c e>2 ( <d f>4 | % 17
    <e g>2. ) \bar "||"
    f2 f4 | % 19
    <c g'>4. <c c'>8 <c bes'>4 | \barNumberCheck #20
    <d a'>2. | % 21
    <c a'>2 <f a>4 | % 22
    <bes, bes'>4 <bes a'>4 <bes g'>4 | % 23
    <bes f'>4 <bes g'>4 <b f'>4 | % 24
    f'4 e4 f4 | % 25
    <c g'>2 f8 <f g>8 | % 26
    <f a>2 <g bes>4 | % 27
    <a c>4 <f c'>4 <cis bes'>4 | % 28
    <d a'>2 <c a'>4 | % 29
    <bes bes'>2 <d a'>8 <des bes'>8 | \barNumberCheck #30
    <c c'>4. <c c'>8 <c c'>4 | % 31
    <c d'>4 <c c'>4 <c bes'>4 | % 32
    <f a>2 \bar "|."
    }

TurnYourEyesBass =  \relative bes, {
    \clef "bass" \time 3/4 \key f \major s4*9 | % 4
    bes2. s4*39 \bar "||"
    f'2 f4 s4*15 | % 24
    c2. ~ s2 f8 s8*41 \bar "|."
    }


% The score definition
\tocItem \markup "Turn Your Eyes Upon Jesus"
\score {
\header {
    title =  "Turn Your Eyes Upon Jesus"
    composer =  "Helen Howarth Lemmel, 1922"
    }

    <<
        \new StaffGroup <<
            \new Staff
            <<
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "TurnYourEyesSoprano" {  \voiceOne \TurnYourEyesSoprano }
                    \new Lyrics \lyricsto "TurnYourEyesSoprano" { \set stanza = "1." \TurnYourEyesVerseOne }
                    \new Lyrics \lyricsto "TurnYourEyesSoprano" { \set stanza = "2." \TurnYourEyesVerseTwo }
                    \new Lyrics \lyricsto "TurnYourEyesSoprano" { \set stanza = "3." \TurnYourEyesVerseThree }
                    \context Voice = "TurnYourEyesAlto" {  \voiceTwo \TurnYourEyesAlto }
                >>
            >>
            \new Staff
            <<
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "TurnYourEyesTenor" {  \voiceOne \TurnYourEyesTenor }
                    \context Voice = "TurnYourEyesBass" {  \voiceTwo \TurnYourEyesBass }
                >>
            >>
        >>
    >>
}


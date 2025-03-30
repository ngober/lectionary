OComeAllYeFaithfulSoprano =  \relative g' {
    \clef "treble" \numericTimeSignature\time 4/4 \key g \major \partial
    4 g4 | % 1
    g2 d4 g4 | % 2
    a2 d,2 | % 3
    b'4 a4 b4 c4 | % 4
    b2 a4 g4 | % 5
    g2 fis4 e4 | % 6
    fis4 ( g4 ) a4 b4 | % 7
    fis2 ( e4. ) d8 | % 8
    d1 | % 9
    d'2 c4 b4 | \barNumberCheck #10
    b2 b2 | % 11
    a4 b4 g4 a4 | % 12
    fis4. ( e8 ) d4 s4 | % 13
    g4 s2. | % 14
    g4 fis4 g4 a4 | % 15
    g2 d4 b'4 | % 16
    b4 a4 b4 c4 | % 17
    b2 a4 b4 | % 18
    c4 b4 a4 g4 | % 19
    fis2 g4 ( c4 ) | \barNumberCheck #20
    b2 ( a4. ) g8 | % 21
    g1 \bar "|."
    }

OComeAllYeFaithfulVerseOne =  \lyricmode {\set ignoreMelismata = ##t
    O come, all ye faith -- ful, joy -- ful and
    tri -- um -- phant, O come ye O come\skip1 ye
    to Beth --\skip1 le -- hem; Come and be --
    hold him, born the King of an --\skip1 gels O
    come, let us a -- dore him! O come let us a -- dore him! O
    come, let us a -- dore him, \skip1 Christ\skip1 the Lord!
    }

OComeAllYeFaithfulVerseTwo =  \lyricmode {\set ignoreMelismata = ##t
    _ Sing, choirs of an -- gels; sing in ex -- ul -- ta -- tion;
    _ sing, all ye ci -- ti -- zens of hea --\skip1 v'n a -- bove!
    Glory to God, all glo -- ry in the high --\skip1 est!
%   O come, let us a -- dore him! O come let us a -- dore him!
%   O come, let us a -- dore him, \skip1 Christ\skip1 the Lord!
}

OComeAllYeFaithfulVerseThree =  \lyricmode {\set ignoreMelismata = ##t
    _ Yea, Lord, we greet Thee, born this hap -- py mor -- ning;
    _ Je -- sus, to Thee _ be all glo --\skip1 ry giv'n!
    Word of the Fa -- ther, now in flesh ap -- pear --\skip1 ing!
%   O come, let us a -- dore him! O come let us a -- dore him!
%   O come, let us a -- dore him, \skip1 Christ\skip1 the Lord!
    }

OComeAllYeFaithfulAlto =  \relative d' {
    \clef "treble" \numericTimeSignature\time 4/4 \key g \major \partial
    4 d4 | % 1
    d2 d4 d4 | % 2
    e2 d2 | % 3
    d4 d4 d4 e4 | % 4
    d2 d4 b4 | % 5
    b4 ( cis4 ) d4 cis4 | % 6
    d2 d4 d4 | % 7
    d2 ( cis4. ) d8 | % 8
    d1 | % 9
    d2 e8 ( [ fis8 ) ] g4 | \barNumberCheck #10
    e4 ( fis4 ) g2 | % 11
    d4 d4 e4 e4 | % 12
    d2 d4 s4 | % 13
    d4 s2. | % 14
    d4 d4 d4 d4 | % 15
    d2 d4 d4 | % 16
    d4 d4 d4 d4 | % 17
    d2 d4 g4 | % 18
    fis4 g4 d4 d8 ( [ cis8 ) ] | % 19
    d2 d4 ( e4 ) | \barNumberCheck #20
    d2 ~ d4. b8 | % 21
    b1 \bar "|."
    }

OComeAllYeFaithfulTenor =  \relative b {
    \clef "bass" \numericTimeSignature\time 4/4 \key g \major \partial 4
    b4 | % 1
    b2 b4 b4 | % 2
    c2 a2 | % 3
    g4 a4 g4 g4 | % 4
    g2 fis4 g4 | % 5
    g2 a4 a4 | % 6
    a4 ( g4 ) fis4 d4 | % 7
    a'2 ( g4. ) fis8 | % 8
    fis1 | % 9
    b2 c4 d4 | \barNumberCheck #10
    c2 d2 | % 11
    d4 g,4 b4 c4 | % 12
    a2 fis4 s4 | % 13
    b4 s2. | % 14
    b4 a4 b4 c4 | % 15
    b2 g4 g4 | % 16
    g4 fis4 g4 a4 | % 17
    g2 fis4 d'4 | % 18
    d4 d4 a4 a4 | % 19
    a2 g2 | \barNumberCheck #20
    g2 ( fis4. ) g8 | % 21
    g1 \bar "|."
    }

OComeAllYeFaithfulBass =  \relative g {
    \clef "bass" \numericTimeSignature\time 4/4 \key g \major \partial 4
    g4 | % 1
    g2 b4 g4 | % 2
    g2 fis2 | % 3
    g4 fis4 g4 c,4 | % 4
    d2 d4 e4 | % 5
    e2 d4 a4 | % 6
    d4 ( b4 ) fis4 g4 | % 7
    a2 ~ a4. d8 | % 8
    d1 | % 9
    b'2 a4 g4 | \barNumberCheck #10
    a2 g2 | % 11
    fis4 g4 e4 c4 | % 12
    d2 d4 s4*5 | % 14
    R1*3 | % 17
    r2 r4 g4 | % 18
    a4 g4 fis4 e4 | % 19
    d4 ( c4 ) b4 ( c4 ) | \barNumberCheck #20
    d2 ~ d4. g,8 | % 21
    g1 \bar "|."
    }


% The score definition
\tocItem \markup "O Come, All Ye Faithful"
\score {
\header {
    title =  "O Come, All Ye Faithful"
    composer =  "John Francis Wade (1711-1786)"
    }

    <<
        \new StaffGroup <<
            \new Staff
            <<
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "OComeAllYeFaithfulSoprano" {  \voiceOne \OComeAllYeFaithfulSoprano }
                    \new Lyrics \lyricsto "OComeAllYeFaithfulSoprano" { \set stanza = "1." \OComeAllYeFaithfulVerseOne }
                    \new Lyrics \lyricsto "OComeAllYeFaithfulSoprano" { \set stanza = "2." \OComeAllYeFaithfulVerseTwo }
                    \new Lyrics \lyricsto "OComeAllYeFaithfulSoprano" { \set stanza = "3." \OComeAllYeFaithfulVerseThree }
                    \context Voice = "OComeAllYeFaithfulAlto" {  \voiceTwo \OComeAllYeFaithfulAlto }
                    >>
                >>
            \new Staff
            <<
                \context Staff << 
                    \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                    \context Voice = "OComeAllYeFaithfulTenor" {  \voiceOne \OComeAllYeFaithfulTenor }
                    \context Voice = "OComeAllYeFaithfulBass" {  \voiceTwo \OComeAllYeFaithfulBass }
                    >>
                >>
        >>
    >>
}


\version "2.22.1"

jldnjccdaheoafngcofmaajngghibjepgibngdjldijdopnnloeckieamjlhciblSoprano = 
\relative es' {
\clef "treble"
\numericTimeSignature\time 4/4
\key g \major

b'4 b c d | d4 c b a | g4 g a b | b4. a8 a2 |
b4 b c d | d4 c b a | g4 g a b | a4. g8 g2 |
a4 a b g | a4 b8( c8) b4 g | a4 b8( c8) b4 a | g4 a d,2 |
b'4 b c d | d4 c b a | g4 g a b | a4. g8 g2 \bar "|."
}

jldnjccdaheoafngcofmaajngghibjepgibngdjldijdopnnloeckieamjlhciblAlto = 
\relative c' {
\clef "treble"
\numericTimeSignature\time 4/4
\key g \major

d4 d d d | d4 e8( fis8) g4 d | d4 d fis g | g4. f8 f2 |
g4 d e f | f4 e d e | d4 d fis g | fis4. g8 g2 |
fis4 d d g | fis4 g8( fis8) g4 g | fis4 fis fis dis | e8( d8) cis4 d2 |
d4 d e f | f4 e d e | d4 d fis g | fis4. g8 g2 \bar "|."
}

jldnjccdaheoafngcofmaajngghibjepgibngdjldijdopnnloeckieamjlhciblTenor = 
\relative g {
\clef "bass"
\numericTimeSignature\time 4/4
\key g \major

g4 g a b | b4 a g fis | g4 b c d | d4. 8 2 |
d4 d c b | g4 a b c | b4 b c d | c4. b8 b2 |
d4 fis, g b | c4 b8( a8)  g4 b | c4 b8( a8) b4 b | b4 a8( g8) fis2 |
g4 d' c b | g4 a b c | b4 b c d | c4. b8 b2 | \bar "|."
}

jldnjccdaheoafngcofmaajngghibjepgibngdjldijdopnnloeckieamjlhciblBass = 
\relative d {
\clef "bass"
\numericTimeSignature\time 4/4
\key g \major

g4 g g g | d4 d d c | b4 b a g | d'4. 8 2 |
g4 g g g | c,4 c c c | d4 d d d | d4. g8 g2 |
d4 d d d | d4 d d d | d4 d dis b | e4 a, d2 |
g4 g g g | c,4 c c c | d4 d d d | d4. g8 g2 | \bar "|."
}

\tocItem \markup "Joyful, Joyful, We Adore Thee"
\score {
    \header {
        title = "Joyful, Joyful, We Adore Thee"
        
        
        poet = "Henry Van Dyke (1852-1933)"
        
        
        composer = "Ludwig Van Beethoven (1770-1827)"
        
        
    }
    <<
        \new ChoirStaff <<
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \jldnjccdaheoafngcofmaajngghibjepgibngdjldijdopnnloeckieamjlhciblSoprano \jldnjccdaheoafngcofmaajngghibjepgibngdjldijdopnnloeckieamjlhciblAlto }
\context NullVoice = "jldnjccdaheoafngcofmaajngghibjepgibngdjldijdopnnloeckieamjlhciblSoprano" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \jldnjccdaheoafngcofmaajngghibjepgibngdjldijdopnnloeckieamjlhciblSoprano
}
\context NullVoice = "jldnjccdaheoafngcofmaajngghibjepgibngdjldijdopnnloeckieamjlhciblAlto" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \jldnjccdaheoafngcofmaajngghibjepgibngdjldijdopnnloeckieamjlhciblAlto
}

		
                \new Lyrics \lyricsto "jldnjccdaheoafngcofmaajngghibjepgibngdjldijdopnnloeckieamjlhciblSoprano" {
                  
                  \set stanza = "1."
                  
                  \lyricmode {
		    
                    Joy -- ful, joy -- ful, we a -- dore thee, God of glo -- ry, Lord of love!
Hearts un -- fold like flow -- ers be -- fore thee, open -- ing to the sun a -- bove.
Melt the clouds of sin and sad -- ness; drive the dark of doubt away.
Giv -- er of im -- mor -- tal glad -- ness, fill us with the light of day.
		    
                  }
                }
		
                \new Lyrics \lyricsto "jldnjccdaheoafngcofmaajngghibjepgibngdjldijdopnnloeckieamjlhciblSoprano" {
                  
                  \set stanza = "2."
                  
                  \lyricmode {
		    
                    All thy works with joy sur -- round thee; earth and heav'n re -- flect thy rays;
stars and an -- gels sing a -- round thee, cen -- ter of un -- bro -- ken praise.
Field and for -- est, vale and moun -- tain, flow -- ery mead -- ow, flash -- ing sea,
chant -- ing bird and flow -- ing foun -- tain, call us to re -- joice in thee.
		    
                  }
                }
		
                \new Lyrics \lyricsto "jldnjccdaheoafngcofmaajngghibjepgibngdjldijdopnnloeckieamjlhciblSoprano" {
                  
                  \set stanza = "3."
                  
                  \lyricmode {
		    
                    Thou art giv -- ing and for -- giv -- ing, Ev -- er bless -- ing, ev -- er blest,
Well -- spring of the joy of liv -- ing, O -- cean depth of hap -- py rest!
Thou our Fa -- ther, Christ our Broth -- er All who live in love are Thine;
Teach us how to love each oth -- er, Lift us to the joy di -- vine.
		    
                  }
                }
		
        >>
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \jldnjccdaheoafngcofmaajngghibjepgibngdjldijdopnnloeckieamjlhciblTenor \jldnjccdaheoafngcofmaajngghibjepgibngdjldijdopnnloeckieamjlhciblBass }
\context NullVoice = "jldnjccdaheoafngcofmaajngghibjepgibngdjldijdopnnloeckieamjlhciblTenor" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \jldnjccdaheoafngcofmaajngghibjepgibngdjldijdopnnloeckieamjlhciblTenor
}
\context NullVoice = "jldnjccdaheoafngcofmaajngghibjepgibngdjldijdopnnloeckieamjlhciblBass" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \jldnjccdaheoafngcofmaajngghibjepgibngdjldijdopnnloeckieamjlhciblBass
}
        >>
    >>
    >>
}
\markup \column {
\line { \bold "4."
\column {
"Mortals join the mighty chorus Which the morning stars began;"
"Father love is reigning o’er us, Brother love binds man to man."
"Ever singing, march we onward, Victors in the midst of strife;"
"Joyful music leads us sunward In the triumph song of life."
}
}
}
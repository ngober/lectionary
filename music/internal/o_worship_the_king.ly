\version "2.22.1"

knoekconjoohgbiofjkpngaabckmbniehdogmglbgpedmapjbpbocholpjmadgjnSoprano = 
\relative es' {
\clef "treble"
\numericTimeSignature\time 3/4
\key g \major
\partial 4
d4 | g4 g a | b2 g4 | c4 c b | a2 \bar ""
d,4 | g4 g a | b2 c4 | d8( c) b4 a | g2 \bar ""
d4 | d4 d e | fis4 fis g | a4 a b | c2 \bar ""
d,4 | g4 g a | b4 b c | d8( c) b4 a | g2 \bar "|."
}

knoekconjoohgbiofjkpngaabckmbniehdogmglbgpedmapjbpbocholpjmadgjnAlto = 
\relative c' {
\clef "treble"
\numericTimeSignature\time 3/4
\key g \major
\partial 4
b4 | d4 d d | d2 d4 | c4 d d | d2 \bar ""
d4 | b4 d d | d2 e4 | d8( e) d4 c | b2 \bar ""
d4 | d4 d cis | c4 c b | a4 d g | fis2 \bar ""
d8( c8) | b4 d d | d4 d e | d8( e) d4 c | b2 \bar "|."
}

knoekconjoohgbiofjkpngaabckmbniehdogmglbgpedmapjbpbocholpjmadgjnTenor = 
\relative g {
\clef "bass"
\numericTimeSignature\time 3/4
\key g \major
\partial 4
g4 | b4 g fis | g2 g4 | g4 a g | fis2 \bar ""
fis4 | g4 g fis | g2 g4 | g4 g fis | g2 \bar ""
fis4 | fis4 fis g | a4 a g | fis4 fis g | a2 \bar ""
fis4 | g4 g fis | g4 g4 g4 | g4 g fis | g2 \bar "|."
}

knoekconjoohgbiofjkpngaabckmbniehdogmglbgpedmapjbpbocholpjmadgjnBass = 
\relative d {
\clef "bass"
\numericTimeSignature\time 3/4
\key g \major
\partial 4
g,4 | g4 b d | g2 b,4 | e4 fis g | d2 \bar ""
d4 | g,4 b d | g2 e4 | b8( c) d4 d | g,2 \bar ""
d'4 | d4 d d | d4 d d | d4 d d | d2 \bar ""
d4 | g,4 b d | g4 g e | b8( c) d4 d | g,2 \bar "|."
}

\tocItem \markup "O Worship the King"
\score {
    \header {
        title = "O Worship the King"
        
        
        poet = "Robert Grant (1779-1838)"
        
        
        composer = "Joseph Haydn (1732-1809)"
        
        
    }
    <<
        \new ChoirStaff <<
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \knoekconjoohgbiofjkpngaabckmbniehdogmglbgpedmapjbpbocholpjmadgjnSoprano \knoekconjoohgbiofjkpngaabckmbniehdogmglbgpedmapjbpbocholpjmadgjnAlto }
\context NullVoice = "knoekconjoohgbiofjkpngaabckmbniehdogmglbgpedmapjbpbocholpjmadgjnSoprano" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \knoekconjoohgbiofjkpngaabckmbniehdogmglbgpedmapjbpbocholpjmadgjnSoprano
}
\context NullVoice = "knoekconjoohgbiofjkpngaabckmbniehdogmglbgpedmapjbpbocholpjmadgjnAlto" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \knoekconjoohgbiofjkpngaabckmbniehdogmglbgpedmapjbpbocholpjmadgjnAlto
}

		
                \new Lyrics \lyricsto "knoekconjoohgbiofjkpngaabckmbniehdogmglbgpedmapjbpbocholpjmadgjnSoprano" {
                  
                  \set stanza = "1."
                  
                  \lyricmode {
		    
                    O wor -- ship the King, all -- glo -- rious a -- bove,
O grate -- ful -- ly sing his won -- der -- ful love:
our shield and de -- fend -- er, the An -- cient of Days,
pa -- vil -- ioned in splen -- dor and gird -- ed with praise.
		    
                  }
                }
		
                \new Lyrics \lyricsto "knoekconjoohgbiofjkpngaabckmbniehdogmglbgpedmapjbpbocholpjmadgjnSoprano" {
                  
                  \set stanza = "2."
                  
                  \lyricmode {
		    
                    Thy boun -- ti -- ful care, what tongue can re -- cite?
It breathes in the air, it shines in the light;
it streams from the hills, it de -- scends to the plain,
and sweet -- ly dis -- tills in the dew and the rain.
		    
                  }
                }
		
                \new Lyrics \lyricsto "knoekconjoohgbiofjkpngaabckmbniehdogmglbgpedmapjbpbocholpjmadgjnSoprano" {
                  
                  \set stanza = "3."
                  
                  \lyricmode {
		    
                    Frail chil -- dren of dust, and fee -- ble as frail,
In Thee do we trust, nor find thee to fail;
Thy mer -- cies, how ten -- der! How firm to the end!
Our mak -- er, de -- fend -- er, re -- deem -- er, and friend!
		    
                  }
                }
		
        >>
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \knoekconjoohgbiofjkpngaabckmbniehdogmglbgpedmapjbpbocholpjmadgjnTenor \knoekconjoohgbiofjkpngaabckmbniehdogmglbgpedmapjbpbocholpjmadgjnBass }
\context NullVoice = "knoekconjoohgbiofjkpngaabckmbniehdogmglbgpedmapjbpbocholpjmadgjnTenor" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \knoekconjoohgbiofjkpngaabckmbniehdogmglbgpedmapjbpbocholpjmadgjnTenor
}
\context NullVoice = "knoekconjoohgbiofjkpngaabckmbniehdogmglbgpedmapjbpbocholpjmadgjnBass" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \knoekconjoohgbiofjkpngaabckmbniehdogmglbgpedmapjbpbocholpjmadgjnBass
}
        >>
    >>
    >>
}
\markup \column {
\line { \bold "4."
\column {
"O measureless Might, unchangeable Love,"
"whom angels delight to worship above,"
"your ransomed creation, with glory ablaze,"
"in true adoration shall sing to your praise!"
}
}
}
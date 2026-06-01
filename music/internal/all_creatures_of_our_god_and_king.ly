\version "2.22.1"

niihjppbmflcopfgonfgmicmidjhfnoggbbddciojlceillbnacifianiobmajhpSoprano = 
\relative es' {
\clef "treble"
\numericTimeSignature\time 3/2
\key d \major
\partial 2
d2 | d4 e fis d fis g | a1 \bar ""
d,2 | d4 e fis d fis g | a1 \bar ""
d4 cis | b2 a d4 cis | b2 a \bar ""
d2 | d4 a a g fis g | a1 \bar ""
d2 | d4 a a g fis g | a1 \bar ""
g4( fis) | e2 d g4( fis) | e2 d \bar ""
d'4 cis | b2 a d4 cis | b2 a \bar ""
g4 fis | e1. | d1 \bar "|."
}

niihjppbmflcopfgonfgmicmidjhfnoggbbddciojlceillbnacifianiobmajhpAlto = 
\relative c' {
\clef "treble"
\numericTimeSignature\time 3/2
\key d \major
\partial 2
a2 | d4 d d d d d | d2( cis) \bar ""
d2 | a4 cis d d d d | d2( cis) \bar ""
a'4 a | a4( g) fis2 d4 e | fis4( e) cis2 \bar ""
a'4( g) | fis4 fis fis e d d | d2( cis) \bar ""
d4( e) | d4 g fis d d d | d4( cis fis e) \bar ""
d2 | d4( cis) d2 d | d4( cis) b2 \bar ""
fis'4 e | fis4( e) cis2 fis4 fis | fis4( e) e( b) \bar ""
b d | d2( cis1) | d1 \bar "|."
}

niihjppbmflcopfgonfgmicmidjhfnoggbbddciojlceillbnacifianiobmajhpTenor = 
\relative g {
\clef "bass"
\numericTimeSignature\time 3/2
\key d \major
\partial 2
fis2 | fis4 g a fis b b | a1 \bar ""
a4( b) | a4 g a a b b | a1 \bar ""
d4 d | d2 d2 fis,4 a | a4( gis) a2 \bar ""
d2 | d4 d d a a g | e2( a) \bar ""
a2 | a4 a a d cis b | a1 \bar ""
b2 | b4( a) a2 b4( a) | b4( g) fis2 \bar ""
fis4 a | a4( gis) a2 a4 a | fis4( g) e( fis) \bar ""
g a | b2( a g) | fis1 \bar "|."
}

niihjppbmflcopfgonfgmicmidjhfnoggbbddciojlceillbnacifianiobmajhpBass = 
\relative d {
\clef "bass"
\numericTimeSignature\time 3/2
\key d \major
\partial 2
d2 | d4 d d d8( cis) b4 e | a,2( a'4 g) \bar ""
fis4( g) | fis4 e d cis b e | a,2( a'4 g) \bar ""
fis4 fis | g2 d b4 cis | d4( e) a,2 \bar ""
fis'4( e) | d4 cis b cis d b | a2( a'4 g) \bar ""
fis4( g) | fis4 e d b' a g | fis4( e d cis) \bar ""
b4( a) | g2 fis e4( fis) | g4( a) b2 \bar ""
b4 cis | d4( e) a,2 b4 cis | d4( e) cis( dis) \bar ""
e fis | g2( a a,) | d1 \bar "|."
}

\tocItem \markup "All Creatures Of Our God and King"
\score {
    \header {
        title = "All Creatures Of Our God and King"
        
        
        poet = "Francis of Assisi (1225)"
        
        
        composer = "Ralph Vaughan Williams (1906)"
        
        
    }
    <<
        \new ChoirStaff <<
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \niihjppbmflcopfgonfgmicmidjhfnoggbbddciojlceillbnacifianiobmajhpSoprano \niihjppbmflcopfgonfgmicmidjhfnoggbbddciojlceillbnacifianiobmajhpAlto }
\context NullVoice = "niihjppbmflcopfgonfgmicmidjhfnoggbbddciojlceillbnacifianiobmajhpSoprano" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \niihjppbmflcopfgonfgmicmidjhfnoggbbddciojlceillbnacifianiobmajhpSoprano
}
\context NullVoice = "niihjppbmflcopfgonfgmicmidjhfnoggbbddciojlceillbnacifianiobmajhpAlto" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \niihjppbmflcopfgonfgmicmidjhfnoggbbddciojlceillbnacifianiobmajhpAlto
}

		
                \new Lyrics \lyricsto "niihjppbmflcopfgonfgmicmidjhfnoggbbddciojlceillbnacifianiobmajhpSoprano" {
                  
                  \set stanza = "1."
                  
                  \lyricmode {
		    
                    All crea -- tures of our God and King,
Lift up your voice and with us sing
Al -- le -- lu -- ia, al -- le -- lu -- ia!
Thou burn -- ing sun with gold -- en beam,
Thou sil -- ver moon with soft -- er gleam,
O praise him, O praise him,
Al -- le -- lu -- ia, al -- le -- lu -- ia, al -- le -- lu -- ia.
		    
                  }
                }
		
                \new Lyrics \lyricsto "niihjppbmflcopfgonfgmicmidjhfnoggbbddciojlceillbnacifianiobmajhpSoprano" {
                  
                  \set stanza = "2."
                  
                  \lyricmode {
		    
                    Thou rush -- ing winds that art so strong,
Ye clouds that sail in Heav'n a -- long,
O \skip1 praise him, al -- le -- lu -- ia!
Thou ris -- ing morn, in praise re -- joice,
Ye lights of even -- ing, find a voice.
		    
                  }
                }
		
                \new Lyrics \lyricsto "niihjppbmflcopfgonfgmicmidjhfnoggbbddciojlceillbnacifianiobmajhpSoprano" {
                  
                  \set stanza = "3."
                  
                  \lyricmode {
		    
                    And all ye saints of ten -- der heart,
For -- giv -- ing oth -- ers, take your part,
O \skip1 sing ye, al -- le -- lu -- ia!
Ye who long pain and sor -- row bear,
Praise God and on him cast your care:
		    
                  }
                }
		
        >>
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \niihjppbmflcopfgonfgmicmidjhfnoggbbddciojlceillbnacifianiobmajhpTenor \niihjppbmflcopfgonfgmicmidjhfnoggbbddciojlceillbnacifianiobmajhpBass }
\context NullVoice = "niihjppbmflcopfgonfgmicmidjhfnoggbbddciojlceillbnacifianiobmajhpTenor" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \niihjppbmflcopfgonfgmicmidjhfnoggbbddciojlceillbnacifianiobmajhpTenor
}
\context NullVoice = "niihjppbmflcopfgonfgmicmidjhfnoggbbddciojlceillbnacifianiobmajhpBass" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \niihjppbmflcopfgonfgmicmidjhfnoggbbddciojlceillbnacifianiobmajhpBass
}
        >>
    >>
    >>
}
\markup \column {
\line { \bold "4."
\column {
"Let all things their creator bless,"
"And worship him in humbleness,"
"O  praise him, alleluia!"
"Praise, praise the Father, praise the Son,"
"And praise the Spirit, Three in One:"
}
}
}
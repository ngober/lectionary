\version "2.22.1"

emfdkcngoafccfipibkbokpcoinciifncjolfdhncdimjpakohnobgldljidibhmSoprano = 
\relative es' {
\clef "treble"
\numericTimeSignature\time 2/2
\key g \major
\partial 4
e4 | g4 b4 b4 b4 | a4 ( c4  b4 ) a4  | g2. \bar ""
a4 | b4 g4 e4 g4 | a4 ( fis4 ) e4 ( d4 ) | e2. \bar ""
a4 | a4 e4 e4 fis4 | g2 fis4 ( e4 ) | dis2. \bar ""
g4 | a4 b4 b4 b4 | a4 ( c4 ) b4 ( a4 ) | g2.\partial 4
\bar "||"\mark "Refrain"\partial 4
d'4 | d2. b4 | b2. b4 | a4 ( c4 b4 ) a4 | g2. \bar ""
a4 | b4 g4 e4 g4 | a4 ( fis4 ) e4 ( d4 ) | e2. \bar "|."
}

emfdkcngoafccfipibkbokpcoinciifncjolfdhncdimjpakohnobgldljidibhmAlto = 
\relative c' {
\clef "treble"
\numericTimeSignature\time 2/2
\key g \major
\partial 4
e4 | e4 fis4 e4 d4 | a'4 ( c4  dis,4 ) fis4  | e2. \bar ""
e4 | e4 e4 b4 e4 | e2 b2 | b2. \bar ""
d4 | cis4 cis4 c4 c4 | b2 b2 | b2. \bar ""
e4 | fis4 g4 g4 g4 | e2 g4 ( fis4 ) | d2.\partial 4
\bar "||"\partial 4
g4 | fis2. e4 | dis2. dis4 | e2 ( dis4 ) fis4 | e2. \bar ""
d4 | d4 d4 c4 d4 | c2 b2 | b2. \bar "|."
}

emfdkcngoafccfipibkbokpcoinciifncjolfdhncdimjpakohnobgldljidibhmTenor = 
\relative g {
\clef "bass"
\numericTimeSignature\time 2/2
\key g \major
\partial 4
g4 | b4 b4 b4 g4 | a2 ( fis4 ) b4 | b2. \bar ""
c4 | d4 b4 g4 b4 | a2 g4 ( fis4 ) | g2. \bar ""
b4 | b4 a4 a4 a4 | b2 a4 ( g4 ) | fis2. \bar ""
b4 | b4 b4 b4 d4 | c4 ( e4 ) d4 ~ d4 | b2.\partial 4
\bar "||"\partial 4
b4 | a2. g4 | fis2. a4 | c4 ( a4 fis4 ) b4 | b2. \bar ""
a4 | g4 g4 g4 d4 | e4 ( fis4 ) g4 ( fis4 ) | g2. \bar "|."
}

emfdkcngoafccfipibkbokpcoinciifncjolfdhncdimjpakohnobgldljidibhmBass = 
\relative d {
\clef "bass"
\numericTimeSignature\time 2/2
\key g \major
\partial 4
e4 | e4 d4 c4 b4 | a2 ( fis4 ) dis'4 | e2. \bar ""
e4 | e4 d4 cis4 cis4 | c4( a b) ( fis4 ) | e2. \bar ""
e4 | e'4 e4 a4 a4 | e2 b2 | b2. \bar ""
b4 | e4 e4 d4 b4 | c4 ( a4 ) b4 ( d4 ) | g2.\partial 4
\bar "||"\partial 4
g4 | d2. e4 | b2. fis4 | a4 ( a,4 b4 ) dis4 | e2. \bar ""
fis4 | g4 b,4 c4 b4 | a2 b2 | e2. \bar "|."
}

\tocItem \markup "O Come, O Come, Emmanuel"
\score {
    \header {
        title = "O Come, O Come, Emmanuel"
        
        
        
        composer = "VENI EMMANUEL"
        
        
        arranger = "arr. Jason Hunsaker"
        
    }
    <<
        \new ChoirStaff <<
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \emfdkcngoafccfipibkbokpcoinciifncjolfdhncdimjpakohnobgldljidibhmSoprano \emfdkcngoafccfipibkbokpcoinciifncjolfdhncdimjpakohnobgldljidibhmAlto }
\context NullVoice = "emfdkcngoafccfipibkbokpcoinciifncjolfdhncdimjpakohnobgldljidibhmSoprano" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \emfdkcngoafccfipibkbokpcoinciifncjolfdhncdimjpakohnobgldljidibhmSoprano
}
\context NullVoice = "emfdkcngoafccfipibkbokpcoinciifncjolfdhncdimjpakohnobgldljidibhmAlto" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \emfdkcngoafccfipibkbokpcoinciifncjolfdhncdimjpakohnobgldljidibhmAlto
}

		
                \new Lyrics \lyricsto "emfdkcngoafccfipibkbokpcoinciifncjolfdhncdimjpakohnobgldljidibhmSoprano" {
                  
                  \set stanza = "1."
                  
                  \lyricmode {
		    
                    O come, O come, Em -- man -- u -- el,
And ran -- som cap -- tive Is -- ra -- el,
That mourns in lone -- ly ex -- ile here
Un -- til the Son of God ap -- pear.
		    
                    Re -- joice! Re -- joice! Em -- man -- u -- el Shall come to thee, O Is -- ra -- el!
		    
                  }
                }
		
                \new Lyrics \lyricsto "emfdkcngoafccfipibkbokpcoinciifncjolfdhncdimjpakohnobgldljidibhmSoprano" {
                  
                  \set stanza = "2."
                  
                  \lyricmode {
		    
                    O come, Thou Day -- spring, come and cheer
And com -- fort by Thine ad -- vent here;
Dis -- pel the long night’s brood -- ing gloom;
And rend the shad -- ows of the tomb.
		    
		    
                  }
                }
		
                \new Lyrics \lyricsto "emfdkcngoafccfipibkbokpcoinciifncjolfdhncdimjpakohnobgldljidibhmSoprano" {
                  
                  \set stanza = "3."
                  
                  \lyricmode {
		    
                    O come, Thou Rod of Jes -- se’s stem,
From ev -- ery wound Thou heal -- est them
That in Thy word doth trust and heed;
That they there -- by be -- come Thy seed.
		    
		    
                  }
                }
		
        >>
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \emfdkcngoafccfipibkbokpcoinciifncjolfdhncdimjpakohnobgldljidibhmTenor \emfdkcngoafccfipibkbokpcoinciifncjolfdhncdimjpakohnobgldljidibhmBass }
\context NullVoice = "emfdkcngoafccfipibkbokpcoinciifncjolfdhncdimjpakohnobgldljidibhmTenor" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \emfdkcngoafccfipibkbokpcoinciifncjolfdhncdimjpakohnobgldljidibhmTenor
}
\context NullVoice = "emfdkcngoafccfipibkbokpcoinciifncjolfdhncdimjpakohnobgldljidibhmBass" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \emfdkcngoafccfipibkbokpcoinciifncjolfdhncdimjpakohnobgldljidibhmBass
}
        >>
    >>
    >>
}
\markup \column {
\line { \bold "4."
\column {
"O come, Thou Key of David, come"
"And open up our Heav’nly home;"
"Unlock the fetters of the mind,"
"And open up the eyes of the blind."
}
}
}
\markup \column {
\line { \bold "5."
\column {
"O come, Desire of Nations, bind"
"In one the hearts of humankind;"
"That we our sad divisions cease;"
"And fill the world with heaven’s  peace."
}
}
}
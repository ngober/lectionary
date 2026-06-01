\version "2.22.1"

nejindhgekepfioecleakaloobioiocfnbolipjbhcdkacffmnjjmagpmiheijfiSoprano = 
\relative es' {
\clef "treble"
\numericTimeSignature\time 3/4
\key d \major
\partial 4
fis8 e | d4 4 fis8 a | e4 4 fis8 a | b4 a fis8 e | d2  \bar ""
fis8 e | d4 4 fis8 a | e4 4 fis8 a | b4 a fis8 e | d2  \bar ""
a'8 b16( cis) | d4 cis b8 a | b8( a) fis4 a8 b16( cis) | d4 cis b8 a | d2 \bar ""
fis,8 e | d4 4 fis8 a | e4 4 fis8 a | b4 a fis8 e | d2  \bar "|."
}

nejindhgekepfioecleakaloobioiocfnbolipjbhcdkacffmnjjmagpmiheijfiAlto = 
\relative c' {
\clef "treble"
\numericTimeSignature\time 3/4
\key d \major
\partial 4
d8 cis | d4 4 d8 d | cis4 4 d8 d | d4 d d8 cis | d2  \bar ""
d8 cis | d4 4 d8 d | cis4 4 d8 d | d4 d d8 cis | d2  \bar ""
d8 g | fis4 a g8 fis | d4 d4 d8 g8 | fis4 a g8 fis | fis2 \bar ""
d8 cis | d4 4 d8 d | cis4 4 d8 d | d4 d d8 cis | d2  \bar "|."
}

nejindhgekepfioecleakaloobioiocfnbolipjbhcdkacffmnjjmagpmiheijfiTenor = 
\relative g {
\clef "bass"
\numericTimeSignature\time 3/4
\key d \major
\partial 4
a8 g | fis4 4 a8 a | a4 4 a8 a | g4 fis a8 g | fis2  \bar ""
a8 g | fis4 4 a8 a | a4 4 a8 a | g4 fis a8 g | fis2  \bar ""
a8 a | a4 a d8 d | g,8( fis) a4 a8 g8 | a4 a d8 d | a2 \bar ""
a8 g | fis4 4 a8 a | a4 4 a8 a | g4 fis a8 g | fis2  \bar "|."
}

nejindhgekepfioecleakaloobioiocfnbolipjbhcdkacffmnjjmagpmiheijfiBass = 
\relative d {
\clef "bass"
\numericTimeSignature\time 3/4
\key d \major
\partial 4
d8 g, | d'4 4 d8 fis, | a4 4 d8 fis | g4 d a8 a | d2  \bar ""
d8 g, | d'4 4 d8 fis, | a4 4 d8 fis | g4 d a8 a | d2  \bar ""
fis8 e | d4 fis g8 d | d4 d4 fis8 e8 | d4 fis g8 d | d2 \bar ""
d8 g, | d'4 4 d8 fis, | a4 4 d8 fis | g4 d a8 a | d2  \bar "|."
}

\tocItem \markup "Come, Thou Fount of Every Blessing"
\score {
    \header {
        title = "Come, Thou Fount of Every Blessing"
        
        
        
        composer = "Robert Robinson (1735-1790)"
        
        
    }
    <<
        \new ChoirStaff <<
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \nejindhgekepfioecleakaloobioiocfnbolipjbhcdkacffmnjjmagpmiheijfiSoprano \nejindhgekepfioecleakaloobioiocfnbolipjbhcdkacffmnjjmagpmiheijfiAlto }
\context NullVoice = "nejindhgekepfioecleakaloobioiocfnbolipjbhcdkacffmnjjmagpmiheijfiSoprano" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \nejindhgekepfioecleakaloobioiocfnbolipjbhcdkacffmnjjmagpmiheijfiSoprano
}
\context NullVoice = "nejindhgekepfioecleakaloobioiocfnbolipjbhcdkacffmnjjmagpmiheijfiAlto" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \nejindhgekepfioecleakaloobioiocfnbolipjbhcdkacffmnjjmagpmiheijfiAlto
}

		
                \new Lyrics \lyricsto "nejindhgekepfioecleakaloobioiocfnbolipjbhcdkacffmnjjmagpmiheijfiSoprano" {
                  
                  \set stanza = "1."
                  
                  \lyricmode {
		    
                    Come, thou Fount of ev -- ery bless -- ing;
tune my heart to sing thy grace;
streams of mer -- cy, nev -- er ceas -- ing,
call for songs of loud -- est praise.
Teach me some melo -- di -- ous son -- net,
sung by flam -- ing tongues a -- bove;
praise the mount! I’m fixed up -- on it,
mount of thy re -- deem -- ing love!
		    
                  }
                }
		
                \new Lyrics \lyricsto "nejindhgekepfioecleakaloobioiocfnbolipjbhcdkacffmnjjmagpmiheijfiSoprano" {
                  
                  \set stanza = "2."
                  
                  \lyricmode {
		    
                    Here I raise my E -- ben -- e -- zer;
hith -- er by thy help I’m come;
and I hope, by thy good plea -- sure,
safe -- ly to ar -- rive at home.
Je -- sus sought me when a strang -- er,
"wander" -- ing from the fold of God;
he, to res -- cue me from dan -- ger,
in -- ter -- posed his pre -- cious blood.
		    
                  }
                }
		
                \new Lyrics \lyricsto "nejindhgekepfioecleakaloobioiocfnbolipjbhcdkacffmnjjmagpmiheijfiSoprano" {
                  
                  \set stanza = "3."
                  
                  \lyricmode {
		    
                    O to grace how great a debt -- or
dai -- ly I’m con -- strained to be!
Let that good -- ness, like a fet -- ter,
bind my "wander" -- ing heart to thee.
Prone to wan -- der, Lord, I feel it,
prone to leave the God I love;
here’s my heart; O take and seal it;
seal it for thy courts a -- bove.
		    
                  }
                }
		
        >>
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \nejindhgekepfioecleakaloobioiocfnbolipjbhcdkacffmnjjmagpmiheijfiTenor \nejindhgekepfioecleakaloobioiocfnbolipjbhcdkacffmnjjmagpmiheijfiBass }
\context NullVoice = "nejindhgekepfioecleakaloobioiocfnbolipjbhcdkacffmnjjmagpmiheijfiTenor" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \nejindhgekepfioecleakaloobioiocfnbolipjbhcdkacffmnjjmagpmiheijfiTenor
}
\context NullVoice = "nejindhgekepfioecleakaloobioiocfnbolipjbhcdkacffmnjjmagpmiheijfiBass" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \nejindhgekepfioecleakaloobioiocfnbolipjbhcdkacffmnjjmagpmiheijfiBass
}
        >>
    >>
    >>
}
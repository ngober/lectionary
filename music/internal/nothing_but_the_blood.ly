\version "2.22.1"

opcpdfjeaolgphbomkadkkcbpcefebmnpjlhohklnemmbkaagelcjlojjkeigadpSoprano = 
\relative es' {
\clef "treble"
\numericTimeSignature\time 4/4
\key f \major

f4 4 4 g | a4 c a2 |
f8 8 8 g8 a4 4 | g2 f |
f4 4 4 g | a4 c a2 |
f8 8 8 g8 a4 4 | g2 f
\bar "||"\mark "Refrain"
c'2 a4 g | a4 c a2 |
g2 g4 f | g4 4 a( c) |
c2 a4 g | a4 c a2 |
f8 8 8 g8 a4 4 | g2 f \bar "|."
}

opcpdfjeaolgphbomkadkkcbpcefebmnpjlhohklnemmbkaagelcjlojjkeigadpAlto = 
\relative c' {
\clef "treble"
\numericTimeSignature\time 4/4
\key f \major

c4 4 4 e | f4 a f2 |
c8 8 8 8 f4 4 | e2 c |
c4 4 4 e | f4 a f2 |
c8 8 8 8 f4 4 | e2 c
\bar "||"
f2 f4 e | f4 f f2 |
e2 e4 f | e4 4 f2 |
f2 f4 e | f4 f f2 |
c8 8 8 8 f4 4 | e2 c \bar "|."
}

opcpdfjeaolgphbomkadkkcbpcefebmnpjlhohklnemmbkaagelcjlojjkeigadpTenor = 
\relative g {
\clef "bass"
\numericTimeSignature\time 4/4
\key f \major

a4 4 4 c | c4 c c2 |
a8 8 8 bes8 c4 4 | bes2 a |
a4 4 4 c | c4 c c2 |
a8 8 8 bes8 c4 4 | bes2 a
\bar "||"
a2 c4 c | c4 a c2 |
bes2 bes4 a | c4 4 c( a) |
a2 c4 c | c4 a c2 |
a8 8 8 bes8 c4 4 | bes2 a \bar "|."
}

opcpdfjeaolgphbomkadkkcbpcefebmnpjlhohklnemmbkaagelcjlojjkeigadpBass = 
\relative d {
\clef "bass"
\numericTimeSignature\time 4/4
\key f \major

f4 4 4 c | f4 f f2 |
f8 8 8 8 f4 4 | c2 f |
f4 4 4 c | f4 f f2 |
f8 8 8 8 f4 4 | c2 f
\bar "||"
f2 f4 c | f4 f f2 |
c2 c4 c | c4 4 f2 |
f2 f4 c | f4 f f2 |
f8 8 8 8 f4 4 | c2 f \bar "|."
}

\tocItem \markup "Nothing But The Blood"
\score {
    \header {
        title = "Nothing But The Blood"
        
        
        
        composer = "Robert Lowry (1826-1899)"
        
        
    }
    <<
        \new ChoirStaff <<
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \opcpdfjeaolgphbomkadkkcbpcefebmnpjlhohklnemmbkaagelcjlojjkeigadpSoprano \opcpdfjeaolgphbomkadkkcbpcefebmnpjlhohklnemmbkaagelcjlojjkeigadpAlto }
\context NullVoice = "opcpdfjeaolgphbomkadkkcbpcefebmnpjlhohklnemmbkaagelcjlojjkeigadpSoprano" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \opcpdfjeaolgphbomkadkkcbpcefebmnpjlhohklnemmbkaagelcjlojjkeigadpSoprano
}
\context NullVoice = "opcpdfjeaolgphbomkadkkcbpcefebmnpjlhohklnemmbkaagelcjlojjkeigadpAlto" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \opcpdfjeaolgphbomkadkkcbpcefebmnpjlhohklnemmbkaagelcjlojjkeigadpAlto
}

		
                \new Lyrics \lyricsto "opcpdfjeaolgphbomkadkkcbpcefebmnpjlhohklnemmbkaagelcjlojjkeigadpSoprano" {
                  
                  \set stanza = "1."
                  
                  \lyricmode {
		    
                    What can wash a -- way my sin?
Noth -- ing but the blood of Je -- sus;
What can make me "whole" a -- gain?
Noth -- ing but the blood of Je -- sus.
		    
                    Oh! pre -- cious is the flow
that makes me white as snow;
No oth -- er fount I know,
Noth -- ing but the blood of Je -- sus.
		    
                  }
                }
		
                \new Lyrics \lyricsto "opcpdfjeaolgphbomkadkkcbpcefebmnpjlhohklnemmbkaagelcjlojjkeigadpSoprano" {
                  
                  \set stanza = "2."
                  
                  \lyricmode {
		    
                    For my par -- don this I see,
Noth -- ing but the blood of Je -- sus;
For my cleans -- ing this I plea,
Noth -- ing but the blood of Je -- sus.
		    
		    
                  }
                }
		
                \new Lyrics \lyricsto "opcpdfjeaolgphbomkadkkcbpcefebmnpjlhohklnemmbkaagelcjlojjkeigadpSoprano" {
                  
                  \set stanza = "3."
                  
                  \lyricmode {
		    
                    Noth -- ing can for sin a -- tone,
Noth -- ing but the blood of Je -- sus;
Naught of good that I have done,
Noth -- ing but the blood of Je -- sus.
		    
		    
                  }
                }
		
        >>
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \opcpdfjeaolgphbomkadkkcbpcefebmnpjlhohklnemmbkaagelcjlojjkeigadpTenor \opcpdfjeaolgphbomkadkkcbpcefebmnpjlhohklnemmbkaagelcjlojjkeigadpBass }
\context NullVoice = "opcpdfjeaolgphbomkadkkcbpcefebmnpjlhohklnemmbkaagelcjlojjkeigadpTenor" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \opcpdfjeaolgphbomkadkkcbpcefebmnpjlhohklnemmbkaagelcjlojjkeigadpTenor
}
\context NullVoice = "opcpdfjeaolgphbomkadkkcbpcefebmnpjlhohklnemmbkaagelcjlojjkeigadpBass" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \opcpdfjeaolgphbomkadkkcbpcefebmnpjlhohklnemmbkaagelcjlojjkeigadpBass
}
        >>
    >>
    >>
}
\markup \column {
\line { \bold "4."
\column {
"This is all my hope and peace:"
"Nothing but the blood of Jesus;"
"This is all my righteousness:"
"Nothing but the blood of Jesus."
}
}
}
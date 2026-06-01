\version "2.22.1"

enfbdbcghdhnoppecncbkajnkpempanppdclddfgfphnmlibiplehkeikcbnbjkoSoprano = 
\relative es' {
\clef "treble"
\numericTimeSignature\time 4/4
\key g \major
\partial 4
g4 | g2 d4 g4 | a2 d,2 | b'4 a4 b4 c4 | b2 a4 \bar ""
g4 | g2 fis4 e4 | fis4 g4 a4 b4 | fis2 ( e4. ) d8 | d1 |
d'2 c4 b4 | b2 b2 | a4 b4 g4 a4 | fis4. ( e8 ) d4 \partial 4
\bar "||"\partial 4
g4 | g4 fis4 g4 a4 | g2 d4 \bar ""
b'4 | b4 a4 b4 c4 | b2 a4 \bar ""
b4 | c4 b4 a4 g4 | fis2 g4 ( c4 ) | b2 ( a4. ) g8 | g1 \bar "|."
}

enfbdbcghdhnoppecncbkajnkpempanppdclddfgfphnmlibiplehkeikcbnbjkoAlto = 
\relative c' {
\clef "treble"
\numericTimeSignature\time 4/4
\key g \major
\partial 4
d4 | d2 d4 d4 | e2 d2 | d4 d4 d4 e4 | d2 d4 \bar ""
b4 | b4 ( cis4 ) d4 cis4 | d2 d4 d4 | d2 ( cis4. ) d8 | d1 |
d2 e8 ( [ fis8 ) ] g4 | e4 ( fis4 ) g2 | d4 d4 e4 e4 | d2 d4\partial 4
\bar "||"\partial 4
d4 | d4 d4 d4 d4 | d2 d4 \bar ""
d4 | d4 d4 d4 d4 | d2 d4 \bar ""
g4 | fis4 g4 d4 d8 ( [ cis8 ) ] | d2 d4 ( e4 ) | d2 ~ d4. b8 | b1 \bar "|."
}

enfbdbcghdhnoppecncbkajnkpempanppdclddfgfphnmlibiplehkeikcbnbjkoTenor = 
\relative g {
\clef "bass"
\numericTimeSignature\time 4/4
\key g \major
\partial 4
b4 | b2 b4 b4 | c2 a2 | g4 a4 g4 g4 | g2 fis4 \bar ""
g4 | g2 a4 a4 | a4 ( g4 ) fis4 d4 | a'2 ( g4. ) fis8 |
fis1 | b2 c4 d4 | c2 d2 | d4 g,4 b4 c4 | a2 fis4\partial 4
\bar "||"\partial 4
b4 | b4 a4 b4 c4 | b2 g4 \bar ""
g4 | g4 fis4 g4 a4 | g2 fis4 \bar ""
d'4 | d4 d4 a4 a4 | a2 g2 | g2 ( fis4. ) g8 | g1 \bar "|."
}

enfbdbcghdhnoppecncbkajnkpempanppdclddfgfphnmlibiplehkeikcbnbjkoBass = 
\relative d {
\clef "bass"
\numericTimeSignature\time 4/4
\key g \major
\partial 4
g4 | g2 b4 g4 | g2 fis2 | g4 fis4 g4 c,4 | d2 d4 \bar ""
e4 | e2 d4 a4 | d4 ( b4 ) fis4 g4 | a2 ~ a4. d8 | d1 |
b'2 a4 g4 | a2 g2 | fis4 g4 e4 c4 | d2 d4\partial 4
\bar "||"\partial 4
r4 | R1*3 | r2 r4 \bar ""
g4 | a4 g4 fis4 e4 | d4 ( c4 ) b4 ( c4 ) | d2 ~ d4. g,8 | g1 \bar "|."
}

\tocItem \markup "O Come, All Ye Faithful"
\score {
    \header {
        title = "O Come, All Ye Faithful"
        
        
        
        composer = "John Francis Wade (1711-1786)"
        
        
    }
    <<
        \new ChoirStaff <<
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \enfbdbcghdhnoppecncbkajnkpempanppdclddfgfphnmlibiplehkeikcbnbjkoSoprano \enfbdbcghdhnoppecncbkajnkpempanppdclddfgfphnmlibiplehkeikcbnbjkoAlto }
\context NullVoice = "enfbdbcghdhnoppecncbkajnkpempanppdclddfgfphnmlibiplehkeikcbnbjkoSoprano" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \enfbdbcghdhnoppecncbkajnkpempanppdclddfgfphnmlibiplehkeikcbnbjkoSoprano
}
\context NullVoice = "enfbdbcghdhnoppecncbkajnkpempanppdclddfgfphnmlibiplehkeikcbnbjkoAlto" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \enfbdbcghdhnoppecncbkajnkpempanppdclddfgfphnmlibiplehkeikcbnbjkoAlto
}

		
                \new Lyrics \lyricsto "enfbdbcghdhnoppecncbkajnkpempanppdclddfgfphnmlibiplehkeikcbnbjkoSoprano" {
                  
                  \set stanza = "1."
                  
                  \lyricmode {
		    
                    O come, all ye faith -- ful, joy -- ful and tri -- um -- phant,
O come ye O come \skip1 ye to Beth -- le -- hem; Come and be -- hold him, born the King of an -- gels
		    
                    O come, let us a -- dore him! O come let us a -- dore him!
O come, let us a -- dore him, Christ the Lord!
		    
                  }
                }
		
                \new Lyrics \lyricsto "enfbdbcghdhnoppecncbkajnkpempanppdclddfgfphnmlibiplehkeikcbnbjkoSoprano" {
                  
                  \set stanza = "2."
                  
                  \lyricmode {
		    
                    \skip1 Sing, choirs of angels; sing in exultation;
\skip1 sing, all ye citizens of heav'n above! Glory to God, all glory in the highest!
		    
		    
                  }
                }
		
                \new Lyrics \lyricsto "enfbdbcghdhnoppecncbkajnkpempanppdclddfgfphnmlibiplehkeikcbnbjkoSoprano" {
                  
                  \set stanza = "3."
                  
                  \lyricmode {
		    
                    \skip1 Yea, Lord, we greet Thee, born this happy morning;
\skip1 Jesus, to Thee \skip1 be all glory giv'n! Word of the Father, now in flesh appearing!
		    
		    
                  }
                }
		
        >>
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \enfbdbcghdhnoppecncbkajnkpempanppdclddfgfphnmlibiplehkeikcbnbjkoTenor \enfbdbcghdhnoppecncbkajnkpempanppdclddfgfphnmlibiplehkeikcbnbjkoBass }
\context NullVoice = "enfbdbcghdhnoppecncbkajnkpempanppdclddfgfphnmlibiplehkeikcbnbjkoTenor" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \enfbdbcghdhnoppecncbkajnkpempanppdclddfgfphnmlibiplehkeikcbnbjkoTenor
}
\context NullVoice = "enfbdbcghdhnoppecncbkajnkpempanppdclddfgfphnmlibiplehkeikcbnbjkoBass" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \enfbdbcghdhnoppecncbkajnkpempanppdclddfgfphnmlibiplehkeikcbnbjkoBass
}
        >>
    >>
    >>
}
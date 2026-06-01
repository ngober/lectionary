\version "2.22.1"

dlelncgdlifdnekoiejdegcjomeckkpbfgphidhapjmiicdpcdpaelbdbiajmndmSoprano = 
\relative es' {
\clef "treble"
\numericTimeSignature\time 3/4
\key d \major

fis4 4 4 | fis4. e8 4 | g4 g g | g4 fis2 | b4 cis b | a4. g8 fis4 | e4 fis gis | a2. | a4 b cis | d4. cis8 b4 | a4 g fis | fis4 e2 | b'4 cis d | d4. a8 a4 | fis4 fis e | d2.
\bar "||"\mark "Refrain"
a'4 a e | g8. fis16 fis2 | b4 b fis | a8. g16 g2 | a4 b cis | d4 a b | cis4 d b | a2. | a4 b cis | d4. cis8 b4 | a4 g fis | fis4 e2 | b'4 cis d | d4. a8 4 | fis4 g cis, | d2. \bar "|."
}

dlelncgdlifdnekoiejdegcjomeckkpbfgphidhapjmiicdpcdpaelbdbiajmndmAlto = 
\relative c' {
\clef "treble"
\numericTimeSignature\time 3/4
\key d \major

d4 4 cis4 | b4. 8 4 | d4 d cis | e4 d2 | d4 d d | d4. cis8 d4 | d4 d e | cis2. | cis4 d e | d4. d8 d4 | d4 d d | d4 d2 | eis4 eis eis | fis4. e8 d4 | d4 b cis | d2.
\bar "||"
cis4 d4 e4 | d8. 16 2 | dis4 e4 fis4 | fis8. e16 e4( d4) | cis4 d4 e4 | d4 d d | e4 d e8( d8) | cis2. | cis4 d4 e4 | d4. 8 4 | d4 d d | d4 2 | eis4 4 4 | fis4. 8 4 | d4 d a | a2. \bar "|."
}

dlelncgdlifdnekoiejdegcjomeckkpbfgphidhapjmiicdpcdpaelbdbiajmndmTenor = 
\relative g {
\clef "bass"
\numericTimeSignature\time 3/4
\key d \major

a4 a a | g4. 8 4 | b4 b g | a4 a2 | g4 a g | a4. 8 4 | a4 a b | a2. | a4 a a | a4. a8 g4 | a4 g a | b4 b2 | d4 cis b | a4. b8 a4 | g4 g g | fis2.
\bar "||"
a4 a a | b8. a16 2 | fis4 b b | b8. b16 2 | a4 a a | a4 a a | a4 fis gis | a2. | a4 a a | a4. a8 g4 | a4 g a | b4 b2 | d4 cis b | d4. d8 d4 | a4 b g | fis2. \bar "|."
}

dlelncgdlifdnekoiejdegcjomeckkpbfgphidhapjmiicdpcdpaelbdbiajmndmBass = 
\relative d {
\clef "bass"
\numericTimeSignature\time 3/4
\key d \major

d4 d d | g,4. 8 4 | e'4 e a, | d4 2 | g4 g g | fis4. e8 d4 | e4 e e | a,2. | g'4 4 4 | fis4. 8 g4 | fis4 e fis | g4 2 | gis4 4 4 | a4. g8 fis4 | e4 e4 a,4 | d2.
\bar "||"
a4 b4 cis4 | d8. 16 2 | b4 cis4 dis4 | e8. 16 2 | g4 4 4 | fis4 4 f4 | e4 4 4 | a,2. | g'4 4 4 | fis4. 8 g4 | fis4 e fis | g4 2 | gis4 4 4 | a4. 8 4 | a,4 4 4 | d2. \bar "|."
}

\tocItem \markup "Great Is Thy Faithfulness"
\score {
    \header {
        title = "Great Is Thy Faithfulness"
        
        
        poet = "Thomas Chisolm (1866-1960)"
        
        
        composer = "William Runyan (1870-1957)"
        
        
    }
    <<
        \new ChoirStaff <<
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \dlelncgdlifdnekoiejdegcjomeckkpbfgphidhapjmiicdpcdpaelbdbiajmndmSoprano \dlelncgdlifdnekoiejdegcjomeckkpbfgphidhapjmiicdpcdpaelbdbiajmndmAlto }
\context NullVoice = "dlelncgdlifdnekoiejdegcjomeckkpbfgphidhapjmiicdpcdpaelbdbiajmndmSoprano" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \dlelncgdlifdnekoiejdegcjomeckkpbfgphidhapjmiicdpcdpaelbdbiajmndmSoprano
}
\context NullVoice = "dlelncgdlifdnekoiejdegcjomeckkpbfgphidhapjmiicdpcdpaelbdbiajmndmAlto" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \dlelncgdlifdnekoiejdegcjomeckkpbfgphidhapjmiicdpcdpaelbdbiajmndmAlto
}

		
                \new Lyrics \lyricsto "dlelncgdlifdnekoiejdegcjomeckkpbfgphidhapjmiicdpcdpaelbdbiajmndmSoprano" {
                  
                  \set stanza = "1."
                  
                  \lyricmode {
		    
                    Great is thy faith -- ful -- ness, O God my Fa -- ther,
there is no shad -- ow of turn -- ing with thee;
Thou chang -- est not, thy com -- pas -- sions they fail not;
as thou hast been thou for -- ev -- er will be.
		    
                    Great is thy faith -- ful -- ness! Great is thy faith -- ful -- ness!
Morn -- ing by morn -- ing new mer -- cies I see;
all I have need -- ed thy hand hath pro -- vid -- ed,
great is thy faith -- ful -- ness, Lord, un -- to me.
		    
                  }
                }
		
                \new Lyrics \lyricsto "dlelncgdlifdnekoiejdegcjomeckkpbfgphidhapjmiicdpcdpaelbdbiajmndmSoprano" {
                  
                  \set stanza = "2."
                  
                  \lyricmode {
		    
                    Sum -- mer and win -- ter and spring -- time and har -- vest,
sun, moon, and stars in their cour -- ses a -- bove
join with all na -- ture in man -- i -- fold wit -- ness
to thy great faith -- ful -- ness, mer -- cy and love.
		    
		    
                  }
                }
		
                \new Lyrics \lyricsto "dlelncgdlifdnekoiejdegcjomeckkpbfgphidhapjmiicdpcdpaelbdbiajmndmSoprano" {
                  
                  \set stanza = "3."
                  
                  \lyricmode {
		    
                    Par -- don for sin and a peace that en -- dur -- eth,
thy own dear pres -- ence to cheer and to guide;
strength for to -- day and bright hope for to -- mor -- row,
bless -- ings all mine, with ten thou -- sand be -- side!
		    
		    
                  }
                }
		
        >>
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \dlelncgdlifdnekoiejdegcjomeckkpbfgphidhapjmiicdpcdpaelbdbiajmndmTenor \dlelncgdlifdnekoiejdegcjomeckkpbfgphidhapjmiicdpcdpaelbdbiajmndmBass }
\context NullVoice = "dlelncgdlifdnekoiejdegcjomeckkpbfgphidhapjmiicdpcdpaelbdbiajmndmTenor" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \dlelncgdlifdnekoiejdegcjomeckkpbfgphidhapjmiicdpcdpaelbdbiajmndmTenor
}
\context NullVoice = "dlelncgdlifdnekoiejdegcjomeckkpbfgphidhapjmiicdpcdpaelbdbiajmndmBass" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \dlelncgdlifdnekoiejdegcjomeckkpbfgphidhapjmiicdpcdpaelbdbiajmndmBass
}
        >>
    >>
    >>
}
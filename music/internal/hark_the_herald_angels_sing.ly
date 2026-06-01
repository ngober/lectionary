\version "2.22.1"

fgedloohfojamahkabhejeilbdahnhhhdkbnohhineijemjndaggkoadifkdnmcmSoprano = 
\relative es' {
\clef "treble"
\numericTimeSignature\time 4/4
\key f \major

c4 f4 f4. e8 | f4 a4 a4 ( g4 ) | c4 c4 c4. bes8 | a4 g4 a2 |
c,4 f4 f4. e8 |  f4 a4 a4 ( g4 ) |  c4 g4 g4. e8 |  e4 d4 c2 | 
c'4 4 4 f, |  bes4 a4 a4 ( g4 ) |  c4 c4 c4 f,4 |  bes4 a4 a4 ( g4 ) | 
d'4. d8 d4 c4 |  bes4 a4 bes2 |  g4 a8 ( [ bes8 ) ] c4. f,8 |  f4 g4 a2 | 
d4. d8 d4 c4 |  bes4 a4 bes2 |  g4 a8 ( [ bes8 ) ] c4. f,8 |  f4 g4 f2 \bar "|."
}

fgedloohfojamahkabhejeilbdahnhhhdkbnohhineijemjndaggkoadifkdnmcmAlto = 
\relative c' {
\clef "treble"
\numericTimeSignature\time 4/4
\key f \major

c4 c4 c4. c8 | c4 f4 f4 ( e4 ) | f4 e4 c'4. bes8 | f4 e4 f2 |
c4 c4 c4. c8 |  c4 f4 f4 ( e4 ) |  e4 d4 e4. c8 |  c4 b4 c2 | 
c4 c4 c4 f4 |  g4 f4 f4 ( e4 ) |  c4 c4 c4 f4 |  g4 f4 f4 ( e4 ) | 
bes'4. bes8 bes4 a4 |  g4 fis4 g2 |  e4 e8 ( [ e8 ) ] f4. c8 |  c4 e4 a2 | 
d4. d8 bes4 a4 |  g4 fis4 g2 |  e4 e8 ( [ e8 ) ] f4. f8 |  c4 c4 c2 \bar "|."
}

fgedloohfojamahkabhejeilbdahnhhhdkbnohhineijemjndaggkoadifkdnmcmTenor = 
\relative g {
\clef "bass"
\numericTimeSignature\time 4/4
\key f \major

a4 a4 a4. g8 |  f4 c'4 c2 |  c4 c4 d4 d4 |  c4 c4 c2 | 
a4 a4 a4. g8 |  f4 c'4 d2 |  c4 d4 c4. g8 |  a4 f4 e2 | 
c'4 c4 c4 c4 |  c4 c4 c2 |  c4 c4 c4 c4 |  c4 c4 c2 | 
d4. d8 d4 d4 |  d4 c4 bes2 |  c4 c4 c4. a8 |  a4 c4 c2 | 
d4 d4 d4 c4 |  bes4 a4 bes2 |  c4 c4 c4. a8 |  a4 bes4 a2 \bar "|."
}

fgedloohfojamahkabhejeilbdahnhhhdkbnohhineijemjndaggkoadifkdnmcmBass = 
\relative d {
\clef "bass"
\numericTimeSignature\time 4/4
\key f \major

f4 f4 f4 c4 |  a4 f4 c'2 |  a4 a4 bes4 bes4 |  c4 c4 f2 | 
f4 f4 f4 c4 |  d4 c4 b4( g4) |  a4 b4 c4 e4 |  f4 g,4 c2 | 
c4 c4 c4 a4 |  e'4 f4 c2 |  c4 c4 c4 a4 |  e'4 f4 c2 | 
bes4. bes8 bes4 bes4 |  bes4 d4 g2 |  bes4 bes4 f4 4 |  c4 c4 f2 | 
bes,4 bes4 bes4 bes4 |  d4 fis4 bes2 |  bes4 bes4 g4 f4 |  c4 c4 f,2 \bar "|."
}

\tocItem \markup "Hark! The Herald Angels Sing"
\score {
    \header {
        title = "Hark! The Herald Angels Sing"
        
        
        poet = "Charles Wesley"
        
        
        composer = "Felix Mendelssohn"
        
        
    }
    <<
        \new ChoirStaff <<
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \fgedloohfojamahkabhejeilbdahnhhhdkbnohhineijemjndaggkoadifkdnmcmSoprano \fgedloohfojamahkabhejeilbdahnhhhdkbnohhineijemjndaggkoadifkdnmcmAlto }
\context NullVoice = "fgedloohfojamahkabhejeilbdahnhhhdkbnohhineijemjndaggkoadifkdnmcmSoprano" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \fgedloohfojamahkabhejeilbdahnhhhdkbnohhineijemjndaggkoadifkdnmcmSoprano
}
\context NullVoice = "fgedloohfojamahkabhejeilbdahnhhhdkbnohhineijemjndaggkoadifkdnmcmAlto" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \fgedloohfojamahkabhejeilbdahnhhhdkbnohhineijemjndaggkoadifkdnmcmAlto
}

		
                \new Lyrics \lyricsto "fgedloohfojamahkabhejeilbdahnhhhdkbnohhineijemjndaggkoadifkdnmcmSoprano" {
                  
                  \set stanza = "1."
                  
                  \lyricmode {
		    
                    Hark! the her -- ald an -- gels sing,
"\"Glo" -- ry to the new -- born King;
Peace on earth and mer -- cy mild,
God and sin -- ners rec -- on -- "ciled!\""
Joy -- ful, all ye na -- tions rise,
Join the tri -- umph of the skies;
With th'an -- gel -- ic host pro -- claim,
"\"Christ" is born in Beth -- le -- "hem.\""
Hark! the her -- ald an -- gels sing,
"\"Glo" -- ry to the new -- born "King!\""
		    
                  }
                }
		
                \new Lyrics \lyricsto "fgedloohfojamahkabhejeilbdahnhhhdkbnohhineijemjndaggkoadifkdnmcmSoprano" {
                  
                  \set stanza = "2."
                  
                  \lyricmode {
		    
                    Christ, by high -- est heav'n a -- dored;
Christ, the ev -- er -- last -- ing Lord!
Late in time be -- hold Him come:
Off -- spring of the vir -- gin's womb.
Veiled in flesh the God -- head see;
Hail th'in -- car -- nate De -- i -- ty,
Pleased as man with men to dwell,
Je -- sus our Em -- man -- u -- el.
		    
                  }
                }
		
                \new Lyrics \lyricsto "fgedloohfojamahkabhejeilbdahnhhhdkbnohhineijemjndaggkoadifkdnmcmSoprano" {
                  
                  \set stanza = "3."
                  
                  \lyricmode {
		    
                    Hail, the heav'n -- born Prince of Peace!
Hail, the Son of Right -- ous -- ness!
Light and life to all He brings,
Ris'n with heal -- ing in His wings.
Mild He lays His glo -- ry by,
Born that man no more may die,
Born to raise the sons of earth,
Born to give them sec -- ond birth.
		    
                  }
                }
		
        >>
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \fgedloohfojamahkabhejeilbdahnhhhdkbnohhineijemjndaggkoadifkdnmcmTenor \fgedloohfojamahkabhejeilbdahnhhhdkbnohhineijemjndaggkoadifkdnmcmBass }
\context NullVoice = "fgedloohfojamahkabhejeilbdahnhhhdkbnohhineijemjndaggkoadifkdnmcmTenor" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \fgedloohfojamahkabhejeilbdahnhhhdkbnohhineijemjndaggkoadifkdnmcmTenor
}
\context NullVoice = "fgedloohfojamahkabhejeilbdahnhhhdkbnohhineijemjndaggkoadifkdnmcmBass" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \fgedloohfojamahkabhejeilbdahnhhhdkbnohhineijemjndaggkoadifkdnmcmBass
}
        >>
    >>
    >>
}
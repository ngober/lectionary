\version "2.22.1"

ejbflppfbgplenkeehedeigpmbbmgcmdnocbcogogljkfbighceodkkcdpafknglSoprano = 
\relative es' {
\clef "treble"
\numericTimeSignature\time 4/4
\key d \major

d4 d fis fis | a2 a | b4 b b b | a2 fis | a4. 8 4 4 | d4 d cis a | e4 a b4. 8 | a1 | d,4 d fis fis | a4 a a2 | b4. 8 4 4 | a2 2 | d2 a4 4 | b2 fis2 | g4 e e4. d8 | d1 \bar "|."
}

ejbflppfbgplenkeehedeigpmbbmgcmdnocbcogogljkfbighceodkkcdpafknglAlto = 
\relative c' {
\clef "treble"
\numericTimeSignature\time 4/4
\key d \major

a4 a d d | cis4( e) d( cis) | b4( cis) d e | fis2 d | e4 e fis e | d4( e) e fis | e4 cis d4. cis8 | cis1 | a4 a d d | cis4( e) d( cis) | b4 cis d e | fis2 d | d2 4 4 | d2 d4( c) | b4 b cis4. d8 | d1 \bar "|."
}

ejbflppfbgplenkeehedeigpmbbmgcmdnocbcogogljkfbighceodkkcdpafknglTenor = 
\relative g {
\clef "bass"
\numericTimeSignature\time 4/4
\key d \major

fis4 fis d d | e4( g) fis( a) | g4( a) b cis | d4( a) a2 | a4 4 4 4 | fis4( gis) a a | cis4 a gis4. a8 | a2( g) | fis4 fis d d | e4( g) fis( a) | g4( a) b cis | d4( a) fis2 | fis4( g) a c | b2 a | g4 g g4. fis8 | fis1 \bar "|."
}

ejbflppfbgplenkeehedeigpmbbmgcmdnocbcogogljkfbighceodkkcdpafknglBass = 
\relative d {
\clef "bass"
\numericTimeSignature\time 4/4
\key d \major

d4 d b b | a2 d | g,4~ 4 g'4 4 | d2 2 | cis4 4 4 4 | b4~ 4 cis d | e4 e e4. a,8 | a1 |  d4 d b b | a2 d | g,4. 8 g'4 4 | d2 2 | b2 fis4 4 | g2 d' | g,4 g a4. d8 | d1 \bar "|."
}

\tocItem \markup "Holy, Holy, Holy!"
\score {
    \header {
        title = "Holy, Holy, Holy!"
        
        
        poet = "Reginald Heber (1783-1826)"
        
        
        composer = "John B. Dykes (1823-1876)"
        
        
    }
    <<
        \new ChoirStaff <<
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \ejbflppfbgplenkeehedeigpmbbmgcmdnocbcogogljkfbighceodkkcdpafknglSoprano \ejbflppfbgplenkeehedeigpmbbmgcmdnocbcogogljkfbighceodkkcdpafknglAlto }
\context NullVoice = "ejbflppfbgplenkeehedeigpmbbmgcmdnocbcogogljkfbighceodkkcdpafknglSoprano" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \ejbflppfbgplenkeehedeigpmbbmgcmdnocbcogogljkfbighceodkkcdpafknglSoprano
}
\context NullVoice = "ejbflppfbgplenkeehedeigpmbbmgcmdnocbcogogljkfbighceodkkcdpafknglAlto" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \ejbflppfbgplenkeehedeigpmbbmgcmdnocbcogogljkfbighceodkkcdpafknglAlto
}

		
                \new Lyrics \lyricsto "ejbflppfbgplenkeehedeigpmbbmgcmdnocbcogogljkfbighceodkkcdpafknglSoprano" {
                  
                  \set stanza = "1."
                  
                  \lyricmode {
		    
                    Ho -- ly, ho -- ly, ho -- ly! Lord \skip1 God Al -- migh -- ty!
Ear -- ly in the mor -- \skip1 ning our song shall rise to thee.
Ho -- ly, ho -- ly, ho -- \skip1 ly! mer -- ci -- ful and might -- y!
God in three Per -- sons, bless -- ed Trin -- i -- ty!
		    
                  }
                }
		
                \new Lyrics \lyricsto "ejbflppfbgplenkeehedeigpmbbmgcmdnocbcogogljkfbighceodkkcdpafknglSoprano" {
                  
                  \set stanza = "2."
                  
                  \lyricmode {
		    
                    Ho -- ly, ho -- ly, ho -- ly! all the saints a -- dore thee,
Cast -- ing down their gold -- en crowns a -- round the glas -- sy sea.
Che -- ru -- bim and ser -- a -- phim, fall -- ing down be -- fore thee,
Who was and is and ev -- er -- more shall be.
		    
                  }
                }
		
                \new Lyrics \lyricsto "ejbflppfbgplenkeehedeigpmbbmgcmdnocbcogogljkfbighceodkkcdpafknglSoprano" {
                  
                  \set stanza = "3."
                  
                  \lyricmode {
		    
                    Ho -- ly, Ho -- ly, Ho -- ly! though the dark -- ness hide thee,
Though the eye of sin -- ful man thy glo -- ry may not see,
On -- ly thou art ho -- \skip1 ly; there is none be -- side thee,
Per -- fect in pow'r, in love, and pu -- ri -- ty.
		    
                  }
                }
		
        >>
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \ejbflppfbgplenkeehedeigpmbbmgcmdnocbcogogljkfbighceodkkcdpafknglTenor \ejbflppfbgplenkeehedeigpmbbmgcmdnocbcogogljkfbighceodkkcdpafknglBass }
\context NullVoice = "ejbflppfbgplenkeehedeigpmbbmgcmdnocbcogogljkfbighceodkkcdpafknglTenor" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \ejbflppfbgplenkeehedeigpmbbmgcmdnocbcogogljkfbighceodkkcdpafknglTenor
}
\context NullVoice = "ejbflppfbgplenkeehedeigpmbbmgcmdnocbcogogljkfbighceodkkcdpafknglBass" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \ejbflppfbgplenkeehedeigpmbbmgcmdnocbcogogljkfbighceodkkcdpafknglBass
}
        >>
    >>
    >>
}
\markup \column {
\line { \bold "4."
\column {
"Holy, holy, holy! Lord  God Almighty!"
"All thy works shall praise thy name, in earth, and sky, and sea;"
"Holy, holy, ho ly! merciful and mighty!"
"God in three Persons, blessed Trinity."
}
}
}
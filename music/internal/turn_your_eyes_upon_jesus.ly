\version "2.22.1"

lnbhlkhpdgkhknfjmgmcajcgpfacgmaldppbhjheioapjjbomholnjaiiikohlloSoprano = 
\relative es' {
\clef "treble"
\numericTimeSignature\time 3/4
\key f \major
\partial 4
a4 | a4 gis4 a4 | c4 bes4 a4 | a2. | g2 \bar ""
d4 | f4 e4 f4 | a4 g4 c4 | a2. ~ ~ | a2 \bar ""
a8 a8 | a4 gis4 a4 | d4 c4 a4 | a2. | g2 \bar ""
g4 | a4 b4 c4 | e,4 f4 d4 | c2. ~ | c2.
\bar "||"\mark "Refrain"
a'2 a4 | c4. a8 g4 | f2. | f2 \bar ""
f4 | bes4 bes4 bes4 | d4 bes4 a4 | g2. ~ | g2 \bar ""
a8 bes8 | c2 c4 | c4 a4 g4 | f2 f4 | f2 \bar ""
f8 g8 | a4. g8 a4 | bes4 a4 g4 | f2 \bar "|."
}

lnbhlkhpdgkhknfjmgmcajcgpfacgmaldppbhjheioapjjbomholnjaiiikohlloAlto = 
\relative c' {
\clef "treble"
\numericTimeSignature\time 3/4
\key f \major
\partial 4
f4 | f4 f4 f4 | f4 f4 es4 | d2. | d2 \bar ""
d4 | c4 c4 c4 | e4 e4 c4 | f2. ~ ~ | f2 \bar ""
f8 f8 | f4 f4 f4 | f4 f4 f4 | f2. | g2 \bar ""
e4 | f4 d4 dis4 | e4 c4 b4 | c2. ~ | c2.
\bar "||"
c2 c4 | e4. e8 e4 | f2. | es2 \bar ""
es4 | d4 d4 d4 | d4 d4 d4 | g2.( | e2) \bar ""
f8 f8 | f2 e4 | f4 f4 e4 | f2 es4 | d2 \bar ""
f8 f8 | f4. e8 f4 | e4 e4 e4 | c2 \bar "|."
}

lnbhlkhpdgkhknfjmgmcajcgpfacgmaldppbhjheioapjjbomholnjaiiikohlloTenor = 
\relative g {
\clef "bass"
\numericTimeSignature\time 3/4
\key f \major
\partial 4
c4 | c4 b4 c4 | a4 f4 f4 | f2 ( fis4 ) | g2 \bar ""
bes4 | a4 g4 a4 | c4 bes4 g4 | c2. ~ ~ | c2 \bar ""
c8 c8 | c4 b4 c4 | bes4 a4 c4 | b2. | c2 \bar ""
c4 | c4 g4 a4 | c4 a4 f4 | e2 ( f4 | g2. ) 
\bar "||"
f2 f4 | g4. c8 bes4 | a2. | a2 \bar ""
a4 | bes4 a4 g4 | f4 g4 f4 | f4 e4 f4 | g2 \bar ""
f8 g8 | a2 bes4 | c4 c4 bes4 | a2 a4 | bes2 \bar ""
a8 bes8 | c4. c8 c4 | d4 c4 bes4 | a2 \bar "|."
}

lnbhlkhpdgkhknfjmgmcajcgpfacgmaldppbhjheioapjjbomholnjaiiikohlloBass = 
\relative d {
\clef "bass"
\numericTimeSignature\time 3/4
\key f \major
\partial 4
f4 | f4 f4 f4 | f4 d4 c4 | f2 ( fis4 ) | bes,2 \bar ""
bes4 | c4 c4 c4 | c4 c4 e4 | f2. ~ ~ | f2 \bar ""
f8 f8 | f4 f4 f4 | f4 f4 f4 | d2. | e2 \bar ""
c4 | f4 f4 fis4 | g4 d4 g,4 | c2 ( d4 | e2. )
\bar "||"
f2 f4 | c4. c8 c4 | d2. | c2 \bar ""
f4 | bes,4 bes4 bes4 | bes4 bes4 b4 | f'4 e4 f4 | c2 \bar ""
f8 f8 | f2 g4 | a4 f4 cis4 | d2 \bar ""
c4 | bes2 d8 des8 | c4. c8 c4 | c4 c4 c4 | f2 \bar "|."
}

\tocItem \markup "Turn Your Eyes Upon Jesus"
\score {
    \header {
        title = "Turn Your Eyes Upon Jesus"
        
        
        
        composer = "Helen Howarth Lemmel (1922)"
        
        
    }
    <<
        \new ChoirStaff <<
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \lnbhlkhpdgkhknfjmgmcajcgpfacgmaldppbhjheioapjjbomholnjaiiikohlloSoprano \lnbhlkhpdgkhknfjmgmcajcgpfacgmaldppbhjheioapjjbomholnjaiiikohlloAlto }
\context NullVoice = "lnbhlkhpdgkhknfjmgmcajcgpfacgmaldppbhjheioapjjbomholnjaiiikohlloSoprano" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \lnbhlkhpdgkhknfjmgmcajcgpfacgmaldppbhjheioapjjbomholnjaiiikohlloSoprano
}
\context NullVoice = "lnbhlkhpdgkhknfjmgmcajcgpfacgmaldppbhjheioapjjbomholnjaiiikohlloAlto" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \lnbhlkhpdgkhknfjmgmcajcgpfacgmaldppbhjheioapjjbomholnjaiiikohlloAlto
}

		
                \new Lyrics \lyricsto "lnbhlkhpdgkhknfjmgmcajcgpfacgmaldppbhjheioapjjbomholnjaiiikohlloSoprano" {
                  
                  \set stanza = "1."
                  
                  \lyricmode {
		    
                    Oh soul, are you wea -- ry and trou -- bled?
No light in the dark -- ness you see?
There's a light for a look at the Sav -- ior,
And life more a -- bun -- dant and free!
		    
                    Turn your eyes up -- on Je -- sus, Look full in His
won -- der -- ful face, And the things of earth will grow
strange -- ly dim, In the light of His glo -- ry and grace.
		    
                  }
                }
		
                \new Lyrics \lyricsto "lnbhlkhpdgkhknfjmgmcajcgpfacgmaldppbhjheioapjjbomholnjaiiikohlloSoprano" {
                  
                  \set stanza = "2."
                  
                  \lyricmode {
		    
                    Through death in -- to life ev -- er -- last -- ing He
passed, and we fol -- low Him there; O -- ver us sin no
more hath do -- min -- ion For more than con -- quer -- ors we
are!
		    
		    
                  }
                }
		
                \new Lyrics \lyricsto "lnbhlkhpdgkhknfjmgmcajcgpfacgmaldppbhjheioapjjbomholnjaiiikohlloSoprano" {
                  
                  \set stanza = "3."
                  
                  \lyricmode {
		    
                    His Word shall not fail you He pro -- mised; Be -- lieve
Him, and all will be well: Then __ \skip1 go to a world that is
dy -- ing, His per -- fect sal -- va -- tion to tell!
		    
		    
                  }
                }
		
        >>
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \lnbhlkhpdgkhknfjmgmcajcgpfacgmaldppbhjheioapjjbomholnjaiiikohlloTenor \lnbhlkhpdgkhknfjmgmcajcgpfacgmaldppbhjheioapjjbomholnjaiiikohlloBass }
\context NullVoice = "lnbhlkhpdgkhknfjmgmcajcgpfacgmaldppbhjheioapjjbomholnjaiiikohlloTenor" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \lnbhlkhpdgkhknfjmgmcajcgpfacgmaldppbhjheioapjjbomholnjaiiikohlloTenor
}
\context NullVoice = "lnbhlkhpdgkhknfjmgmcajcgpfacgmaldppbhjheioapjjbomholnjaiiikohlloBass" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \lnbhlkhpdgkhknfjmgmcajcgpfacgmaldppbhjheioapjjbomholnjaiiikohlloBass
}
        >>
    >>
    >>
}
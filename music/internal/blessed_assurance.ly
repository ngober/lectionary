\version "2.22.1"

ceclcmgdcimfllocgbnionbbfjbbeddgmmhkgefdfdkjhkneikgicinfgkkdcpakSoprano = 
\relative es' {
\clef "treble"
\numericTimeSignature\time 9/8
\key d \major
\partial 4.
fis8 e d | a'4. a g8 a b | a2. a8 fis a | d4. cis4 8 b8 a gis | a2. fis8 e d | a'4. a b8 a b | a2. d,8 e fis | g4. e d8 e cis | d2.\partial 4.
\bar "||"\mark "Refrain"\partial 4.
a'8 a a | d4. a b8 b b | a2. a8 a a | b4. d4. cis8 cis b | cis2. cis8 d e | d4. a4. b8 a b | a2. d,8 e fis | g4. e4. d8 e cis | d2. \bar "|."
}

ceclcmgdcimfllocgbnionbbfjbbeddgmmhkgefdfdkjhkneikgicinfgkkdcpakAlto = 
\relative c' {
\clef "treble"
\numericTimeSignature\time 9/8
\key d \major
\partial 4.
d8 d d | fis4. fis d8 d d | d2. fis8 d fis | fis4. e4 e8 e e e | e2. d8 d d | fis4. fis d8 d d | d2. d8 d d | d4. b d8 cis a | a2.\partial 4.
\bar "||"\partial 4.
fis'8 fis fis | fis4. fis g8 g g | fis2. fis8 fis fis | g4. a4. a8 a gis | a2. g8 g g | fis4. fis4. g8 fis g | fis2. d8 cis d | d4. b4. d8 cis a | a2. \bar "|."
}

ceclcmgdcimfllocgbnionbbfjbbeddgmmhkgefdfdkjhkneikgicinfgkkdcpakTenor = 
\relative g {
\clef "bass"
\numericTimeSignature\time 9/8
\key d \major
\partial 4.
a8 g fis | a4. a b8 fis g | fis2. a8 a a | a4. a4 a8 d8 cis b | cis2. a8 g fis | a4. a b8 fis g | fis2. fis8 g a | b4. g4. fis8 g e | fis2.\partial 4.
\bar "||"\partial 4.
d'8 d d | a4. d d8 d d | d2. d8 d d | d4. d4. e8 e e | e2. a,8 b cis | d4. d4. d8 d d | d2. a8 a a | b4. g4. fis8 g e | fis2. \bar "|."
}

ceclcmgdcimfllocgbnionbbfjbbeddgmmhkgefdfdkjhkneikgicinfgkkdcpakBass = 
\relative d {
\clef "bass"
\numericTimeSignature\time 9/8
\key d \major
\partial 4.
d8 8 8 | d4. 4. 8 8 8 | d2. 8 8 8 | d4. e4 e8 8 8 8 | a2. d,8 8 8 | d4. 4. 8 8 8 | d2. 8 8 8 | g,4. 4. a8 8 8 | d2.\partial 4.
\bar "||"\partial 4.
8 8 8 | d4. 4. g8 8 8 | d2. 8 8 8 | g4. fis4. e8 8 8 | a2. 8 8 8 | d,4. 4. 8 8 8 | d2. fis8 e d | g,4. 4. a8 8 8 | d2. \bar "|."
}

\tocItem \markup "Blessed Assurance"
\score {
    \header {
        title = "Blessed Assurance"
        
        
        poet = "Fanny Crosby (1820-1915)"
        
        
        composer = "Phoebe Palmer Knapp (1839-1908)"
        
        
    }
    <<
        \new ChoirStaff <<
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \ceclcmgdcimfllocgbnionbbfjbbeddgmmhkgefdfdkjhkneikgicinfgkkdcpakSoprano \ceclcmgdcimfllocgbnionbbfjbbeddgmmhkgefdfdkjhkneikgicinfgkkdcpakAlto }
\context NullVoice = "ceclcmgdcimfllocgbnionbbfjbbeddgmmhkgefdfdkjhkneikgicinfgkkdcpakSoprano" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \ceclcmgdcimfllocgbnionbbfjbbeddgmmhkgefdfdkjhkneikgicinfgkkdcpakSoprano
}
\context NullVoice = "ceclcmgdcimfllocgbnionbbfjbbeddgmmhkgefdfdkjhkneikgicinfgkkdcpakAlto" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \ceclcmgdcimfllocgbnionbbfjbbeddgmmhkgefdfdkjhkneikgicinfgkkdcpakAlto
}

		
                \new Lyrics \lyricsto "ceclcmgdcimfllocgbnionbbfjbbeddgmmhkgefdfdkjhkneikgicinfgkkdcpakSoprano" {
                  
                  \set stanza = "1."
                  
                  \lyricmode {
		    
                    Bless -- ed as -- sur -- ance, Je -- sus is mine:
Oh what a fore -- taste of glo -- ry di -- vine!
Heir of sal -- va -- tion, pur -- chase of God,
born of his Spir -- it, washed in his blood.
		    
                    This is my sto -- ry, this is my song,
prais -- ing my sav -- ior all the day long.
This is my sto -- ry, this is my song,
prais -- ing my sav -- ior all the day long.
		    
                  }
                }
		
                \new Lyrics \lyricsto "ceclcmgdcimfllocgbnionbbfjbbeddgmmhkgefdfdkjhkneikgicinfgkkdcpakSoprano" {
                  
                  \set stanza = "2."
                  
                  \lyricmode {
		    
                    Per -- fect sub -- mis -- sion, per -- fect de -- light:
vi -- sions of rap -- ture \skip1 burst on my sight.
An -- gels de -- scend -- ing bring from a -- bove
e -- choes of mer -- cy, whis -- pers of love.
		    
		    
                  }
                }
		
                \new Lyrics \lyricsto "ceclcmgdcimfllocgbnionbbfjbbeddgmmhkgefdfdkjhkneikgicinfgkkdcpakSoprano" {
                  
                  \set stanza = "3."
                  
                  \lyricmode {
		    
                    Per -- fect sub -- mis -- sion, all is at rest,
I in my sav -- ior am hap -- py and blest.
Watch -- ing and wait -- ing, look -- ing a -- bove,
filled with his good -- ness, lost in his love.
		    
		    
                  }
                }
		
        >>
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \ceclcmgdcimfllocgbnionbbfjbbeddgmmhkgefdfdkjhkneikgicinfgkkdcpakTenor \ceclcmgdcimfllocgbnionbbfjbbeddgmmhkgefdfdkjhkneikgicinfgkkdcpakBass }
\context NullVoice = "ceclcmgdcimfllocgbnionbbfjbbeddgmmhkgefdfdkjhkneikgicinfgkkdcpakTenor" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \ceclcmgdcimfllocgbnionbbfjbbeddgmmhkgefdfdkjhkneikgicinfgkkdcpakTenor
}
\context NullVoice = "ceclcmgdcimfllocgbnionbbfjbbeddgmmhkgefdfdkjhkneikgicinfgkkdcpakBass" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \ceclcmgdcimfllocgbnionbbfjbbeddgmmhkgefdfdkjhkneikgicinfgkkdcpakBass
}
        >>
    >>
    >>
}
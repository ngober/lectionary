\version "2.22.1"

plekmaimbjhmbkbbpmbflmeeghkfiklecccjkecmpbigomehmipoofnlnelhakidSoprano = 
\relative es' {
\clef "treble"
\numericTimeSignature\time 6/8
\key e \major

\time 6/8 e8 fis8 gis16 gis16 ~ ~ gis8 fis8 e8 | \time 9/8 cis8. e8. cis8 b4 ~ b4 r8 | \time 6/8 e8 fis8 gis16 gis16 ~ ~ gis8 fis8 e8 | \time 9/8 cis8. e8. e4. ~ ~ e4 r8 | \time 6/8 e8 fis8 gis16 gis16 ~ ~ gis8 fis8 e8 | \time 9/8 cis8. e8. cis8 b4 ~ b4 r8 | \time 6/8 e8 fis8 gis8 fis4 e8 | e4. ~ ~ e4 r8
\bar "||"\mark "Refrain"
cis'4. e,4 cis'8 | cis4. e,4 b'8 | b4. e,4 b'8 | b4. fis4 r8 | cis'4. e,4 cis'8 | cis4. e,4 b'8 | b8 a8 gis8 fis4 gis8 | gis4. r8 e8 b'8 | b8 a8 gis8 fis4 e8 | e4. ~ ~ e4 r8 \bar "|."
}

plekmaimbjhmbkbbpmbflmeeghkfiklecccjkecmpbigomehmipoofnlnelhakidAlto = 
\relative c' {
\clef "treble"
\numericTimeSignature\time 6/8
\key e \major

cis8 cis8 e16 e16 ~ ~ e8 cis8 b8 | a8. cis8. cis8 b4 ~ b4 r8 | cis8 cis8 e16 e16 ~ ~ e8 cis8 b8 | a8. cis8. b4. ~ ~ b4 r8 | cis8 cis8 e16 e16 ~ ~ e8 cis8 b8 | a8. cis8. cis8 b4 ~ b4 r8 | cis8 cis8 e8 dis4 cis8 | b4. ~ ~ b4 r8
\bar "||"
gis'4. e8 ( fis8 ) gis8 | a4. e8 ( fis8 ) fis8 | gis4. e8 ( fis8 ) gis8 | fis4. fis4 r8 | gis4. e8 ( fis8 ) gis8 | a4. e8 ( fis8 ) fis8 | gis8 e8 e8 dis4 dis8 | e4. r8 e8 gis8 | gis8 e8 e8 dis4 cis8 | b4. ~ ~ b4 r8 \bar "|."
}

plekmaimbjhmbkbbpmbflmeeghkfiklecccjkecmpbigomehmipoofnlnelhakidTenor = 
\relative g {
\clef "bass"
\numericTimeSignature\time 6/8
\key e \major

gis8 a8 b16 b16 ~ ~ b8 a8 gis8 | e8. e8. fis8 gis4 ~ ~ ~ gis4 r8 | gis8 a8 b16 b16 ~ ~ b8 a8 gis8 | e8. e8. gis4. ~ ~ ~ gis4 r8 | gis8 a8 b16 b16 ~ ~ b8 a8 gis8 | e8. e8. e8 e4 ~ ~ e4 r8 | a8 a8 cis8 b4 b8 | gis4. ~ ~ ~ gis4 r8
\bar "||"
e'4. cis4 e8 | e4. cis4 dis8 | e4. b4 e8 | dis4. dis4 r8 | e4. cis4 e8 | e4. cis4 dis8 | e8 cis8 b8 b4 gis8 | cis4. r8 cis8 e8 | e8 cis8 b8 a4 a8 | gis4. ~ ~ ~ gis4 r8 \bar "|."
}

plekmaimbjhmbkbbpmbflmeeghkfiklecccjkecmpbigomehmipoofnlnelhakidBass = 
\relative d {
\clef "bass"
\numericTimeSignature\time 6/8
\key e \major

cis8 cis8 cis16 e16 ~ ~ e8 e8 e8 | a,8. a8. e'8 e4 ~ ~ ~ e4 r8 | cis8 cis8 cis16 e16 ~ ~ e8 e8 e8 | a,8. a8. e'4. ~ ~ ~ e4 r8 | cis8 cis8 cis16 e16 ~ ~ e8 e8 e8 | a,8. a8. gis8 gis4 ~ ~ gis4 r8 | a8 a8 a8 b4 b8 | e4. ~ ~ ~ e4 r8
\bar "||"
cis4. cis4 b8 | a4. a4 b8 | e4. gis4 e8 | b4. b4 r8 | cis4. cis4 b8 | a4. a4 b8 | e8 e8 e8 b4 bis8 | cis4. r8 cis8 b8 | a8 a8 a8 b4 b8 | e4. ~ ~ ~ e4 r8 \bar "|."
}

\tocItem \markup "Only A Holy God"
\score {
    \header {
        title = "Only A Holy God"
        
        
        
        composer = "Michael Farren, Jonny Robinson, Dustin Smith, Rich Thompson"
        
        
    }
    <<
        \new ChoirStaff <<
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \plekmaimbjhmbkbbpmbflmeeghkfiklecccjkecmpbigomehmipoofnlnelhakidSoprano \plekmaimbjhmbkbbpmbflmeeghkfiklecccjkecmpbigomehmipoofnlnelhakidAlto }
\context NullVoice = "plekmaimbjhmbkbbpmbflmeeghkfiklecccjkecmpbigomehmipoofnlnelhakidSoprano" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \plekmaimbjhmbkbbpmbflmeeghkfiklecccjkecmpbigomehmipoofnlnelhakidSoprano
}
\context NullVoice = "plekmaimbjhmbkbbpmbflmeeghkfiklecccjkecmpbigomehmipoofnlnelhakidAlto" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \plekmaimbjhmbkbbpmbflmeeghkfiklecccjkecmpbigomehmipoofnlnelhakidAlto
}

		
                \new Lyrics \lyricsto "plekmaimbjhmbkbbpmbflmeeghkfiklecccjkecmpbigomehmipoofnlnelhakidSoprano" {
                  
                  \set stanza = "1."
                  
                  \lyricmode {
		    
                    Who else com -- mands all the host of heav -- en?
Who else could make ev -- ery knee bow down?
Who else could whis -- per and dark -- ness trem -- ble?
On -- ly a ho -- ly God.
		    
                    Come and be -- hold him,
the One and the On -- ly!
Cry out, sing ho -- ly,
for -- ev -- er the ho -- ly God!
Come and wor -- ship the ho -- ly God.
		    
                  }
                }
		
                \new Lyrics \lyricsto "plekmaimbjhmbkbbpmbflmeeghkfiklecccjkecmpbigomehmipoofnlnelhakidSoprano" {
                  
                  \set stanza = "2."
                  
                  \lyricmode {
		    
                    What oth -- er beau -- ty de -- mands such prais -- es?
What oth -- er splen -- dor out -- shines the sun?
What oth -- er ma -- je -- sty rules with jus -- tice?
On -- ly a ho -- ly God.
		    
		    
                  }
                }
		
                \new Lyrics \lyricsto "plekmaimbjhmbkbbpmbflmeeghkfiklecccjkecmpbigomehmipoofnlnelhakidSoprano" {
                  
                  \set stanza = "3."
                  
                  \lyricmode {
		    
                    What oth -- er glo -- ry con -- sumes like fi -- re?
What oth -- er pow -- er can raise the dead?
What oth -- er name re -- mains un -- de -- feat -- ed?
On -- ly a ho -- ly God.
		    
		    
                  }
                }
		
        >>
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \plekmaimbjhmbkbbpmbflmeeghkfiklecccjkecmpbigomehmipoofnlnelhakidTenor \plekmaimbjhmbkbbpmbflmeeghkfiklecccjkecmpbigomehmipoofnlnelhakidBass }
\context NullVoice = "plekmaimbjhmbkbbpmbflmeeghkfiklecccjkecmpbigomehmipoofnlnelhakidTenor" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \plekmaimbjhmbkbbpmbflmeeghkfiklecccjkecmpbigomehmipoofnlnelhakidTenor
}
\context NullVoice = "plekmaimbjhmbkbbpmbflmeeghkfiklecccjkecmpbigomehmipoofnlnelhakidBass" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \plekmaimbjhmbkbbpmbflmeeghkfiklecccjkecmpbigomehmipoofnlnelhakidBass
}
        >>
    >>
    >>
}
\markup \column {
\line { \bold "4."
\column {
"Who else could rescue me from my failing?"
"Who else whould offer his only Son?"
"Who else invites me to call him father?"
"Only a holy God."
}
}
}
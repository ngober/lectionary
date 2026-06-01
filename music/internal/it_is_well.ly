\version "2.22.1"

edgholmfafmbojhahailoackoafigagijjjifphnfcmdcpbmkfojegalmhmaealjSoprano = 
\relative es' {
\clef "treble"
\numericTimeSignature\time 4/4
\key ges \major
\partial 4
aes4 | aes2 ges4 f4 | f2 es4 f4 | ges4( bes) aes ges | f2. \bar ""
aes4 | des2 c4 bes4 | bes2 aes4 g4 | aes2. \bar ""
aes4 | des2 des4 c4 | bes2 4 4 | es2 es4 des4 | c2 \bar ""
bes4 aes4 | des2 4 4 | des2 c4. des8 | des2\partial 2
\bar "||"\partial 2
aes4 aes4 | aes1~ | aes2 aes4 aes4 | aes1~ | aes2 \bar ""
f4 aes4 | bes2 bes4 des4 | des2 c4. des8 | des2. \bar "|."
}

edgholmfafmbojhahailoackoafigagijjjifphnfcmdcpbmkfojegalmhmaealjAlto = 
\relative c' {
\clef "treble"
\numericTimeSignature\time 4/4
\key ges \major
\partial 4
f4 | f2 es4 des4 | des2 c4 des4 | c2 c4 es4 | des2. \bar ""
f4 | f2 es4 des4 | f2 es4 es4 | es2. \bar ""
ges4 | f2 f4 aes4 | ges2 bes4 aes4 | ges2 ges4 g4 | aes2 \bar ""
aes4 aes4 | aes2 des,4 es4 | f2 es4. f8 | f2\partial 2
\bar "||"\partial 2
s2 | s2 f4 f4 | es2 s2 | s2 es4 ges4 | f2 \bar ""
des4 f4 | ges2 4 4 | f2 es4. f8 | f2. \bar "|."
}

edgholmfafmbojhahailoackoafigagijjjifphnfcmdcpbmkfojegalmhmaealjTenor = 
\relative g {
\clef "bass"
\numericTimeSignature\time 4/4
\key ges \major
\partial 4
aes4 | aes2 4 4 | aes2 4 4 | aes2 4 c4 | des2. \bar ""
aes4 | bes2 a4 bes4 | d2 c4 bes4 | c2. \bar ""
c4 | des2 4 4 | des2 4 d4 | es2 4 4 | es2 \bar ""
des4 c4 | des2 aes4 bes4 | aes2 4. 8 | aes2\partial 2
\bar "||"\partial 2
r2 | r2 aes4 des4 | c2 r2 | r2 c4 es4 | des2 \bar ""
aes4 des4 | des2 des4 bes4 | aes2 4. 8 | aes2. \bar "|."
}

edgholmfafmbojhahailoackoafigagijjjifphnfcmdcpbmkfojegalmhmaealjBass = 
\relative d {
\clef "bass"
\numericTimeSignature\time 4/4
\key ges \major
\partial 4
des4 | des2 des4 des8( f8) | aes2 ges4 f4 | es2 aes,4 4 | des2. \bar ""
des4 | bes2 c4 des4 | des2 es4 es4 | aes,2. \bar ""
aes'4 | des,2 des4 f4 | ges2 ges4 f4 | es2 4 4 | aes2 \bar ""
aes4 aes8( ges8) | f2 f4 ges4 | aes2 aes,4. aes8 | des2\partial 2
\bar "||"\partial 2
r2 | r2 des4 f4 | aes2 r2 | r2 aes,4 4 | des2 \bar ""
des4 4 | ges2 4 4 | aes2 aes,4. 8 | des2. \bar "|."
}

\tocItem \markup "It Is Well"
\score {
    \header {
        title = "It Is Well"
        
        
        poet = "Horatio Gates Spafford (1828-1888)"
        
        
        composer = "Philip P. Bliss (1838-1876)"
        
        
    }
    <<
        \new ChoirStaff <<
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \edgholmfafmbojhahailoackoafigagijjjifphnfcmdcpbmkfojegalmhmaealjSoprano \edgholmfafmbojhahailoackoafigagijjjifphnfcmdcpbmkfojegalmhmaealjAlto }
\context NullVoice = "edgholmfafmbojhahailoackoafigagijjjifphnfcmdcpbmkfojegalmhmaealjSoprano" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \edgholmfafmbojhahailoackoafigagijjjifphnfcmdcpbmkfojegalmhmaealjSoprano
}
\context NullVoice = "edgholmfafmbojhahailoackoafigagijjjifphnfcmdcpbmkfojegalmhmaealjAlto" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \edgholmfafmbojhahailoackoafigagijjjifphnfcmdcpbmkfojegalmhmaealjAlto
}

		
                \new Lyrics \lyricsto "edgholmfafmbojhahailoackoafigagijjjifphnfcmdcpbmkfojegalmhmaealjSoprano" {
                  
                  \set stanza = "1."
                  
                  \lyricmode {
		    
                    When peace like a riv -- er at -- ten -- deth my way,
When sor -- rows like sea bil -- lows roll;
What -- ev -- er my lot, thou hast taught me to say,
"\"It" is well. It is well with my "soul\""
		    
                    It is well with my soul, It is well, It is well with my soul.
		    
                  }
                }
		
                \new Lyrics \lyricsto "edgholmfafmbojhahailoackoafigagijjjifphnfcmdcpbmkfojegalmhmaealjSoprano" {
                  
                  \set stanza = "2."
                  
                  \lyricmode {
		    
                    Though Sa -- tan should buf -- fet, though tri -- als should come, Let this blest as -- sur -- ance con -- trol, That Christ has re -- gard -- ed my help -- less es -- tate, And has shed his own blood for my \set associatedVoice = "edgholmfafmbojhahailoackoafigagijjjifphnfcmdcpbmkfojegalmhmaealjAlto" soul.
		    
                    It is well with my soul
		    
                  }
                }
		
                \new Lyrics \lyricsto "edgholmfafmbojhahailoackoafigagijjjifphnfcmdcpbmkfojegalmhmaealjSoprano" {
                  
                  \set stanza = "3."
                  
                  \lyricmode {
		    
                    My sin, oh the bliss of this glo -- ri -- ous thought,
My sin, not in part but the whole
Is nailed to the cross and I bear it no more,
Praise the Lord, praise the Lord, Oh my soul!
		    
		    
                  }
                }
		
        >>
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \edgholmfafmbojhahailoackoafigagijjjifphnfcmdcpbmkfojegalmhmaealjTenor \edgholmfafmbojhahailoackoafigagijjjifphnfcmdcpbmkfojegalmhmaealjBass }
\context NullVoice = "edgholmfafmbojhahailoackoafigagijjjifphnfcmdcpbmkfojegalmhmaealjTenor" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \edgholmfafmbojhahailoackoafigagijjjifphnfcmdcpbmkfojegalmhmaealjTenor
}
\context NullVoice = "edgholmfafmbojhahailoackoafigagijjjifphnfcmdcpbmkfojegalmhmaealjBass" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \edgholmfafmbojhahailoackoafigagijjjifphnfcmdcpbmkfojegalmhmaealjBass
}
        >>
    >>
    >>
}
\markup \column {
\line { \bold "4."
\column {
"And, Lord, haste the day when my faith shall be sight,"
"The clouds be rolled back as a scroll,"
"The trump shall resound and the Lord shall descend,"
""Even so," It is well with my soul."
}
}
}
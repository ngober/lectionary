\version "2.22.1"

kliijjgnifgljbdjkjgfdphkneoppkphonbkenijpoiacojmnfgaadpagodhfoiaSoprano = 
\relative es' {
\clef "treble"
\numericTimeSignature\time 4/4
\key as \major
\partial 4
es4 | es4. c8 es4 as8 bes8 | c2 as4 as4 | g4 g8 g8 as4 bes4 | as2. \bar ""
es4 | f4. f8 as4 g8 f8 | es2 as4 bes4 | c4 c8 c8 bes4 bes4 | as1
\bar "||"\mark "Refrain"
c2 c8 bes8 as4 | es'2 es8 des8 c4 | bes4 bes4 bes4. c8 | des4 c4 bes2 | c2 c8 bes8 as4 | es'2 es8 des8 c4 | bes4 c8 ( des8 ) c4. bes8 | as4 g4 as4 \bar "|."
}

kliijjgnifgljbdjkjgfdphkneoppkphonbkenijpoiacojmnfgaadpagodhfoiaAlto = 
\relative c' {
\clef "treble"
\numericTimeSignature\time 4/4
\key as \major
\partial 4
c4 | c4. c8 c4 c8 des8 | es2 c4 es4 | es4 es8 es8 es4 es4 | es2. \bar ""
c4 | des4. des8 f4 es8 des8 | c2 es4 f4 | es4 es8 es8 des4 des4 | c1
\bar "||"
es4 es4 es8 des8 c4 | es4 es4 es8 es8 es4 | es4 es4 es4. es8 | es4 es4 es2 | es4 es4 es8 des8 c4 | es4 es4 es8 es8 es4 | f4 c8 ( des8 ) es4. es8 | es4 des4 c4 \bar "|."
}

kliijjgnifgljbdjkjgfdphkneoppkphonbkenijpoiacojmnfgaadpagodhfoiaTenor = 
\relative g {
\clef "bass"
\numericTimeSignature\time 4/4
\key as \major
\partial 4
as4 | as4. es8 as4 as8 as8 | as2 as4 as4 | bes4 bes8 bes8 c4 des4 | c2. \bar ""
as4 | as4. as8 as4 as8 as8 | as2 as4 as4 | as4 as8 as8 g4 g4 | as1
\bar "||"
as4 as4 as8 as8 as4 | c4 c4 c8 bes8 as4 | g4 g4 g4. as8 | bes4 as4 g2 | as4 as4 as8 as8 as4 | c4 c4 c8 bes8 as4 | as4 as4 as4. des8 | c4 bes4 as4 \bar "|."
}

kliijjgnifgljbdjkjgfdphkneoppkphonbkenijpoiacojmnfgaadpagodhfoiaBass = 
\relative d {
\clef "bass"
\numericTimeSignature\time 4/4
\key as \major
\partial 4
as4 | as4. as8 as4 as8 as8 | as2 as4 c4 | es4 es8 es8 es4 es4 | as,2. \bar ""
as4 | des4. des8 des4 des8 des8 | as2 c4 des4 | es4 es8 es8 es4 es4 | as,1
\bar "||"
as4 as4 as8 as8 as4 | as4 as4 as8 as8 as4 | es'4 es4 es4. es8 | es4 es4 es2 | as,4 as4 as8 as8 as4 | as4 as4 as8 as8 as4 | des4 des4 es4. es8 | es4 es4 as,4 \bar "|."
}

\tocItem \markup "I Stand Amazed In the Presence"
\score {
    \header {
        title = "I Stand Amazed In the Presence"
        
        
        
        composer = "Charles Hutchinson Gabriel, 1905"
        
        
    }
    <<
        \new ChoirStaff <<
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \kliijjgnifgljbdjkjgfdphkneoppkphonbkenijpoiacojmnfgaadpagodhfoiaSoprano \kliijjgnifgljbdjkjgfdphkneoppkphonbkenijpoiacojmnfgaadpagodhfoiaAlto }
\context NullVoice = "kliijjgnifgljbdjkjgfdphkneoppkphonbkenijpoiacojmnfgaadpagodhfoiaSoprano" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \kliijjgnifgljbdjkjgfdphkneoppkphonbkenijpoiacojmnfgaadpagodhfoiaSoprano
}
\context NullVoice = "kliijjgnifgljbdjkjgfdphkneoppkphonbkenijpoiacojmnfgaadpagodhfoiaAlto" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \kliijjgnifgljbdjkjgfdphkneoppkphonbkenijpoiacojmnfgaadpagodhfoiaAlto
}

		
                \new Lyrics \lyricsto "kliijjgnifgljbdjkjgfdphkneoppkphonbkenijpoiacojmnfgaadpagodhfoiaSoprano" {
                  
                  \set stanza = "1."
                  
                  \lyricmode {
		    
                    I stand a -- mazed in the pres -- ence Of Je -- sus the Na -- za -- rene,
And won -- der how He could love me, A sin -- ner, con -- demned, un -- clean.
		    
                    How mar -- vel -- ous! How won -- der -- ful! And my song shall ev -- er be:
How mar -- vel -- ous! How won -- der -- ful is my sav -- iors love for me!
		    
                  }
                }
		
                \new Lyrics \lyricsto "kliijjgnifgljbdjkjgfdphkneoppkphonbkenijpoiacojmnfgaadpagodhfoiaSoprano" {
                  
                  \set stanza = "2."
                  
                  \lyricmode {
		    
                    For me it was in the den \skip1 He prayed: "\"Not" My will, but "Thine.\"" He had no tears for His own griefs, But sweat drops of blood for \set associatedVoice = "kliijjgnifgljbdjkjgfdphkneoppkphonbkenijpoiacojmnfgaadpagodhfoiaAlto" mine.
		    
                    Oh, how mar -- vel -- ous! Oh, how won -- der -- ful!
\skip1 \skip1 \skip1 \skip1 \skip1 \skip1 \skip1
Oh, how mar -- vel -- ous! Oh, how won -- der -- ful
		    
                  }
                }
		
                \new Lyrics \lyricsto "kliijjgnifgljbdjkjgfdphkneoppkphonbkenijpoiacojmnfgaadpagodhfoiaSoprano" {
                  
                  \set stanza = "3."
                  
                  \lyricmode {
		    
                    In pi -- ty an -- gels be -- held Him, And came from the world of light
To com -- fort Him in the sor -- rows He bore for my soul that night.
		    
		    
                  }
                }
		
        >>
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \kliijjgnifgljbdjkjgfdphkneoppkphonbkenijpoiacojmnfgaadpagodhfoiaTenor \kliijjgnifgljbdjkjgfdphkneoppkphonbkenijpoiacojmnfgaadpagodhfoiaBass }
\context NullVoice = "kliijjgnifgljbdjkjgfdphkneoppkphonbkenijpoiacojmnfgaadpagodhfoiaTenor" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \kliijjgnifgljbdjkjgfdphkneoppkphonbkenijpoiacojmnfgaadpagodhfoiaTenor
}
\context NullVoice = "kliijjgnifgljbdjkjgfdphkneoppkphonbkenijpoiacojmnfgaadpagodhfoiaBass" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \kliijjgnifgljbdjkjgfdphkneoppkphonbkenijpoiacojmnfgaadpagodhfoiaBass
}
        >>
    >>
    >>
}
\markup \column {
\line { \bold "4."
\column {
"He took my sins and my sorrows, He made them His very own;"
"He bore the burden to Calvary, And suffered and died alone."
}
}
}
\markup \column {
\line { \bold "5."
\column {
"When with the ransomed in glory His face I at last shall see,"
"'Twill be my joy through the ages To sing of His love for me."
}
}
}
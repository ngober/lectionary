\version "2.22.1"

dgfcjloabpdnbmoabeopebhfkbbddlejajhmijpcbghcbkbafgnphkgeamjglgggSoprano = 
\relative es' {
\clef "treble"
\numericTimeSignature\time 3/4
\key des \major
\partial 4
des8( f) | aes4. bes8 aes f | des2 \bar ""
des4 | es4. 8 des8 es8 | f2 \bar ""
des8 f | aes4. bes8 aes f | des2 \bar ""
des8 es | f4. ges8 f es | des2.
\bar "||"\mark "Refrain"
aes'4. bes8 aes f | des'2. | aes4. bes8 aes f | es2. \bar ""
aes4. bes8 aes f | des'8 c bes4 des | f,4. ges8 f es | des2 \bar "|."
}

dgfcjloabpdnbmoabeopebhfkbbddlejajhmijpcbghcbkbafgnphkgeamjglgggAlto = 
\relative c' {
\clef "treble"
\numericTimeSignature\time 3/4
\key des \major
\partial 4
des8( f) | f4. ges8 f des | aes2 \bar ""
aes4 | c4. c8 bes c | des2 \bar ""
des8 des | f4. ges8 f des | aes2 \bar ""
des8 des | des4. es8 des c | des2.
\bar "||"
f4. ges8 f des | f2. | f4. ges8 f des | c2. \bar ""
f4. ges8 f des | f8 aes ges4 des | des4. es8 des c | des2 \bar "|."
}

dgfcjloabpdnbmoabeopebhfkbbddlejajhmijpcbghcbkbafgnphkgeamjglgggTenor = 
\relative g {
\clef "bass"
\numericTimeSignature\time 3/4
\key des \major
\partial 4
f8( aes) | des4. des8 des aes | f2 \bar ""
f4 | aes4. aes8 f aes | aes2 \bar ""
fes8 aes | des4. des8 des aes | f2 \bar ""
aes8 bes | aes4. aes8 aes ges | f2.
\bar "||"
des'4. des8 des aes | aes2. | des4. des8 des aes | aes2. \bar ""
des4. des8 des aes | aes8 des des4 bes | aes4. aes8 aes aes | f2 \bar "|."
}

dgfcjloabpdnbmoabeopebhfkbbddlejajhmijpcbghcbkbafgnphkgeamjglgggBass = 
\relative d {
\clef "bass"
\numericTimeSignature\time 3/4
\key des \major
\partial 4
des4 | des4. 8 8 8 | des2 \bar ""
des4 | aes4. 8 8 8 | des2 \bar ""
des8 8 | des4. 8 8 8 | des2 \bar ""
f8 ges | aes4. aes,8 8 8 | des2.
\bar "||"
des4. 8 8 8 | des2. | des4. des8 des f | aes2. \bar ""
des,4. 8 8 8 | des8 f ges4 g | aes4. aes,8 8 8 | des2 \bar "|."
}

\tocItem \markup "Jesus Paid It All"
\score {
    \header {
        title = "Jesus Paid It All"
        
        
        poet = "Elvina M. Hall (1820-1889)"
        
        
        composer = "John T. Grape (1835-1915)"
        
        
    }
    <<
        \new ChoirStaff <<
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \dgfcjloabpdnbmoabeopebhfkbbddlejajhmijpcbghcbkbafgnphkgeamjglgggSoprano \dgfcjloabpdnbmoabeopebhfkbbddlejajhmijpcbghcbkbafgnphkgeamjglgggAlto }
\context NullVoice = "dgfcjloabpdnbmoabeopebhfkbbddlejajhmijpcbghcbkbafgnphkgeamjglgggSoprano" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \dgfcjloabpdnbmoabeopebhfkbbddlejajhmijpcbghcbkbafgnphkgeamjglgggSoprano
}
\context NullVoice = "dgfcjloabpdnbmoabeopebhfkbbddlejajhmijpcbghcbkbafgnphkgeamjglgggAlto" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \dgfcjloabpdnbmoabeopebhfkbbddlejajhmijpcbghcbkbafgnphkgeamjglgggAlto
}

		
                \new Lyrics \lyricsto "dgfcjloabpdnbmoabeopebhfkbbddlejajhmijpcbghcbkbafgnphkgeamjglgggSoprano" {
                  
                  \set stanza = "1."
                  
                  \lyricmode {
		    
                    I hear the Sav -- ior say, "\"Thy" strength in -- deed is small, child of weak -- ness, watch and pray, find in me thine all in "all.\""
		    
                    Je -- sus paid it all, all to him I owe; sin had left a crim -- son stain, he washed it white as snow
		    
                  }
                }
		
                \new Lyrics \lyricsto "dgfcjloabpdnbmoabeopebhfkbbddlejajhmijpcbghcbkbafgnphkgeamjglgggSoprano" {
                  
                  \set stanza = "2."
                  
                  \lyricmode {
		    
                    Lord, now in -- deed I find thy pow'r and thine a -- lone can \skip1 change the lep -- er's spots and \skip1 melt the heart of stone
		    
		    
                  }
                }
		
                \new Lyrics \lyricsto "dgfcjloabpdnbmoabeopebhfkbbddlejajhmijpcbghcbkbafgnphkgeamjglgggSoprano" {
                  
                  \set stanza = "3."
                  
                  \lyricmode {
		    
                    And when, be -- fore the throne, I stand in him com -- plete, "\"Je" -- sus died my soul to "save,\"" my \skip1 lips shall still re -- peat.
		    
		    
                  }
                }
		
        >>
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \dgfcjloabpdnbmoabeopebhfkbbddlejajhmijpcbghcbkbafgnphkgeamjglgggTenor \dgfcjloabpdnbmoabeopebhfkbbddlejajhmijpcbghcbkbafgnphkgeamjglgggBass }
\context NullVoice = "dgfcjloabpdnbmoabeopebhfkbbddlejajhmijpcbghcbkbafgnphkgeamjglgggTenor" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \dgfcjloabpdnbmoabeopebhfkbbddlejajhmijpcbghcbkbafgnphkgeamjglgggTenor
}
\context NullVoice = "dgfcjloabpdnbmoabeopebhfkbbddlejajhmijpcbghcbkbafgnphkgeamjglgggBass" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \dgfcjloabpdnbmoabeopebhfkbbddlejajhmijpcbghcbkbafgnphkgeamjglgggBass
}
        >>
    >>
    >>
}
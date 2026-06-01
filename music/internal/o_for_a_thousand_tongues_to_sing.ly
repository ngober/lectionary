\version "2.22.1"

kcmaomfmkoehckhhljpkhdmdcgabmaigndajoncokkdoohjelpboggledcjoeffnSoprano = 
\relative es' {
\clef "treble"
\numericTimeSignature\time 3/4
\key aes \major
\partial 4
es4 | aes8 aes8 bes4 bes4 | c8 bes8 aes4 bes4 | c8 c8 des4 c4 | bes2 \bar ""
es4 | es8 c8 c4 aes4 | aes8 f8 f4 aes8( f8) | es8 aes8 aes4 bes4 | aes2 \bar "|."
}

kcmaomfmkoehckhhljpkhdmdcgabmaigndajoncokkdoohjelpboggledcjoeffnAlto = 
\relative c' {
\clef "treble"
\numericTimeSignature\time 3/4
\key aes \major
\partial 4
es4 | es8 c8 es4 es4 | es8 des8 c4 es4 | es8 8 4 4 | es2 \bar ""
g4 | aes8 es8 4 4 | f8 des8 des4 f8( des8) | c8 8 4 des4 | c2 \bar "|."
}

kcmaomfmkoehckhhljpkhdmdcgabmaigndajoncokkdoohjelpboggledcjoeffnTenor = 
\relative g {
\clef "bass"
\numericTimeSignature\time 3/4
\key aes \major
\partial 4
es4 | es8 aes8 g4 4 | aes8 g8 aes4 g4 | aes8 aes8 bes4 aes4 | g2 \bar ""
bes4 | c8 aes8 4 4 | aes8 8 4 4 | aes8 8 4 g4 | aes2 \bar "|."
}

kcmaomfmkoehckhhljpkhdmdcgabmaigndajoncokkdoohjelpboggledcjoeffnBass = 
\relative d {
\clef "bass"
\numericTimeSignature\time 3/4
\key aes \major
\partial 4
es4 | c8 aes8 es'4 4 | aes8 es8 f4 es4 | aes8 8 g4 aes4 | es2 \bar ""
es4 | aes8 8 4 c,4 | des8 8 4 4 | es8 8 4 4 | aes,2 \bar "|."
}

\tocItem \markup "O For a Thousand Tongues To Sing"
\score {
    \header {
        title = "O For a Thousand Tongues To Sing"
        
        
        poet = "Charles Wesley"
        
        
        composer = "Charles Wesley"
        
        
    }
    <<
        \new ChoirStaff <<
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \kcmaomfmkoehckhhljpkhdmdcgabmaigndajoncokkdoohjelpboggledcjoeffnSoprano \kcmaomfmkoehckhhljpkhdmdcgabmaigndajoncokkdoohjelpboggledcjoeffnAlto }
\context NullVoice = "kcmaomfmkoehckhhljpkhdmdcgabmaigndajoncokkdoohjelpboggledcjoeffnSoprano" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \kcmaomfmkoehckhhljpkhdmdcgabmaigndajoncokkdoohjelpboggledcjoeffnSoprano
}
\context NullVoice = "kcmaomfmkoehckhhljpkhdmdcgabmaigndajoncokkdoohjelpboggledcjoeffnAlto" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \kcmaomfmkoehckhhljpkhdmdcgabmaigndajoncokkdoohjelpboggledcjoeffnAlto
}

		
                \new Lyrics \lyricsto "kcmaomfmkoehckhhljpkhdmdcgabmaigndajoncokkdoohjelpboggledcjoeffnSoprano" {
                  
                  \set stanza = "1."
                  
                  \lyricmode {
		    
                    O for a thou -- sand tongues to sing
my great Re -- deem -- er's praise,
the glo -- ries of my God and King,
the tri -- umphs of his grace!
		    
                  }
                }
		
                \new Lyrics \lyricsto "kcmaomfmkoehckhhljpkhdmdcgabmaigndajoncokkdoohjelpboggledcjoeffnSoprano" {
                  
                  \set stanza = "2."
                  
                  \lyricmode {
		    
                    My gra -- cious Mas -- ter and my God,
as -- sist me to pro -- claim,
to spread through all the earth a -- broad
the hon -- ors of your name.
		    
                  }
                }
		
                \new Lyrics \lyricsto "kcmaomfmkoehckhhljpkhdmdcgabmaigndajoncokkdoohjelpboggledcjoeffnSoprano" {
                  
                  \set stanza = "3."
                  
                  \lyricmode {
		    
                    Je -- sus! the name that charms our fears,
that bids our sor -- rows cease,
'tis mu -- sic in the sin -- ner's ears,
'tis life and health and peace.
		    
                  }
                }
		
        >>
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \kcmaomfmkoehckhhljpkhdmdcgabmaigndajoncokkdoohjelpboggledcjoeffnTenor \kcmaomfmkoehckhhljpkhdmdcgabmaigndajoncokkdoohjelpboggledcjoeffnBass }
\context NullVoice = "kcmaomfmkoehckhhljpkhdmdcgabmaigndajoncokkdoohjelpboggledcjoeffnTenor" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \kcmaomfmkoehckhhljpkhdmdcgabmaigndajoncokkdoohjelpboggledcjoeffnTenor
}
\context NullVoice = "kcmaomfmkoehckhhljpkhdmdcgabmaigndajoncokkdoohjelpboggledcjoeffnBass" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \kcmaomfmkoehckhhljpkhdmdcgabmaigndajoncokkdoohjelpboggledcjoeffnBass
}
        >>
    >>
    >>
}
\markup \column {
\line { \bold "4."
\column {
"He breaks the pow'r of cancelled sin,"
"he sets the pris'ner free;"
"his blood can make the foulest clean;"
"his blood availed for me."
}
}
}
\markup \column {
\line { \bold "5."
\column {
"To God all glory, praise, and love"
"be now and ever giv'n"
"by saints below and saints above,"
"the Church in earth and heav'n."
}
}
}
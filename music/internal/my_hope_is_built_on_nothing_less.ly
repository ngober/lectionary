\version "2.22.1"

dbfgpcomcpnicgjmpkiblpnnnkipebkkfkfkfmhkfkmphnpeepfkcncgbhlndjeiSoprano = 
\relative es' {
\clef "treble"
\numericTimeSignature\time 3/4
\key f \major
\partial 4
c4 | f8 a c4 a  | a8 g  g4 a | bes8 bes bes4 g  | f8 e  f4  \bar ""
c | f8 a  c4 a  | a8 g  g4 a | bes8 bes  bes4 g  | f8 e  f4\partial 4
\bar "||"\mark "Refrain"\partial 4
c' | c8 c  c4 c  | d8 d  d4 \bar ""
d | c8 a  a4 f | a8 a  g4 \bar ""
c, | f8 f  f4 a  | f8 e  f4  \bar "|."
}

dbfgpcomcpnicgjmpkiblpnnnkipebkkfkfkfmhkfkmphnpeepfkcncgbhlndjeiAlto = 
\relative c' {
\clef "treble"
\numericTimeSignature\time 3/4
\key f \major
\partial 4
c4 | c8 c f4 f | f8 e e4 f | f8 f f4 d | c8 c c4 \bar ""
c | c8 c f4 f | f8 e e4 f | f8 f f4 d | c8 c c4\partial 4
\bar "||"\partial 4
f | f8 e f4 f | f8 f f4 \bar ""
f | f8 f f4 f | f8 f e4 \bar ""
c | c8 c d4 c | g8 g c'4  \bar "|."
}

dbfgpcomcpnicgjmpkiblpnnnkipebkkfkfkfmhkfkmphnpeepfkcncgbhlndjeiTenor = 
\relative g {
\clef "bass"
\numericTimeSignature\time 3/4
\key f \major
\partial 4
a4 a8 a  a4 c  | c8 c  c4 c | d8 d  d4 bes  | a8 g  a4 \bar ""
a | a8 a  a4 c  | c8 c  c4 c | d8 d  d4 bes  | a8 g  a4\partial 4
\bar "||"\partial 4
a | a8 bes  c4 a  | bes8 bes bes4 \bar ""
bes| a8 c  c4 a  | c8 c  c4 \bar ""
bes | a8 f  bes4 f | c'8 bes  a4  \bar "|."
}

dbfgpcomcpnicgjmpkiblpnnnkipebkkfkfkfmhkfkmphnpeepfkcncgbhlndjeiBass = 
\relative d {
\clef "bass"
\numericTimeSignature\time 3/4
\key f \major
\partial 4
f4 f8 f f4 f | c8 c c4 f | bes,8 bes bes4 bes | c8 c f4 \bar ""
f | f8 f f4 f | c8 c c4 f | bes,8 bes bes4 bes | c8 c f4\partial 4
\bar "||"\partial 4
f | f8 g a4 f | bes8 bes bes4 \bar ""
bes | f8 f f4 f, | f8 a c4 \bar ""
bes | a8 a bes4 f' | c8 c f4  \bar "|."
}

\tocItem \markup "My Hope Is Built On Nothing Less"
\score {
    \header {
        title = "My Hope Is Built On Nothing Less"
        
        
        poet = "Edward Mote (1797-1874)"
        
        
        composer = "William B. Bradbury (1816-1868)"
        
        
    }
    <<
        \new ChoirStaff <<
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \dbfgpcomcpnicgjmpkiblpnnnkipebkkfkfkfmhkfkmphnpeepfkcncgbhlndjeiSoprano \dbfgpcomcpnicgjmpkiblpnnnkipebkkfkfkfmhkfkmphnpeepfkcncgbhlndjeiAlto }
\context NullVoice = "dbfgpcomcpnicgjmpkiblpnnnkipebkkfkfkfmhkfkmphnpeepfkcncgbhlndjeiSoprano" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \dbfgpcomcpnicgjmpkiblpnnnkipebkkfkfkfmhkfkmphnpeepfkcncgbhlndjeiSoprano
}
\context NullVoice = "dbfgpcomcpnicgjmpkiblpnnnkipebkkfkfkfmhkfkmphnpeepfkcncgbhlndjeiAlto" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \dbfgpcomcpnicgjmpkiblpnnnkipebkkfkfkfmhkfkmphnpeepfkcncgbhlndjeiAlto
}

		
                \new Lyrics \lyricsto "dbfgpcomcpnicgjmpkiblpnnnkipebkkfkfkfmhkfkmphnpeepfkcncgbhlndjeiSoprano" {
                  
                  \set stanza = "1."
                  
                  \lyricmode {
		    
                    My hope is built on noth -- ing less
than Je -- sus' blood and right -- eous -- ness;
I dare not trust the sweet -- est frame,
but whol -- ly lean on Je -- sus' name.
		    
                    On Christ, the sol -- id Rock, I stand:
all oth -- er ground is sink -- ing sand;
all oth -- er ground is sink -- ing sand.
		    
                  }
                }
		
                \new Lyrics \lyricsto "dbfgpcomcpnicgjmpkiblpnnnkipebkkfkfkfmhkfkmphnpeepfkcncgbhlndjeiSoprano" {
                  
                  \set stanza = "2."
                  
                  \lyricmode {
		    
                    When dark -- ness veils his love -- ly face,
I rest on his un -- chang -- ing grace;
in ev -- ery high and stor -- my gale,
my an -- chor holds with -- in the veil.
		    
		    
                  }
                }
		
                \new Lyrics \lyricsto "dbfgpcomcpnicgjmpkiblpnnnkipebkkfkfkfmhkfkmphnpeepfkcncgbhlndjeiSoprano" {
                  
                  \set stanza = "3."
                  
                  \lyricmode {
		    
                    His oath, his co -- ve -- nant, his blood,
sup -- port me in the whelm -- ing flood;
when all a -- round my soul gives way,
he then is all my hope and stay.
		    
		    
                  }
                }
		
        >>
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \dbfgpcomcpnicgjmpkiblpnnnkipebkkfkfkfmhkfkmphnpeepfkcncgbhlndjeiTenor \dbfgpcomcpnicgjmpkiblpnnnkipebkkfkfkfmhkfkmphnpeepfkcncgbhlndjeiBass }
\context NullVoice = "dbfgpcomcpnicgjmpkiblpnnnkipebkkfkfkfmhkfkmphnpeepfkcncgbhlndjeiTenor" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \dbfgpcomcpnicgjmpkiblpnnnkipebkkfkfkfmhkfkmphnpeepfkcncgbhlndjeiTenor
}
\context NullVoice = "dbfgpcomcpnicgjmpkiblpnnnkipebkkfkfkfmhkfkmphnpeepfkcncgbhlndjeiBass" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \dbfgpcomcpnicgjmpkiblpnnnkipebkkfkfkfmhkfkmphnpeepfkcncgbhlndjeiBass
}
        >>
    >>
    >>
}
\markup \column {
\line { \bold "4."
\column {
"When he shall come with trumpet sound,"
"O may I then in him be found:"
"dressed in his righteousness alone,"
"faultless to stand before the throne."
}
}
}
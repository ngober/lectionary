\version "2.22.1"

jjdnooibpeidfnmjnajlfagfakbjclnfbhlkijpljgjkhiiklcllndacfnjmpobfSoprano = 
\relative es' {
\clef "treble"
\numericTimeSignature\time 3/4
\key es \major

es4 es4 f8( es8) | c4 bes4 c4 |  es4 es4 f4 |  g2. |  f4 f4 f4 |  f4 g4 bes4 |  c4 bes4 g4 |  bes2. |  c4 c8( d8) es8( d8) |  \slurDashed c4( bes4) g4 |  bes4 es,4 d4 |  \slurSolid c2( bes4) |  es4 g4 bes4 |  c8( bes8) g4 es8( g8) |  f4 es4 es4 |  es2. \bar "|."
}

jjdnooibpeidfnmjnajlfagfakbjclnfbhlkijpljgjkhiiklcllndacfnjmpobfAlto = 
\relative c' {
\clef "treble"
\numericTimeSignature\time 3/4
\key es \major

bes4 bes4 bes4 |  aes4 bes4 c4 |  bes4 c4 d4 |  es2. |  d4 d4 es4 |  f4 es4 es4 |  es4 es4 es4 |  f2. |  aes4 es4 es4 |  \slurDashed es4( es4) f4 |  es4 c bes4 |  \slurSolid aes2( bes4) |  bes4 es4 f4 |  es4 es4 d4 |  c4 c4 aes4 |  bes2. \bar "|."
}

jjdnooibpeidfnmjnajlfagfakbjclnfbhlkijpljgjkhiiklcllndacfnjmpobfTenor = 
\relative g {
\clef "bass"
\numericTimeSignature\time 3/4
\key es \major

g4 g4 es4 |  es4 d4 es4 |  es4 g4 bes4 |  bes2. |  bes4 bes4 a4 |  bes4 bes4 bes4 |  aes4 bes4 c4 |  d2. |  es4 c8( bes8) aes4 |  \slurDashed aes4( g4) bes4 |  g4 g4 f4 |  \slurSolid es2( f4) |  g4 bes4 bes4 |  g4 bes4 bes4 |  aes4 aes4 f4 |  <es g>2. \bar "|."
}

jjdnooibpeidfnmjnajlfagfakbjclnfbhlkijpljgjkhiiklcllndacfnjmpobfBass = 
\relative d {
\clef "bass"
\numericTimeSignature\time 3/4
\key es \major

es4 es4 g,4 |  aes4 bes4 aes4 |  g4 c4 bes4 |  es2. |  bes4 bes4 c4 |  d4 es4 g4 |  aes4 g4 c4 |  bes2. |  aes,4 aes4 c4 |  \slurDashed es4( es4) d4 |  c4 c4 g4 |  \slurSolid aes4( c4 d4) |  es4 es4 d4 |  c4 bes4 g4 |  aes4 <aes es'>4 <f c'>4 |  <es bes'>2. \bar "|."
}

\tocItem \markup "Be Thou My Vision"
\score {
    \header {
        title = "Be Thou My Vision"
        
        
        poet = "Mary E. Byrne (1880-1931)"
        
        
        composer = "Ancient Irish Tune"
        
        
    }
    <<
        \new ChoirStaff <<
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \jjdnooibpeidfnmjnajlfagfakbjclnfbhlkijpljgjkhiiklcllndacfnjmpobfSoprano \jjdnooibpeidfnmjnajlfagfakbjclnfbhlkijpljgjkhiiklcllndacfnjmpobfAlto }
\context NullVoice = "jjdnooibpeidfnmjnajlfagfakbjclnfbhlkijpljgjkhiiklcllndacfnjmpobfSoprano" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \jjdnooibpeidfnmjnajlfagfakbjclnfbhlkijpljgjkhiiklcllndacfnjmpobfSoprano
}
\context NullVoice = "jjdnooibpeidfnmjnajlfagfakbjclnfbhlkijpljgjkhiiklcllndacfnjmpobfAlto" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \jjdnooibpeidfnmjnajlfagfakbjclnfbhlkijpljgjkhiiklcllndacfnjmpobfAlto
}

		
                \new Lyrics \lyricsto "jjdnooibpeidfnmjnajlfagfakbjclnfbhlkijpljgjkhiiklcllndacfnjmpobfSoprano" {
                  
                  \set stanza = "1."
                  
                  \lyricmode {
		    
                    Be thou my vi -- sion, Oh Lord of my heart;
Naught be all else to me save that thou art.
Thou my best thought by day and by night;
Wak -- ing or sleep -- ing, thy pres -- ence my light
		    
                  }
                }
		
                \new Lyrics \lyricsto "jjdnooibpeidfnmjnajlfagfakbjclnfbhlkijpljgjkhiiklcllndacfnjmpobfSoprano" {
                  
                  \set stanza = "2."
                  
                  \lyricmode {
		    
                    Be thou my wis -- dom, and thou my true Word;
I ev -- er with thee and thou with me, Lord.
Thou my great
\set ignoreMelismata = ##t
Fa -- ther,
\unset ignoreMelismata
and I thy dear child;
Thou in me dwelling, with thee rec -- on -- ciled.
		    
                  }
                }
		
                \new Lyrics \lyricsto "jjdnooibpeidfnmjnajlfagfakbjclnfbhlkijpljgjkhiiklcllndacfnjmpobfSoprano" {
                  
                  \set stanza = "3."
                  
                  \lyricmode {
		    
                    Rich -- es I heed not, nor vain, emp -- ty praise;
Thou mine in -- her -- i -- tance now and al -- ways.
Thou and thou on -- ly, first in my heart,
High King of Heav -- en, my trea -- sure thou art.
		    
                  }
                }
		
        >>
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \jjdnooibpeidfnmjnajlfagfakbjclnfbhlkijpljgjkhiiklcllndacfnjmpobfTenor \jjdnooibpeidfnmjnajlfagfakbjclnfbhlkijpljgjkhiiklcllndacfnjmpobfBass }
\context NullVoice = "jjdnooibpeidfnmjnajlfagfakbjclnfbhlkijpljgjkhiiklcllndacfnjmpobfTenor" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \jjdnooibpeidfnmjnajlfagfakbjclnfbhlkijpljgjkhiiklcllndacfnjmpobfTenor
}
\context NullVoice = "jjdnooibpeidfnmjnajlfagfakbjclnfbhlkijpljgjkhiiklcllndacfnjmpobfBass" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \jjdnooibpeidfnmjnajlfagfakbjclnfbhlkijpljgjkhiiklcllndacfnjmpobfBass
}
        >>
    >>
    >>
}
\markup \column {
\line { \bold "4."
\column {
"High King of Heaven, my victory won,"
"May I reach Heaven's joys, Oh bright Heaven's Sun!"
"Heart of my heart, whatever befall,"
"Still be my vision, Oh Ruler of all."
}
}
}
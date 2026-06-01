\version "2.22.1"

imfgjooeomhaeifmfjclmimnigjjdkiejcifabifkkemhgciklapcplfkfgilgeaSoprano = 
\relative es' {
\clef "treble"
\numericTimeSignature\time 4/4
\key d \major
\partial 4.
d8 d8 fis8 | fis4 r8 fis8 fis8 e8 e8 d8 | d4 b4 r8 \bar ""
d8 d8 fis8 | fis4 r8 fis8 fis8 d8 a'8 fis8 | e2 r8 \bar ""
d8 d8 fis8 | fis4 r8 fis8 fis8 e8 e8 d8 | d4 b4 r8 \bar ""
d8 d8 fis8 | fis4 r8 fis8 fis8 e8 e8 d8 | d2 r8 \bar ""
fis8 fis8 b8 | b4 r8 b8 b8 a8 a8 g8 | fis8( a8) a4 r4 \bar ""
d8 cis8 | b4. a8 a8 a8 a8 fis8 | e2 ~ e8 r8 \bar ""
fis8 e8 | d4 d8 e8 e4 e8 fis8 | fis4 d'8 cis8 b4 \bar ""
a8 g8 | fis4 d8 e8 e4. d8 | d2 r2 \bar "|."
}

imfgjooeomhaeifmfjclmimnigjjdkiejcifabifkkemhgciklapcplfkfgilgeaAlto = 
\relative c' {
\clef "treble"
\numericTimeSignature\time 4/4
\key d \major
\partial 4.
a8 a8 d8 | d4 r8 d8 d8 cis8 cis8 b8 | b4 g4 r8 \bar ""
a8 a8 d8 | d4 r8 d8 d8 a8 fis'8 d8 | cis2 r8 \bar ""
a8 a8 d8 | d4 r8 d8 d8 cis8 cis8 b8 | b4 g4 r8 \bar ""
a8 a8 d8 | d4 r8 d8 d8 b8 b8 a8 | a2 r8 \bar ""
d8 d8 g8 | g4 r8 g8 g8 fis8 fis8 e8 | d8( fis8) fis4 r4 \bar ""
a8 a8 | g4. fis8 fis8 fis8 fis8 d8 | d2 ( cis8 ) r8 \bar ""
d8 b8 | a4 a8 b8 b4 b8 d8 | d4 a'8 a8 g4 \bar ""
fis8 e8 | d4 a8 d8 cis4. a8 | a2 r2 \bar "|."
}

imfgjooeomhaeifmfjclmimnigjjdkiejcifabifkkemhgciklapcplfkfgilgeaTenor = 
\relative g {
\clef "bass"
\numericTimeSignature\time 4/4
\key d \major
\partial 4.
fis8 fis8 a8 | a4 r8 a8 a8 a8 a8 a8 | g4 d4 r8 \bar ""
fis8 fis8 a8 | a4 r8 a8 a8 fis8 d'8 b8 | a2 r8 \bar ""
fis8 fis8 a8 | a4 r8 a8 a8 a8 a8 a8 | g4 d4 r8 \bar ""
fis8 fis8 a8 | a4 r8 a8 a8 g8 g8 fis8 | fis2 r8 \bar ""
a8 a8 d8 | d4 r8 d8 d8 d8 d8 b8 | a8( d8) d4 r4 \bar ""
fis8 e8 | d4. d8 d8 d8 d8 b8 | a2 ~ ~ a8 r8 \bar ""
a8 g8 | fis4 fis8 g8 g4 g8 a8 | a4 fis'8 e8 d4 \bar ""
d8 b8 | a4 fis8 g8 a4. g8 | fis2 r2 \bar "|."
}

imfgjooeomhaeifmfjclmimnigjjdkiejcifabifkkemhgciklapcplfkfgilgeaBass = 
\relative d {
\clef "bass"
\numericTimeSignature\time 4/4
\key d \major
\partial 4.
a8 a8 a8 | d4 r8 d8 d8 d8 fis8 fis8 | g,4 g4 r8 \bar ""
a8 a8 a8 | d4 r8 d8 d8 d8 b8 b8 | a2 r8 \bar ""
a8 a8 a8 | d4 r8 d8 d8 d8 fis,8 fis8 | g4 g4 r8 \bar ""
a8 a8 a8 | d4 r8 d8 a8 a8 a8 a8 | d2 r8 \bar ""
d8 d8 d8 | g4 r8 g8 g8 g8 g8 g8 | d4 d4 r4 \bar ""
fis8 fis8 | g4. g8 d8 d8 d8 d8 | a2 ~ ~ a8 r8 \bar ""
a8 a8 | d4 d8 d8 e4 e8 e8 | fis4 fis8 fis8 g4 \bar ""
g,8 g8 | a4 a8 a8 a4. a8 | d2 r2 \bar "|."
}

\tocItem \markup "Yet Not I But Through Christ In Me"
\score {
    \header {
        title = "Yet Not I But Through Christ In Me"
        
        
        
        composer = "Composer / arranger"
        
        
    }
    <<
        \new ChoirStaff <<
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \imfgjooeomhaeifmfjclmimnigjjdkiejcifabifkkemhgciklapcplfkfgilgeaSoprano \imfgjooeomhaeifmfjclmimnigjjdkiejcifabifkkemhgciklapcplfkfgilgeaAlto }
\context NullVoice = "imfgjooeomhaeifmfjclmimnigjjdkiejcifabifkkemhgciklapcplfkfgilgeaSoprano" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \imfgjooeomhaeifmfjclmimnigjjdkiejcifabifkkemhgciklapcplfkfgilgeaSoprano
}
\context NullVoice = "imfgjooeomhaeifmfjclmimnigjjdkiejcifabifkkemhgciklapcplfkfgilgeaAlto" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \imfgjooeomhaeifmfjclmimnigjjdkiejcifabifkkemhgciklapcplfkfgilgeaAlto
}

		
                \new Lyrics \lyricsto "imfgjooeomhaeifmfjclmimnigjjdkiejcifabifkkemhgciklapcplfkfgilgeaSoprano" {
                  
                  \set stanza = "1."
                  
                  \lyricmode {
		    
                    What gift of grace is Je -- sus my re -- deem -- er
there is no more for Heav -- en now to give.
He is my joy, my right -- eous -- ness and free -- dom,
my stead -- fast love, my deep and bound -- less peace.
To this I hold, my hope is on -- ly Je -- sus
for my life is whol -- ly bound to His.
Oh how strange and di -- vine, I can sing: all is mine!
Yet not I, but through Christ in me.
		    
                  }
                }
		
                \new Lyrics \lyricsto "imfgjooeomhaeifmfjclmimnigjjdkiejcifabifkkemhgciklapcplfkfgilgeaSoprano" {
                  
                  \set stanza = "2."
                  
                  \lyricmode {
		    
                    The night is dark, but I am not for -- sak -- en,
for by my side, the Sav -- ior, he will stay.
I la -- bor on in weak -- ness and re -- joic -- ing
for in my need, His pow -- er is dis -- played.
To this I hold, my Shep -- herd will de -- fend me
through the deep -- est val -- ley He will lead.
Oh the night has been won, and I shall o -- ver -- come!
Yet not I, but through Christ in me.
		    
                  }
                }
		
                \new Lyrics \lyricsto "imfgjooeomhaeifmfjclmimnigjjdkiejcifabifkkemhgciklapcplfkfgilgeaSoprano" {
                  
                  \set stanza = "3."
                  
                  \lyricmode {
		    
                    No fate I dread, I know I am for -- giv -- en
The fu -- ture sure, the price, it has been paid.
For Je -- sus bled and suf -- fered for my par -- don,
and He was raised to o -- ver -- throw the grave.
To this I hold, my sin has been de -- feat -- ed.
Je -- sus now and ev -- er is my plea.
Oh the chains are re -- leased, I can sing, I am free!
Yet not I, but through Christ in me.
		    
                  }
                }
		
        >>
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \imfgjooeomhaeifmfjclmimnigjjdkiejcifabifkkemhgciklapcplfkfgilgeaTenor \imfgjooeomhaeifmfjclmimnigjjdkiejcifabifkkemhgciklapcplfkfgilgeaBass }
\context NullVoice = "imfgjooeomhaeifmfjclmimnigjjdkiejcifabifkkemhgciklapcplfkfgilgeaTenor" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \imfgjooeomhaeifmfjclmimnigjjdkiejcifabifkkemhgciklapcplfkfgilgeaTenor
}
\context NullVoice = "imfgjooeomhaeifmfjclmimnigjjdkiejcifabifkkemhgciklapcplfkfgilgeaBass" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \imfgjooeomhaeifmfjclmimnigjjdkiejcifabifkkemhgciklapcplfkfgilgeaBass
}
        >>
    >>
    >>
}
\markup \column {
\line { \bold "4."
\column {
"With every breath, I long to follow Jesus,"
"for He has said that He will bring me home."
"And day by day, I know He will renew me,"
"until I stand with joy before the throne."
"To this I hold, my hope is only Jesus."
"All the glory evermore to Him. "
"When the race is complete still my lips shall repeat:"
"Yet not I, but through Christ in me."
}
}
}
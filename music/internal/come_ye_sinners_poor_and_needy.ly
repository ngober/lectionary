\version "2.22.1"

afegmgkhkpfgmbhnpkobggangdfmgggiehmkkaohndchndgifdejejejejhfkpeeSoprano = 
\relative es' {
\clef "treble"
\numericTimeSignature\time 4/4
\key as \major

f4 as4 f4 es8( f8) | as4 as4 f8( es8) c4 |
es4 es4 f4 es8( f8) | as4 bes4 c2 |
c4 es4 c8( bes8) as4 | bes4 c4 as8( f8) es4 |
f4. as8 f8( es8) c8( bes8) | c4 es4 f2
\bar "||"\mark "Refrain"
f4 as8 as8 f4 es8( f8) | as4 as4 f8( es8) c4 |
es4 es8 es8 f4 es8( f8) | as4 bes4 c2 |
c4 es4 c8( bes8) as4 | bes4 c4 as8( f8) es4 |
f4. as8 f8( es8) c8( bes8) | c4 es4 f2 \bar "|."
}

afegmgkhkpfgmbhnpkobggangdfmgggiehmkkaohndchndgifdejejejejhfkpeeAlto = 
\relative c' {
\clef "treble"
\numericTimeSignature\time 4/4
\key as \major

c4 c des des  | c4 c des c  |
c4 c des es | c4 es es2 |
es4 es aes8( g) f4 | es4 es c c |
c4. es8 des8( bes) c8( bes) | c4 bes c2
\bar "||"
c4 c8 c des4 des | c4 c des c |
c4 c8 c des4 es | c4 es es2 |
es4 es aes8( g) f4 | es4 es c c |
c4. es8 des8( bes) c8( bes) | c4 bes c2 \bar "|."
}

afegmgkhkpfgmbhnpkobggangdfmgggiehmkkaohndchndgifdejejejejhfkpeeTenor = 
\relative g {
\clef "bass"
\numericTimeSignature\time 4/4
\key as \major

aes4 aes aes aes | aes4 aes aes aes |
aes4 aes aes aes | aes4 g aes2 |
aes4 bes c c | bes4 aes aes g |
aes4. aes8 aes8( g) aes( g) | aes4 bes aes2
\bar "||"
aes4 aes8 aes aes4 aes | aes4 aes aes aes |
aes4 aes8 aes aes4 aes | aes4 g aes2 |
aes4 bes c c | bes4 aes aes g |
aes4. aes8 aes8( g) aes( g) | aes4 bes aes2 \bar "|."
}

afegmgkhkpfgmbhnpkobggangdfmgggiehmkkaohndchndgifdejejejejhfkpeeBass = 
\relative d {
\clef "bass"
\numericTimeSignature\time 4/4
\key as \major

f4 f f f | f4 f des aes |
aes4 aes des c | f4 es aes,2 |
aes'4 g f f | g4 aes f c |
f4. c8 des8( es) f8( g) | aes4 g f2
\bar "||"
f4 f8 f f4 f | f4 f des g |
g4 g8 g des4 c | f4 es g2 |
aes4 g f f | g4 aes f c |
f4. c8 des8( es) f( g) | aes4 g f2 \bar "|."
}

\tocItem \markup "Come, Ye Sinners, Poor and Needy"
\score {
    \header {
        title = "Come, Ye Sinners, Poor and Needy"
        
        
        poet = "Joseph Hart (1712-1768)"
        
        
        composer = "Walker's \"Southern Harmony\", 1835"
        
        
    }
    <<
        \new ChoirStaff <<
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \afegmgkhkpfgmbhnpkobggangdfmgggiehmkkaohndchndgifdejejejejhfkpeeSoprano \afegmgkhkpfgmbhnpkobggangdfmgggiehmkkaohndchndgifdejejejejhfkpeeAlto }
\context NullVoice = "afegmgkhkpfgmbhnpkobggangdfmgggiehmkkaohndchndgifdejejejejhfkpeeSoprano" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \afegmgkhkpfgmbhnpkobggangdfmgggiehmkkaohndchndgifdejejejejhfkpeeSoprano
}
\context NullVoice = "afegmgkhkpfgmbhnpkobggangdfmgggiehmkkaohndchndgifdejejejejhfkpeeAlto" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \afegmgkhkpfgmbhnpkobggangdfmgggiehmkkaohndchndgifdejejejejhfkpeeAlto
}

		
                \new Lyrics \lyricsto "afegmgkhkpfgmbhnpkobggangdfmgggiehmkkaohndchndgifdejejejejhfkpeeSoprano" {
                  
                  \set stanza = "1."
                  
                  \lyricmode {
		    
                    Come ye sin -- ners, poor and nee -- dy,
Weak and wound -- ed, sick and sore;
Je -- sus rea -- dy stands to save you,
Full of pi -- ty, love and pow'r.
		    
                    I will a -- rise and go to Je -- sus,
He will em -- brace me in His arms;
In the arms of my dear Sav -- ior,
O there are ten thou -- sand charms.
		    
                  }
                }
		
                \new Lyrics \lyricsto "afegmgkhkpfgmbhnpkobggangdfmgggiehmkkaohndchndgifdejejejejhfkpeeSoprano" {
                  
                  \set stanza = "2."
                  
                  \lyricmode {
		    
                    Come, ye thir -- sty, come and wel -- come,
God's free boun -- ty glo -- ri -- fy;
True be -- lief and true re -- pen -- tance,
Ev -- ery grace that brings you nigh.
		    
		    
                  }
                }
		
                \new Lyrics \lyricsto "afegmgkhkpfgmbhnpkobggangdfmgggiehmkkaohndchndgifdejejejejhfkpeeSoprano" {
                  
                  \set stanza = "3."
                  
                  \lyricmode {
		    
                    Come ye wea -- ry, hea -- vy la -- den,
Lost and ru -- ined by the fall;
If you tar -- ry till you're bet -- ter,
You will nev -- er come at all.
		    
		    
                  }
                }
		
        >>
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \afegmgkhkpfgmbhnpkobggangdfmgggiehmkkaohndchndgifdejejejejhfkpeeTenor \afegmgkhkpfgmbhnpkobggangdfmgggiehmkkaohndchndgifdejejejejhfkpeeBass }
\context NullVoice = "afegmgkhkpfgmbhnpkobggangdfmgggiehmkkaohndchndgifdejejejejhfkpeeTenor" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \afegmgkhkpfgmbhnpkobggangdfmgggiehmkkaohndchndgifdejejejejhfkpeeTenor
}
\context NullVoice = "afegmgkhkpfgmbhnpkobggangdfmgggiehmkkaohndchndgifdejejejejhfkpeeBass" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \afegmgkhkpfgmbhnpkobggangdfmgggiehmkkaohndchndgifdejejejejhfkpeeBass
}
        >>
    >>
    >>
}
\markup \column {
\line { \bold "4."
\column {
"Let not conscience  make you linger,"
"Nor of fitness fondly dream;"
"All the fitness He requireth"
"Is to feel your  need of Him."
}
}
}
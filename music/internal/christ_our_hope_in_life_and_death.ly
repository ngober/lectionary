\version "2.22.1"

nhmacefcgheegnpnobemgphmjjhdpbdpiaaepmipmhjgpcfgjpenbmdgdjajaimlSoprano = 
\relative es' {
\clef "treble"
\numericTimeSignature\time 3/4
\key f \major
\partial 4.
c8 f a | a4. a8 g f | f2 bes8. a16 | a2 a8. g16 | g4. \bar ""
c,8 f a | a4. a8 g f | f2 bes8. a16 | a4. g8 g f | f4. \bar ""
f8 a c | c4. a8 g f | a4. f8 g a | bes4. a8 g f | d4. \bar ""
c8 f a | a4. a8 g f | f4. bes8 bes a | a4. g8 g f | f2\partial 4
\bar "||"\partial 4
f4 | f4 d'4. c8 | c4 a4. f8 | g4 c4. bes8 | bes4 a \bar ""
g4 | f4 d'4. c8 | c4 a4 bes8. a16 | a8. g16 g8. f16 d4 |
bes'8. a16 a8. g16 g8. f16 | f4. \bar "|."
}

nhmacefcgheegnpnobemgphmjjhdpbdpiaaepmipmhjgpcfgjpenbmdgdjajaimlAlto = 
\relative c' {
\clef "treble"
\numericTimeSignature\time 3/4
\key f \major
\partial 4.
c8 f f | f4. f8 e c | d2 f8. 16 | f2 f8. e16 | e4. \bar ""
c8 f f | f4. f8 e c | d2 f8. 16 | f4. d8 d c | c4. \bar ""
c8 f e | f4. e8 e c | f4. d8 e f | f4. f8 e d | bes4. \bar ""
c8 f f | f4. f8 e c | d4. f8 f f | f4. d8 d c | c2\partial 4
\bar "||"\partial 4
c4 | d4 f4. a8 | a4 f4. c8 | c4 e4. e8 | e4 f \bar ""
e4 | d4 f4. a8 | a4 f4 d8. d16 | f8. f16 c8. c16 a4 |
c8. 16 d8. 16 c8. 16 | c4. \bar "|."
}

nhmacefcgheegnpnobemgphmjjhdpbdpiaaepmipmhjgpcfgjpenbmdgdjajaimlTenor = 
\relative g {
\clef "bass"
\numericTimeSignature\time 3/4
\key f \major
\partial 4.
c8 c c | c4. c8 a a | a2 d8. c16 | c2 c8. 16 | c4. \bar ""
c8 c c | c4. c8 a a | a2 d8. c16 | c4. bes8 8 8 | a4. \bar ""
a8 c bes | a4. c8 c a | c4. a8 bes c | d4. d8 c a | f4. \bar ""
c'8 c c | c4. c8 a a | a4. d8 d c | c4. bes8 8 8 | a2\partial 4
\bar "||"\partial 4
a4 | a4 d4. f8 | f4 c4. a8 | g4 g4. g8 | g4 c \bar ""
a4 | a4 d4. f8 | f4 c4 bes8. 16 | c8. 16 g8. 16 f4 |
e8. 16 g8. 16 bes8. 16 | a4. \bar "|."
}

nhmacefcgheegnpnobemgphmjjhdpbdpiaaepmipmhjgpcfgjpenbmdgdjajaimlBass = 
\relative d {
\clef "bass"
\numericTimeSignature\time 3/4
\key f \major
\partial 4.
c8 f a | f4. f8 f e | d2 g8. a16 | f2 d8. c16 | c4. \bar ""
c8 f a | f4. f8 f e | d2 g8. a16 | f4. c8 c c | f4. \bar ""
f8 f c | d4. a8 bes c | d4. d8 d d | g4. d8 a a | bes4. \bar ""
c8 f a | f4. c8 cis cis | d4. bes8 bes c | c4. c8 c c | f2\partial 4
\bar "||"\partial 4
e4 | d4 bes'4. a8 | a4 f4. f8 | e4 c4. e8 | e4 f4 \bar ""
e4 | d4 bes'4. a8 | a4 f4 g8. 16 | f8. 16 e8. 16 d4 |
c8. 16 bes8. 16 c8. 16 | f4. \bar "|."
}

\tocItem \markup "Christ Our Hope In Life and Death"
\score {
    \header {
        title = "Christ Our Hope In Life and Death"
        
        
        poet = "Keith Getty"
        
        
        
        arranger = "arr. Nathan Gober"
        
    }
    <<
        \new ChoirStaff <<
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \nhmacefcgheegnpnobemgphmjjhdpbdpiaaepmipmhjgpcfgjpenbmdgdjajaimlSoprano \nhmacefcgheegnpnobemgphmjjhdpbdpiaaepmipmhjgpcfgjpenbmdgdjajaimlAlto }
\context NullVoice = "nhmacefcgheegnpnobemgphmjjhdpbdpiaaepmipmhjgpcfgjpenbmdgdjajaimlSoprano" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \nhmacefcgheegnpnobemgphmjjhdpbdpiaaepmipmhjgpcfgjpenbmdgdjajaimlSoprano
}
\context NullVoice = "nhmacefcgheegnpnobemgphmjjhdpbdpiaaepmipmhjgpcfgjpenbmdgdjajaimlAlto" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \nhmacefcgheegnpnobemgphmjjhdpbdpiaaepmipmhjgpcfgjpenbmdgdjajaimlAlto
}

		
                \new Lyrics \lyricsto "nhmacefcgheegnpnobemgphmjjhdpbdpiaaepmipmhjgpcfgjpenbmdgdjajaimlSoprano" {
                  
                  \set stanza = "1."
                  
                  \lyricmode {
		    
                    What is our hope in life and death? Christ a -- lone! Christ a -- lone!
What is our on -- ly con -- fi -- dence? That our souls to him be -- long.
Who holds our days with -- in his hand? What comes, a -- part from his com -- mand?
And what will keep us to the end? The love of Christ in which we stand.
		    
                    Oh sing hal -- le -- lu -- jah! Our hope springs e -- ter -- nal. Oh sing hal -- le -- lu -- jah! Now and ev -- er we con -- fess Christ our hope in life and death.
		    
                  }
                }
		
                \new Lyrics \lyricsto "nhmacefcgheegnpnobemgphmjjhdpbdpiaaepmipmhjgpcfgjpenbmdgdjajaimlSoprano" {
                  
                  \set stanza = "2."
                  
                  \lyricmode {
		    
                    What truth can calm the trou -- bled soul? God is good! God is good!
Where is his grace and good -- ness known? In our great re -- deem -- er's blood.
Who holds our faith when fears a -- rise? Who stands a -- bove the stor -- my "trial?"
Who sends the waves that bring us nigh un -- to the shore, the rock of Christ?
		    
		    
                  }
                }
		
                \new Lyrics \lyricsto "nhmacefcgheegnpnobemgphmjjhdpbdpiaaepmipmhjgpcfgjpenbmdgdjajaimlSoprano" {
                  
                  \set stanza = "3."
                  
                  \lyricmode {
		    
                    Un -- to the grave, what will we sing? "\"Christ," he "lives!\"" "\"Christ," he "lives!\""
And what re -- ward will heav -- en bring? Ev -- er -- last -- ing life with him.
There we will rise to meet the Lord, then sin and death will be de -- stroyed.
And we will feast in end -- less joy, when Christ is ours for -- ev -- er -- more!
		    
		    
                  }
                }
		
        >>
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \nhmacefcgheegnpnobemgphmjjhdpbdpiaaepmipmhjgpcfgjpenbmdgdjajaimlTenor \nhmacefcgheegnpnobemgphmjjhdpbdpiaaepmipmhjgpcfgjpenbmdgdjajaimlBass }
\context NullVoice = "nhmacefcgheegnpnobemgphmjjhdpbdpiaaepmipmhjgpcfgjpenbmdgdjajaimlTenor" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \nhmacefcgheegnpnobemgphmjjhdpbdpiaaepmipmhjgpcfgjpenbmdgdjajaimlTenor
}
\context NullVoice = "nhmacefcgheegnpnobemgphmjjhdpbdpiaaepmipmhjgpcfgjpenbmdgdjajaimlBass" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \nhmacefcgheegnpnobemgphmjjhdpbdpiaaepmipmhjgpcfgjpenbmdgdjajaimlBass
}
        >>
    >>
    >>
}
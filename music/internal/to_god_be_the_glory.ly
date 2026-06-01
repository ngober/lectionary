\version "2.22.1"

dipieeggepijcchlfddppcfckchdabokebldofgeehajogffecpifjlioiaomnbcSoprano = 
\relative es' {
\clef "treble"
\numericTimeSignature\time 3/4
\key g \major
\partial 4
d4 | d2 e8 fis | g4 d g | a4 d, a' | b2 \bar ""
b4 | c4 e, c' | b4 g b | b4 a e | a2 \bar ""
d,4 | d2 e8 fis | g4 d g | a4 d, a' | b2 \bar ""
b4 | d4 c a | g4 fis g | b4 b a | g2\partial 4
\bar "||"\mark "Refrain"\partial 4
b8. c16 | d2 b8. c16 | d2 d8. b16 | g4 a b | a2 \bar ""
a8. b16 | c2 a8. b16 | c2 c8 a | d4 d c | b2 \bar ""
d,4 | d2 e8 fis | g4 d g | a4 d, a' | b2 \bar ""
b4 | d4 c a | g4 fis g | b4 b a | g2 \bar "|."
}

dipieeggepijcchlfddppcfckchdabokebldofgeehajogffecpifjlioiaomnbcAlto = 
\relative c' {
\clef "treble"
\numericTimeSignature\time 3/4
\key g \major
\partial 4
b4 | b4( d) c8 c | b4 b d | d4 4 4 | d2 \bar ""
d4 | e4 c e | d4 4 4 | cis4 cis e | d2 \bar ""
c4 | b4( d) c8 c | b4 b d | d4 4 4 | d2 \bar ""
f4 | e4 4 4 | d4 4 4 | d4 4 c | d2\partial 4
\bar "||"\partial 4
d8. 16 | g2 d8. 16 | g2 d8. 16 | d4 4 4 | d2 \bar ""
d8. 16 | d2 d8. 16 | d2 d8 8 | d4 4 4 | d2 \bar ""
b4 | b4( d) c8 8 | b4 b d | d4 d d | d2 \bar ""
f4 | e4 4 4 | d4 4 4 | d4 4 c | b2 \bar "|."
}

dipieeggepijcchlfddppcfckchdabokebldofgeehajogffecpifjlioiaomnbcTenor = 
\relative g {
\clef "bass"
\numericTimeSignature\time 3/4
\key g \major
\partial 4
g4 | g2 fis8 d | d4 g4 g | fis4 4 4 | g2 \bar ""
g4 | g4 4 4 | g4 4 4 | e4 4 a8( g) | fis2 \bar ""
fis4 | g2 fis8 d | d4 g4 g | fis4 4 4 | g2 \bar ""
g4 | g4 a c | b4 a b | g4 g fis | g2\partial 4
\bar "||"\partial 4
g8. a16 | b2 g8. a16 | b2 b8. g16 | g4 fis g | fis2 \bar ""
fis8. g16 | a2 fis8. g16 | a2 a8 fis8 | g4 g fis | g2 \bar ""
g4 | g2 fis8 d | d4 g g | fis4 4 4 | g2 \bar ""
g4 | g4 a c | b4 a b | g4 g fis | g2 \bar "|."
}

dipieeggepijcchlfddppcfckchdabokebldofgeehajogffecpifjlioiaomnbcBass = 
\relative d {
\clef "bass"
\numericTimeSignature\time 3/4
\key g \major
\partial 4
g,4 | g4( b) d8 8 | g,4 4 b | d4 4 4 | g2 \bar ""
g4 | c,4 4 4 | g4 b g | a4 a cis | d2 \bar ""
d4 | g,4( b) d8 8 | g,4 4 b | d4 4 4 | g2 \bar ""
g4 | c,4 4 4 | d4 4 4 | d4 4 4 | g,2\partial 4
\bar "||"\partial 4
g'8. 16 | g2 8. 16 | g2 8. g,16 | b4 a g | d'2 \bar ""
d8. 16 | d2 8. 16 | d2 d8 c | b4 b a | g2 \bar ""
g4 | g4( b) d8 8 | g,4 g b | d4 4 4 | g2 \bar ""
g4 | c,4 4 4 | d4 4 4 | d4 4 4 | g,2 \bar "|."
}

\tocItem \markup "To God Be the Glory"
\score {
    \header {
        title = "To God Be the Glory"
        
        
        poet = "Fanny Crosby (1820-1915)"
        
        
        composer = "William Doane (1832-1915)"
        
        
    }
    <<
        \new ChoirStaff <<
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \dipieeggepijcchlfddppcfckchdabokebldofgeehajogffecpifjlioiaomnbcSoprano \dipieeggepijcchlfddppcfckchdabokebldofgeehajogffecpifjlioiaomnbcAlto }
\context NullVoice = "dipieeggepijcchlfddppcfckchdabokebldofgeehajogffecpifjlioiaomnbcSoprano" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \dipieeggepijcchlfddppcfckchdabokebldofgeehajogffecpifjlioiaomnbcSoprano
}
\context NullVoice = "dipieeggepijcchlfddppcfckchdabokebldofgeehajogffecpifjlioiaomnbcAlto" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \dipieeggepijcchlfddppcfckchdabokebldofgeehajogffecpifjlioiaomnbcAlto
}

		
                \new Lyrics \lyricsto "dipieeggepijcchlfddppcfckchdabokebldofgeehajogffecpifjlioiaomnbcSoprano" {
                  
                  \set stanza = "1."
                  
                  \lyricmode {
		    
                    To God be the glo -- ry, great things he hath done,
so loved he the world that he gave us his son,
who yield -- ed his life an a -- tone -- ment for sin,
and o -- pened the life -- gate that all may go in.
		    
                    Praise the Lord, praise the Lord, let the earth hear his voice!
Praise the Lord, praise the Lord, let the peo -- ple re -- joice!
O come to the Fa -- ther through Je -- sus the Son,
and give him the glo -- ry, great things he hath done.
		    
                  }
                }
		
                \new Lyrics \lyricsto "dipieeggepijcchlfddppcfckchdabokebldofgeehajogffecpifjlioiaomnbcSoprano" {
                  
                  \set stanza = "2."
                  
                  \lyricmode {
		    
                    O per -- fect re -- demp -- tion, the pur -- chase of blood,
to ev -- ery be -- liev -- er the prom -- ise of God,
the vil -- est of -- fend -- er who tru -- ly be -- lieves,
that mo -- ment from Je -- sus a par -- don re -- ceives.
		    
		    
                  }
                }
		
                \new Lyrics \lyricsto "dipieeggepijcchlfddppcfckchdabokebldofgeehajogffecpifjlioiaomnbcSoprano" {
                  
                  \set stanza = "3."
                  
                  \lyricmode {
		    
                    Great things he hath taught us, great things he hath done,
and great our re -- joic -- ing through Je -- sus the Son;
but pur -- er and high -- er and great -- er will be
our won -- der, our trans -- port, when Je -- sus we see.
		    
		    
                  }
                }
		
        >>
        \new Staff \with {
            printPartCombineTexts = ##f
        } <<
		
\context Voice { \partCombine \dipieeggepijcchlfddppcfckchdabokebldofgeehajogffecpifjlioiaomnbcTenor \dipieeggepijcchlfddppcfckchdabokebldofgeehajogffecpifjlioiaomnbcBass }
\context NullVoice = "dipieeggepijcchlfddppcfckchdabokebldofgeehajogffecpifjlioiaomnbcTenor" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #0.0
  \dipieeggepijcchlfddppcfckchdabokebldofgeehajogffecpifjlioiaomnbcTenor
}
\context NullVoice = "dipieeggepijcchlfddppcfckchdabokebldofgeehajogffecpifjlioiaomnbcBass" \with { \consists "Ambitus_engraver" } {
  \override Ambitus.X-offset = #2.0
  \dipieeggepijcchlfddppcfckchdabokebldofgeehajogffecpifjlioiaomnbcBass
}
        >>
    >>
    >>
}
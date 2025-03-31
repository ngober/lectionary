MyHopeIsBuiltSopranoNotes =  \relative c' {
    \clef "treble" \numericTimeSignature\time 3/4 \key f \major | % 1
  r2 
  | % 2
  c4 <c f >8 <c a' > 
  | % 3
  <f c' >4 <f a > 
  | % 4
  <f a >8 <e g > <e g >4 
  | % 5
  <f a > <f bes >8 <f bes > 
  | % 6
  <f bes >4 <d g > 
  | % 7
  <c f >8 <c e > <c f >4 
  | % 8
  c <c f >8 <c a' > 
  | % 9
  <f c' >4 <f a > 
  | % 10
  <f a >8 <e g > <e g >4 
  | % 11
  <f a > <f bes >8 <f bes > 
  | % 12
  <f bes >4 <d g > 
  | % 13
  <c f >8 <c e > <c f >4 
  | % 14
  <f c' > <f c' >8 <e c' > 
  | % 15
  <f c' >4 <f c' > 
  | % 16
  <f d' >8 <f d' > <f d' >4 
  | % 17
  <f d' > <f c' >8 <f a > 
  | % 18
  <f a >4 f 
  | % 19
  <f a >8 <f a > <e g >4 
  | % 20
  c <c f >8 <c f > 
  | % 21
  <d f >4 <c a' > 
  | % 22
  <g' f >8 <g e > <c, f >4 
}

MyHopeIsBuiltTenorNotes =  \relative f {
    \clef "bass" \numericTimeSignature\time 3/4 \key f \major | % 1
  r2 
  | % 2
  <f a >4 <f a >8 <f a > 
  | % 3
  <f a >4 <f c' > 
  | % 4
  <c c' >8 <c c' > <c c' >4 
  | % 5
  <f c' > <bes, d' >8 <bes d' > 
  | % 6
  <bes d' >4 <bes bes' > 
  | % 7
  <c a' >8 <c g' > <f a >4 
  | % 8
  <f a > <f a >8 <f a > 
  | % 9
  <f a >4 <f c' > 
  | % 10
  <c c' >8 <c c' > <c c' >4 
  | % 11
  <f c' > <bes, d' >8 <bes d' > 
  | % 12
  <bes d' >4 <bes bes' > 
  | % 13
  <c a' >8 <c g' > <f a >4 
  | % 14
  <f a > <f a >8 <g bes > 
  | % 15
  <a c >4 <f a > 
  | % 16
  bes8 bes bes4 
  | % 17
  bes <f a >8 <f c' > 
  | % 18
  <f c' >4 <f a > 
  | % 19
  <f c' >8 <a, c' > <c c' >4 
  | % 20
  bes' a8 <a f > 
  | % 21
  <bes, bes' >4 f' 
  | % 22
  <c c' >8 <c bes' > <f a >4 
  
}

MyHopeIsBuiltVerseOne = \lyricmode {
My hope is built on no -- thing less
than Je -- sus' blood and righ -- teous -- ness;
I dare not trust the sweet -- est frame,
but whol -- ly lean on Je -- sus' name.

On Christ, the so -- lid Rock, I stand:
all ot -- her ground is sink -- ing sand;
all ot -- her ground is sink -- ing sand.
}

MyHopeIsBuiltVerseTwo = \lyricmode {
When dark -- ness veils his love -- ly face,
I rest on his un -- chang -- ing grace;
in ev -- ery high and storm -- y gale,
my an -- chor holds with -- in the veil.
}

MyHopeIsBuiltVerseThree = \lyricmode {
His oath, his cov -- e -- nant, his blood,
sup -- port me in the whelm -- ing flood;
when all a -- round my soul gives way,
he then is all my hope and stay.
}

MyHopeIsBuiltVerseFour = \lyricmode {
When he shall come with trum -- pet sound,
O may I then in him be found:
dressed in his right -- eous -- ness a -- lone,
fault -- less to stand be -- fore the throne.
}

UpperNotes = << %\mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "MyHopeIsBuiltSopranoNotes" {  \voiceOne \MyHopeIsBuiltSopranoNotes }
                %\context Voice = "MyHopeIsBuiltAltoNotes" {  \voiceTwo \MyHopeIsBuiltAltoNotes }
                \new Lyrics \lyricsto "MyHopeIsBuiltSopranoNotes" { \set stanza = "1." \MyHopeIsBuiltVerseOne }
                \new Lyrics \lyricsto "MyHopeIsBuiltSopranoNotes" { \set stanza = "2." \MyHopeIsBuiltVerseTwo }
                \new Lyrics \lyricsto "MyHopeIsBuiltSopranoNotes" { \set stanza = "3." \MyHopeIsBuiltVerseThree }
                \new Lyrics \lyricsto "MyHopeIsBuiltSopranoNotes" { \set stanza = "4." \MyHopeIsBuiltVerseFour }
            >>

LowerNotes = << %\mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "MyHopeIsBuiltTenorNotes" {  \voiceOne \MyHopeIsBuiltTenorNotes }
                %\context Voice = "MyHopeIsBuiltBassNotes" {  \voiceTwo \MyHopeIsBuiltBassNotes }
            >>

\tocItem \markup "My Hope Is Built on Nothing Less"
\score {
\header {
    title =  "My Hope Is Built on Nothing Less"
    composer =  "William B. Bradbury (1816-1868)"
    poet =  "Edward Mote (1797-1874)"
    tagline = ""
    }

    <<
        \new StaffGroup
        <<
            \context Staff = "1" \UpperNotes
            \context Staff = "2" \LowerNotes
        >>
    >>
}

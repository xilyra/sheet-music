\version "2.18.0"
\language "deutsch"

\header {
  title = "BiblioPhobia from Great Gubal Library(H)"

}

upperOne = \relative c'' {
  \voiceOne
  \key f \minor
  \tempo 4 = 240
  c4 g as f |
  c' g as f |
  c' g as f |
  c' g as f |
  \voiceTwo <c' c,> <g g,> <as as,> <f f,> |
  <c' c,>_\markup{\italic "rit."} <g g,> <as as,> <f f,> \bar "||" |
  \break
  \tempo 4 = 84
  \voiceOne b16 g a b c b a g a8 b16 c as b as8 |
  <a, d g>8. <a' d g>16~ <a d g>8 a16 <d a' d g>~ <d a' d g>2 |
  \tuplet 3/2 {<as ces es>8 <as ces es> <as ces es>} \tuplet 3/2 {<as ces es>8 <as ces des> <as ces es>} \tuplet 3/2 {<as h f'>8 <as h es> <as h des>} \tuplet 3/2 {<as h>8 <as h des> <as h es>} |
  \voiceTwo f'16 d d'8 d16 es d b r g as b es, f g d |
  b g f'8~ f16 d es b'~ \voiceOne b g8 es16~ es f d8~ |
  d16 c <c c'>8 \voiceTwo <c c'>16 <d d'> <c c'> <g' g'>~ <g g'> <f f'> <g g'> <c c'> <b b'> <c c'> <g' g'> <es es'> |
}

upperTwo = \relative c'' {
  \voiceOne
  \key f \minor
  s1 s1 s1 s1
  \tuplet 3/2 {<f b>4-. <b, f'>-. <f' b>-.} s2 |
  \tuplet 3/2 {<f b>4-. <b, f'>-. <f' b>-.} s2 |
  \voiceTwo <d, g> <c fis>4 <c f> |
  s2... ces'32 des |
  s1 |
  \voiceOne d'2 f8( es16)-. d r es8( b16)~ |
  b2 \voiceTwo es,,4 f|
  g2 \voiceOne b'4 c |
  d2 des8 es f ges |
}

lowerOne = \relative c, {
  \voiceThree
  \key f \minor
  \clef "F"
  <g c>2 <c, des'> |
  <g' c>2 <c, des'> |
  <g' c>2 <c, des'> |
  <g' c>2 <c, des'> |
  <g' c>2 <c, des'> |
  <g' c>2 <b, b'> | 
  es'' d4 des |
  h1 |
  <des f as>2 <ces es a>4 <ces, ces'> |
  <c c'>
}

\score {
  \context PianoStaff <<
    \context Staff = "upper" <<
      \context Voice = "one" << \upperOne >>
      \context Voice = "two" << \upperTwo >>
    >>
    \context Staff = "lower" <<
      \context Voice = "lower" << \lowerOne >>
    >>
  >>
  \layout {
  }
  \midi {
  }
}
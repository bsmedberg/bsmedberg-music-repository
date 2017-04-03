\version "2.19.46"

\paper {
  #(set-paper-size "letter")
  ragged-bottom = ##t
}

\header {
  title = "Behold, Behold"
  author = "Michael Burkhardt"
  tagline = ""
}

canon_words = \lyricmode { Be -- hold, be -- hold the wood of the cross
                     on which is hung our sal -- va -- tion. Let us a -- dore: }

\markup {
  \vspace #1
  \bold \fontsize #1
  \fill-line { \center-column { \line { Canon (choir) } } }
}

\score {
  <<
    \new Voice = "canon" \relative c' {
      \set Score.markFormatter = #format-mark-circle-numbers
      \key f \minor
      \partial 4

      \mark \default f4 c'2. \breathe f,4 des'2. c4 bes2 c4 \bar "" \break
      \mark \default bes aes2. \breathe g4 f2. aes4 g2 aes4 \bar "" \break
      \mark \default g f2 f r4 aes g f c2 r4 \bar "||"
    }
    \new Lyrics \lyricsto "canon" \canon_words
  >>
  \layout {
    indent = 0\in
    indent = 1.5\in
    short-indent = 1.5\in
    line-width = 6\in
  }
}

\markup {
  \bold \fontsize #1
  \fill-line { \center-column { \line { Verses (cantor) } \vspace #0.5 } }
}

\score {
  \new Staff \with { \remove "Time_signature_engraver" }
  {
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \key f \minor
    \cadenzaOn
    \hide Staff.Stem
    \relative c'' {
      c\breve^\markup { \small \italic "1a" } bes4 aes2 \bar "'" r1 \bar "|"
      \mark \markup { \small \italic "..." } \parenthesize aes\breve \bar "'" r1 \bar "|"
      \mark \markup { \small \italic "1b" } aes\breve bes4 c des\breve \bar "'" r1 \bar "||"
      \mark \markup { \small \italic "2a" } c\breve bes4 aes2 \bar "'" r1 \bar "|"
      \mark \markup { \small \italic "..." } \parenthesize aes\breve \bar "'" r1 \bar "|"
      \mark \markup { \small \italic "2b" } aes\breve g4 f2 \bar "'" r1 \bar "||"
    }
  }
  \layout {
  }
}

dot = \markup {
  \raise #0.7 \musicglyph #"dots.dot"
}

va = \markup { \pad-to-box #'(0 . 2.5) #'(0 . 0) \line { \small \italic "1a" } }
vb = \markup { \pad-to-box #'(0 . 2.5) #'(0 . 0) \line { \small \italic "..." } }
vc = \markup { \pad-to-box #'(0 . 2.5) #'(0 . 0) \line { \small \italic "1b" } }
vd = \markup { \pad-to-box #'(0 . 2.5) #'(0 . 0) \line { \small \italic "2a" } }
ve = \markup { \pad-to-box #'(0 . 2.5) #'(0 . 0) \line { \small \italic "..." } }
vf = \markup { \pad-to-box #'(0 . 2.5) #'(0 . 0) \line { \small \italic "2b" } }

\markup {
  \fill-line \center-align {
  \line {
    \column {
      \line { \va In you, O Lord, I \dot take refuge. }
      \line { \vc Let me never be \dot put to shame. }
      \line { \va In your justice, set \dot me free; }
      \line { \vb incline your ear \dot to me, }
      \line { \vc and speedily \dot rescue me. }
      \line { \vd Be a rock of refuge \dot for me, }
      \line { \vf a mighty stronghold \dot to save me. }
      \null
      \line { \va For you are my rock, \dot my stronghold! }
      \line { \vc Lead me, guide me, for the sake \dot of your name. }
      \line { \vd Release me from the snare they \dot have hidden, }
      \line { \vf for you indeed are \dot my refuge. }
      \null
      \line { \va Into your hands I com- \dot mend my spirit. }
      \line { \vb You will redeem me, \dot O Lord, }
      \line { \vc O \dot faithful God. }
      \line { \vd You detest those who serve empt- \dot y idols. }
      \line { \vf As for me, I trust in \dot the Lord. }
      \null
      \line { \va Let me be glad and rejoice in \dot your mercy, }
      \line { \vb for you who have seen my \dot affliction }
      \line { \vc and taken heed of my \dot soul's distress, }
      \line { \vd have not left me in the hand of \dot the enemy, }
      \line { \vf but set my feet \dot at large. }
    }
    \hspace #2
    \column {
      \line { \va Have mercy on me, \dot O Lord. }
      \line { \vc for I am \dot in distress. }
      \line { \vd My eyes are wasted \dot with grief, }
      \line { \vf my soul and \dot my body. }
      \null
      \line { \va But as for me, I trust in you, \dot O Lord; }
      \line { \vc I say, "\"You" \dot "are my God.\"" }
      \line { \vd My lot is in your hands, \dot deliver me }
      \line { \ve from the hands of \dot my enemies }
      \line { \vf and those who \dot pursue me. }
      \null
      \line { \va Let your face shine on \dot your servant. }
      \line { \vc Save me in your mer- \dot ciful love. }
      \line { \vd Let me not be put to shame, \dot O Lord, }
      \line { \ve for I call on you; }
      \line { \vf let the wicked \dot be shamed! }
    }
  } }
}

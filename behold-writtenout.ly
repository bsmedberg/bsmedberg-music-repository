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
    indent = 1.5\in
    short-indent = 1.5\in
    line-width = 6\in
  }
}

\markup {
  \bold \fontsize #1
  \fill-line { \center-column { \line { Verses (cantor) } \vspace #0.5 } }
}

#(define-bar-line "!!" "!!" #f "!!")

verse_words = \lyricmode {
  In you, O Lord, I take re -- fuge.
  Let me ne -- ver be put to shame.
  In your jus -- tice set me free;
  in -- cline your ear to me,
  and speed -- i -- ly res -- cue me.
  Be a rock of re -- fuge for me,
  a migh -- ty strong -- hold to save me.

  For you are my rock, my strong -- hold!
  Lead me, guide me, for the sake of your name.
  Re -- lease me from the snare they have hid -- den,
  for you in -- deed are my re -- fuge.

  In -- to your hands I com -- mend my spi -- rit.
  You will re -- deem me, O Lord,
  O faith -- ful God.
  You de -- test those who serve empt -- y i -- dols.
  As for me, I trust in the Lord.

  Let me be glad and re -- joice in your mer -- cy,
  for you who have seen my af -- flic -- tion
  and tak -- en heed of my soul's dis -- tress,
  have not left me in the hand of the e -- ne -- my,
  but set my feet at large.

  Have mer -- cy on me, O Lord.
  for I am in dis -- tress.
  My eyes are was -- ted with grief,
  my soul and my bo -- dy.

  But as for me, I trust in you, O Lord;
  I say, "\"You" are my "God.\""
  My lot is in your hands, de -- li -- ver me
  from the hands of my e -- ne -- mies
  and those who pur -- sue me.
}

\score {
  <<
    \new Voice = "verses" \relative c'' {
      \key f \minor
      \tupletSpan 2 \tupletUp

      \mark \markup { \italic "verse 1" }
      \tuplet 3/2 { c4 c c c c bes aes aes2 } r2 r1 \bar "||"
      r8 aes8 aes aes aes aes bes c des2 r2 r1 \bar "||"
      r4 c8 c c c c bes aes2 r2 r1 \bar "||"
      r4 r8 aes aes aes aes aes aes2 r2 r2 r4 r8 aes8 \bar "||"
      \tuplet 3/2 { aes4 aes aes } bes4 c des2 r2 r1 \bar "||"
      c8 c c c \tuplet 3/2 { c4 c bes } aes2 r2 r1 \bar "||"
      r8 aes aes aes \tuplet 3/2 { aes4 aes g } f4 f r2 r1 \bar "||" \break

      \mark \markup { \italic "verse 2" }
      c'8 c c c c4 r8 bes aes4 aes r2 r2 r4 aes8 aes \bar "||"
      aes aes aes aes \tuplet 3/2 { aes4 bes c } des2 r2 r2 r4 r8 c \bar "||"
      c c c c \tuplet 3/2 { c4 c bes aes aes2 } r2 r1 \bar "||"
      \tuplet 3/2 { aes4 aes aes aes aes g f f2 } r2 r1 \bar "||" \break

      \mark \markup { \italic "verse 3" }
      c'8 c c c c c c bes aes aes4. r2 r1 \bar "||"
      \tuplet 3/2 { aes4 aes aes aes aes aes } aes2 r2 r1 \bar "||"
      r4 aes bes c des2 r2 r2 r4 c8 c \bar "||"
      \tuplet 3/2 { c4 c c c c bes aes aes2 } r2 r1 \bar "||"
      \tuplet 3/2 { aes4 aes aes } aes8 aes aes g f2 r2 r2 r4 \bar "!!" \break

      \mark \markup { \italic "verse 4" }
      \tuplet 3/2 { c'8 c c } \bar "|"
      \tuplet 3/2 { c4 c c c c bes aes aes2 } r2 r2 r4 r8
      aes8 \bar "||" \tuplet 3/2 { aes4 aes aes aes aes aes aes aes2 } r2 r1 \bar "||"
      aes8 aes aes aes aes aes bes c des2 r2 r2 r4 c8 c \bar "||"
      c c c c \tuplet 3/2 { c4 c bes aes8 aes aes ~ } aes4 r2 r1 \bar "||"
      \tuplet 3/2 { aes4 aes aes } aes g f2 r2 r1 \bar "||" \break

      \mark \markup { \italic "verse 5" }
      \tuplet 3/2 { c'4 c c c c bes } aes2 r2 r1 \bar "||"
      \tuplet 3/2 { r4 aes aes aes bes c } des2 r2 r1 \bar "||"
      \tuplet 3/2 { c4 c c c c bes } aes2 r2 r1 \bar "||"
      r4 aes \tuplet 3/2 { aes aes g f f2 } r2 r2 r4 \bar "!!" \break

      \mark \markup { \italic "verse 6" }
      r8 c'8 \bar "|" c c c c c c c bes aes2 r2 r1 \bar "||"
      \tuplet 3/2 { r4 aes aes aes bes c } des2 r2 r2 r4 r8 c8 \bar "||"
      c c c c c c c bes aes2 r2 r1 \bar "||"
      \tuplet 3/2 { r4 aes aes aes aes aes } aes8 aes aes4 r2 r1 \bar "||"
      r4 aes \tuplet 3/2 { aes aes g f f2 } r2 r1 \bar "||"
    }
    \new Lyrics \lyricsto "verses" \verse_words
  >>
  \layout {
    \context {
      \Score
      \omit BarNumber
    }
    indent = 0\in
  }
}

%       \line { \va In you, O Lord, I \dot take refuge. }
%       \line { \vc Let me never be \dot put to shame. }
%       \line { \va In your justice, set \dot me free; }
%       \line { \vb incline your ear \dot to me, }
%       \line { \vc and speedily \dot rescue me. }
%       \line { \vd Be a rock of refuge \dot for me, }
%       \line { \vf a mighty stronghold \dot to save me. }
%       \null
%       \line { \va For you are my rock, \dot my stronghold! }
%       \line { \vc Lead me, guide me, for the sake \dot of your name. }
%       \line { \vd Release me from the snare they \dot have hidden, }
%       \line { \vf for you indeed are \dot my refuge. }
%       \null
%       \line { \va Into your hands I com- \dot mend my spirit. }
%       \line { \vb You will redeem me, \dot O Lord, }
%       \line { \vc O \dot faithful God. }
%       \line { \vd You detest those who serve empt- \dot y idols. }
%       \line { \vf As for me, I trust in \dot the Lord. }
%       \null
%       \line { \va Let me be glad and rejoice in \dot your mercy, }
%       \line { \vb for you who have seen my \dot affliction }
%       \line { \vc and taken heed of my \dot soul's distress, }
%       \line { \vd have not left me in the hand of \dot the enemy, }
%       \line { \vf but set my feet \dot at large. }
%     }
%     \hspace #2
%     \column {
%       \line { \va Have mercy on me, \dot O Lord. }
%       \line { \vc for I am \dot in distress. }
%       \line { \vd My eyes are wasted \dot with grief, }
%       \line { \vf my soul and \dot my body. }
%       \null
%       \line { \va But as for me, I trust in you, \dot O Lord; }
%       \line { \vc I say, "\"You" \dot "are my God.\"" }
%       \line { \vd My lot is in your hands, \dot deliver me }
%       \line { \ve from the hands of \dot my enemies }
%       \line { \vf and those who \dot pursue me. }
%       \null
%       \line { \va Let your face shine on \dot your servant. }
%       \line { \vc Save me in your mer- \dot ciful love. }
%       \line { \vd Let me not be put to shame, \dot O Lord, }
%       \line { \ve for I call on you; }
%       \line { \vf let the wicked \dot be shamed! }
%     }
%   } }
% }

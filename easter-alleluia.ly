\version "2.19.46"

\paper {
  #(set-paper-size "letterlandscape")
  % ragged-bottom = ##t
  left-margin = 0.5\in
  right-margin = 0.5\in
  line-width = 10\in
  check-consistency = ##t
  ragged-last = ##f
}

\header {
  title = "Easter Alleluia"
  author = "Benjamin Smedberg"
  tagline = ""
}

\score {
  <<
    \new Staff \with { instrumentName = #"Ground" }
    {
      <<
        \new Voice = "ground" {
          \key f \major
          \time 4/4
          \transpose d c { \relative c' {
            r8 d d d e4. e8 g4( e8) a4( b8) a4
            r8 a b( a) b( a) g4 fis8 e e d8 ~ d2 \bar "||"
          } }
        }
        \new Lyrics \lyricsto "ground" { \lyricmode {
          Al -- le -- lu -- ia, al -- le -- lu -- ia,
          al -- le -- lu -- ia, al -- le -- lu -- ia!
        } }
      >>
    }
    \new StaffGroup \with { instrumentName = #"Verse Canon" }
    <<
      \new Voice = "vc_a" {
        \key f \major
        \transpose d c { \relative c'' {
          d1 c e d
        } }
      }
      \new Lyrics \lyricsto "vc_a" { \lyricmode {
        Our Pas -- chal Lamb
      } }
      \new Voice = "vc_b" {
        \key f \major
        \transpose d c { \relative c'' {
          b1 a c2 b a1
        } }
      }
      \new Lyrics \lyricsto "vc_b" { \lyricmode {
        has been sac -- ri -- ficed:
      } }
      \new Voice = "vc_c" {
        \key f \major
        \transpose d c { \relative c'' {
          g1 r2 e'4 fis g1 fis
        } }
      }
      \new Lyrics \lyricsto "vc_c" { \lyricmode {
        Christ! Christ is ris -- en!
      } }
    >>
    \new StaffGroup \with { instrumentName = #"Second Canon" }
    <<
      \new Voice = "sc_a" {
        \key f \major
        \transpose d c { \relative c'' {
          d4 d b b c c8 c4. d4
          c4 c d8( c) b4 a8 a a a ~ a2
        } }
      }
      \new Lyrics \lyricsto "sc_a" { \lyricmode {
        Christ is ris -- en, al -- le -- lu -- ia!
        Christ is ris -- en, al -- le -- lu -- ia!
      } }
      \new Voice = "sc_b" {
        \key f \major
        \transpose d c { \relative c'' {
          b4 b g g e8 d e4 d d
          g2 d4 d d8 e e fis ~ fis2
        } }
      }
      \new Lyrics \lyricsto "sc_b" { \lyricmode {
        Christ is ris -- en, al -- le -- lu -- ia!
        Al -- le -- lu -- ia, al -- le -- lu -- ia!
      } }
    >>
  >>
  \layout {
    indent = 1.5\in
  }
}

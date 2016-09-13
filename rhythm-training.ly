\version "2.19.46"

\paper {
  #(set-paper-size "letter")
  ragged-bottom = ##t
  system-system-spacing.padding = #8
  score-system-spacing.padding = #8
}

\header {
  title = "Rhythm"
  arranger = "Benjamin Smedberg"
  tagline = "To find original files, make changes, and report problems, visit https://github.com/bsmedberg/rhythm-training"
}

\markup {
  \column {
    \line { This first line has four measures. Another name for "\"measure\"" is "\"bar.\"" }
    \vspace #1
  }
}
\score {
  \new RhythmicStaff
  \with {
    \consists "Balloon_engraver"
    \override BalloonTextItem #'annotation-balloon = ##f
  }
  {
    \balloonGrobText #'TimeSignature #'(1 . 8) \markup {
      This is the time signature. In this piece there are
      \fraction four "quarter notes" in a measure.
    }

    \numericTimeSignature \time 4/4
    <g-\balloonText #'(1 . 6) \markup { "Quarter note" }>4_1
    g_2 g_3 g_4
    \balloonGrobText #'BarLine #'(1 . 3) \markup { Bar line }
    g_1 g_2 g_3 g_4
    g_1 g_2 g_3 g_4
    g_1 g_2 g_3 g_4
    \balloonGrobText #'BarLine #'(0 . 3) \markup { This double barline means the end of the piece. }
    \bar "|."
  }
  \layout {
    indent = 0
    ragged-right = ##t
  }
}

\score {
  \new RhythmicStaff
  \with {
    \consists "Balloon_engraver"
    \override BalloonTextItem #'annotation-balloon = ##f
  }
  {
    \balloonGrobText #'TimeSignature #'(1 . 8) \markup {
      \compound-meter #'(4 . 4) is a very common time signature. We call it "\"common time\"" and abbreviate it \raise #0.6 \musicglyph #"timesig.C44".
    }
    \time 4/4
    g4_1 g_2 g_3 g_4
    <g-\balloonText #'(0.5 . 4) \markup {
        This is a half note.
        One \note #"2" #UP is as long as two \note #"4" #UP \note #"4" #UP
    }>2_\finger "1-2" g_\finger "3-4"
    g4_1 g_2 g_3 g_4 g2_\finger "1-2" g_\finger "3-4" \bar "|." \break
  }
  \layout {
    indent = 0
    ragged-right = ##t
  }
}

\markup {
  \column {
    \line { \note #"8" #UP is an eighth note. \note #"8" #UP \note #"8" #UP = \note #"4" #UP }
    \line { Eighth notes can be written with flags or beams: it means the exact same thing. }
    \line { \note #"1" #UP is a whole note. \note #"1" #UP = \note #"4" #UP \note #"4" #UP \note #"4" #UP \note #"4" #UP = \note #"2" #UP \note #"2" #UP }
    \vspace #1
  }
}

\score {
  \new RhythmicStaff
  \with {
    \consists "Balloon_engraver"
    \override BalloonTextItem #'annotation-balloon = ##f
  }
  {
    \time 4/4
    \autoBeamOff
    g4_1 g_2 g8_3 g_"+" g4_4
    g8[_1 g]_"+" g[_2 g]_"+" g[_3 g_"+" g_4 g]_"+"
    g4_1 g_2 g_3 g_4 g1_\finger "1-2-3-4" \bar "|." \break
  }
  \layout {
    indent = 0
    ragged-right = ##t
  }
}

\markup {
  \column {
    \line { Time to put it all together! }
    \vspace #1
  }
}

\score {
  \new RhythmicStaff
  \with {
    \consists "Balloon_engraver"
    \override BalloonTextItem #'annotation-balloon = ##f
  }
  {
    \time 4/4
    \set Score.currentBarNumber = #1
    \override Score.BarNumber.break-visibility = #end-of-line-invisible
    \override Score.BarNumber.self-alignment-X = #LEFT
    \set Score.barNumberVisibility = #(modulo-bar-number-visible 4 1)
    g4 g8 g g4 g8 g g4 g g2
    g4 g8 g g4 g8 g g1


    g4^\markup {
      \override #'(line-width . 40)
      \raise #2
      \wordwrap {
        This is a measure number. When the director says "\"start at measure five\""
        you know what to do!
      }
    }
    g8 g g4 g8 g g4 g g2
    g4 g8 g g4 g8 g g4 g g g
    g4 g g g8 g g4 g g g g4 g8 g g4 g g2 g \bar "|."
  }
  \layout {
    indent = 0
  }
}

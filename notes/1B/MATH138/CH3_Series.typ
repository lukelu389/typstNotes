#import "../../../preamble.typ": *
#import "@preview/diverential:0.2.0": *
#let strut(h) = box(height: h, width: 0pt)

#let Title = "CH 3 — Series"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

#info[*Infinite Series*\

An infinite series is an expression of the form $ sum_(n=1)^(oo) a_n = a_1+ a_2 + ... $ where ${a_n}$ is a sequence.

- the sequence of terms ${a_n}_(n=1)^(oo)$

- the sequence of partial sums ${S_m}_(m=1)^(oo)$ where $S_m$ is the truncated sum up to the term $a_m$: $ S_m = a_1 + a_2 + a_3 + ... + a_m $

We say that a series converges if the sequence of partial sums converges.

If $lim_(m->oo) S_m = S$, then $S$ is called the sum of the series.

Otherwise the series diverges.
]

Note that oscillating result is assigned with "no limit" or DNE rather

== Geometric Series

== Harmonic Series

== Telescoping Series

== Alternating Series

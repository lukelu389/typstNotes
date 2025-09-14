#import "../../preamble.typ": meta, set-title

#let Title = "CH 1 — Precalculus Review"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== Real and Transcendental Functions

=== Real-Valued Functions
Let $X$ and $Y$ be sets. A function $f$ assigns to each $x \in X$ exactly one $y = f(x) \in Y$:
$ f: X \to Y,\; x ↦ f(x). $
/* alternative to ↦:  $ f: X \to Y,\; x #sym.mapsto f(x). $ */

=== Domain and Range
For $f: X \to Y$:
- *Domain* $D(f) = \{ x : f(x) "is well-defined" \}$.
- *Range*  $R(f) = \{ f(x) : x \in X \}$.

=== Parity
- $f$ is *even* if $f(-x) = f(x)$ for all $x \in D(f)$ (y-axis symmetry).
- $g$ is *odd*  if $g(-x) = -g(x)$ for all $x \in D(g)$ (180° rotation).

=== Examples (domains & ranges)
#align(center)[
  #table(
    columns: 3,
    align: (center, center, center),
    inset: 6pt,
    [*Function*], [*Domain*], [*Range*],
    [$y = x$],             [$RR$],                               [$RR$],
    [$y = x^2$],           [$RR$],                               [$[0,infinity)$],
    [$y = sqrt(x)$],       [$[0,infinity)$],                       [$[0,infinity)$],
    [$y = 1/x$],           [$RR \\ {0}$],               [$RR  \\ {0}$],
    [$e^x$],               [$RR$],                               [$ (0,infinity) $],
    [$\ln(x)$],            [$ (0,infinity) $],                     [$RR$],
    [$sin(x)$],           [$RR$],                               [$[-1,1]$],
    [$cos(x)$],           [$RR$],                               [$[-1,1]$],
    [$tan(x)$],           [$RR \\ \{ frac((2k+1)pi, 2) : k in ZZ \}$], [$RR$],
    [$arcsin(x)$],        [$[-1,1]$],                           [$[-pi/2, pi/2]$],
    [$arccos(x)$],        [$[-1,1]$],                           [$[0, pi]$],
    [$arctan(x)$],        [$RR$],                               [$(-pi/2, pi/2)$],
    [$y = |x|$],           [$RR$],                               [$[0,infinity)$],
  )
]

=== Function Operations
\
==== Composition
Given $f: X -> Y$ and $g: Y -> Z$ \
$(g compose f): X -> Z,  (g compose f)(x) = g(f(x))$

\
==== Inverse
$f: X -> Y$ is invertible if there exists $f^{-1}: Y -> X$ with
$ f^(-1)(f(x)) = x\ "for" x in X, f(f^(-1)(y)) = y  ("for") y in Y. $

==== Piecewise (absolute value)
$ |x| = cases( x "if" x >= 0, -x "if" x < 0 ) $

=== Examples:
1. Find the domain of this function:
$ f(x) = x/(x^2 - x) = x/((x-1)x); x!=0, 1
\ "Domain" = RR \\ \{0,1\} = (-infinity,0) union (0,1) union (1,infinity)$.

2. The domain of $cos(x)$ is $RR$ with range of $[-1, 1]$ 
		Its inverse is $arccos(x)$ will have domain $[-1, 1]$ and range of $[0, pi]$ 
3. Parity questions:\
		1) A fn that is odd that is not a power of $x$: $sin(x)$   \
		2) A fn that is even that is not a power of $x$: $cos(x)$  \
		3) A fn that is neither even nor odd: $sin(e^x)$ or $e^x$   \
		4) A fn that is even and odd: $f(x)= 0$   \
4) Factor $x^3+10x^3+13x-24$  \
		Find a factor: $x=1$, it will always be the factor of the constant term. \
		So $x-1$ is a factor of $x^3+10x^3+13x-24$ \
		$x^2+11x+24$ is the quotient of the factorization of the polynomial. \
		$x^2+11x+24 = (x+3)(x+8)$ \
		$x^3+10x^3+13x-24 = (x-1)(x+3)(x+8)$     \


#import "../../../preamble.typ": *
#show: conf
#import "@preview/diverential:0.2.0": *
#import "@preview/physica:0.9.8": *
#let strut(h) = box(height: h, width: 0pt)
#let Title = "CH 3 — Continuity"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== 1.1 Continuous Functions

#defn[*Continuity* \ 

We say that $f(x, y)$ is continuous at $(a, b)$ if $ lim_((x, y)->(a, b)) f(x, y) = f(a, b) $

If $f$ is continuous at every point in $D subset.eq RR^2$, then $f$ is continuous on $D$. It requires:

  1. $lim_((x, y)->(a, b)) f(x, y)$ exists

  2. $f(a, b)$ is defined

  3. $lim_((x, y)->(a, b)) f(x, y) = f(a, b)$
]

#defn[*Continuity Theorems*\

If $f (x, y)$ and $g(x, y)$ are scalar functions and $(x, y) in D( f ) inter D(g)$, then:
\

1. $f+g$ and $f dot g$ are continuous at $(a, b)$

2. $frac(f, g)$ is also continuous at $(a, b)$

*Composite Functions*

For scalar functions $g(t)$ and $f(x, y)$, the composite funciton is $g compose f(x, y) = g(f(x, y))$ for all $(x, y) in "dom" f$ s.t. $f(x, y) in "dom" g$

3. If $f(x, y)$ is continuous at $(a, b)$ and $g(t)$ is continuous at $f(a, b)$, then $g compose f$ is continuous at $(a, b)$

]

Example:
\

1. Is $f(x, y) = y sin(x/y)$ continuous?
  
  Notice that $x/y$ is continuous in $RR \\ {0} space forall (x, y) in RR^2 "s.t." y!=0$

  We know $sin t$ is continuous $forall t in RR$, so $sin(x/y)$ is continuous $forall (x, y) in RR^2$ s.t. $y!=0$

  By continuity theorems, $y sin(x/y)$ is continuous wherever both functions are continuous.

  Thus $f(x, y)$ is continuous on ${(x, y) in RR^2 : y!=0}$
\
2. Evaluate $lim_((x, y)->(1, 0)) frac(x^2 ln x - x^3 cos y, x^3+y^5 )$

  By continuity theorems, this is continuous at $(1, 0)$, therefore $lim_((x, y)->(1, 0)) frac(x^2 ln x - x^3 cos y, x^3+y^5) = -1$


#tip[*Applications with Squeeze Theorem*
When using the Squeeze Theorem to prove a limit exists, we should try to find an upper bound $B(x, y)$ which is continuous so that $ lim_((x, y)->(a, b)) B(x, y) $ is easy to evaluate]

When the continuity theorems don't apply, then it is needed to use the definition of continuity.

Example:

1. $f(x, y) = cases(frac(x, sqrt(x^2+y^2)) quad &(x, y) !=0, 1 quad &(x, y) = (0, 0))$

  By continuity theorems, $f(x, y)$ is continuous $forall (x, y) in RR^2 \\ {(0, 0)}$

  Check if $lim_((x, y)->(0, 0)) f(x, y) =1$

  Notice that if $x = 0 ==> lim_((x, y)->(0, 0)) f(0, y) = lim_(y->0) f(y) = lim_(y->0) 0/sqrt(y^2) = 0!=1$

  If the limit exists, it must be 0, so it is not continuous at $(0, 0)$

2. $f(x, y) = cases(frac(2x y, x^2+y^2) quad &(x, y) !=0, 0 quad &(x, y) = (0, 0))$

  By continuity theorems, $f(x, y)$ is continuous $forall (x, y) in RR^2 \\ {(0, 0)}$

  Check if $lim_((x, y)->(0, 0)) f(x, y) =0$

  Try $y = m x: lim_((x, y)->(0, 0)) f(x, m x) = lim_(x->0) = frac(2 m, 1+m^2) = frac(2m, 1+m^2)$
  
  The limit depedents on $m$, so the limit does not exist.Therefore, $f$ is not continuous at $(0, 0)$



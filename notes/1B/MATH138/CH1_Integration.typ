#import "../../../preamble.typ": *


#let Title = "CH 1 — Integration"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== Definite Integrals

#info[*Riemann Sums*\

Given $f(x)$ that is defined over $[a, b]$ with $a<b$, the area under function $f(x)$ can be found by

1. *Left-Endpoint Riemann Sum*

  $ L_n = sum_(i=0) ^(n-1) f(x^*_i) Delta x $
   - Underestimates Increasing Funcitons

2. *Right-Endpoint Riemann Sum*

  $ R_n = sum_(i=1) ^(n) f(x^*_i) Delta x $
  - Overestimates Increasing Functions

where 
- $Delta x = (b-a)/n$ under regular partition
  
- $x_i^* = a + i Delta x  = a + i frac(b-a, n)$


$lim_(n->oo) R_n = lim_(n->oo) L_n$ for $f(x)$ on interval $[a, b]$

Regular Parition means interval $[a, b]$ is equally partitionined into $n$ rectangles with identical width
]

Example:

Estimate area under the curve for $f(x) = x^2$ on $x in [0, 1]$\

  $R_n = sum_(i=1)^n 1/n f(i/n) = sum_(i=1)^n 1/n (i/n)^2 = 1/n^3 sum_(i=1)^n i^2 = ((n+1)(2n+1))/(6n)$ 


  $lim_(n->oo) R_n = lim_(n->oo) frac((n+1)(2n+1), 6n) = 1/3$ 



#info[*Definite Integral*\

$f(x)$ defined on $x in [a, b]$ with regular partition with n subintervals

The definite integral of $f(x)$ on $[a, b]$ is defined


$ integral_a^b f(x) dif x = lim_(x->oo) sum_(i=1)^n f(x^*_i) Delta x $

A function is integrable on $x in [a, b]$ provided that the limit of Riemann Sum exists and has the same value regardless of the choice of $x^*_i$

]

#info[*Integrability Theorem for Continuous Functions*\

Integrability: $lim_(n->oo) R_n = lim_(n->oo) L_n$

1. If $f$ is continuous of $[a, b]$ then $f$ is integrable on $[a, b]$

2. $f$ is bounded on $[a, b]$ and has a *finite* number of discontinuities, then $f$ is integrable on $[a, b]$

That is continuity implies integrability and the other way is false
]

Examples:
1. $f(x) = x^2$

2. $f(x) = cases(2 "if" x <= 3, 1 "if" x > 3)$, note that $f(x)$ is discontinuous

3. $f(x)= cases(1 "if" x in QQ, 0 "if" x in.not QQ)$ on $[0, 1]$
 - $x^*_i$ is rational

  $integral_0^1 f(x) dif x = lim_(n->oo) sum_(i=1)^n f(x^*+i) Delta x = 1$ 
 - $x^*_i$ is irrational
  $integral_0^1 f(x) dif x = lim_(n->oo) sum_(i=1)^n f(x^*+i) Delta x = 0$ 
 Thus not integrable


For geometric interpretation, Riemann Sums and Definite Integrals measures the "signed" area where there is no more than 1 inflection point

- A positive result of $w$ implies the area under the curve above $x$-axis is $w$

- A negative result of $w$ implies the area under the curve under $x$-axis is $w$

#info[*Properties of Definite Integrals*\
Let $f(x)$ be integrable on $[a, b]$

1. $integral_(-a)^a f(x) dif x = 0$ if $f(x)$ is odd function

2. $integral_(-a)^a f(x) dif x = 2 w$ where $integral_0^a f(x) dif x = w$ if $f(x)$ is even function
]

Examples:

1. $integral_1^3 x^2 - 3x dif x = lim_(n->oo) sum_(i=1)^n f(1 + frac(2 i, n)) dot 2/n = im_(n->oo) sum_(i=1)^n [(1 + frac(2 i, n))^3 - 3(1 + frac(2 i, n)) ]dot 2/n $

$= lim_(n->oo) sum_(i=1)^n (-frac(4 i, n^2)+frac(8 i^2, n^3)-4/n) = -10/3$

2. $integral_0^5 x^3 - 2 dif x = lim_(n->oo) sum_(i=1)^n f(i 5/n) 5/n = lim_(n->oo) sum_(i=1)^n [(5/n)((i 5 /n)^3 - 2)] = 583/4$


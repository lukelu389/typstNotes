#import "../../../preamble.typ": *


#let Title = "CH 1 — Integration"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== Definite Integrals

#info[*Riemann Sums*\

Given $f(x)$ that is defined over $[a, b]$ with $a<b$, the area under function $f(x)$ can be found by

1. *Left-Endpoint Riemann Sum*

  $ L_n = sum_(i=0) ^(n-1) f(x^*_i) Delta x $

2. *Right-Endpoint Riemann Sum*

  $ R_n = sum_(i=1) ^(n) f(x^*_i) Delta x $

where 
- $Delta x = (b-a)/n$ under regular partition
  
- $x_i^* = a + Delta x i = a + frac(b-a, n) i$

- $lim_(n->oo) R_n = lim_(n->oo) L_n$ for $f(x)$ on interval $[a, b]$

- Regular Parition means interval $[a, b]$ is equally partitionined into $n$ rectangles with identical width

- A Riemann Sum equal 0 does not always mean that there is no area. 
]

Example:

Estimate area under the curve for $f(x) = x^2$ on $x in [0, 1]$\

  $R_n = sum_(i=1)^n 1/n f(i/n) = sum_(i=1)^n 1/n (i/n)^2 = 1/n^3 sum_(i=1)^n i^2 = ((n+1)(2n+1))/(6n)$ 


  $lim_(n->oo) R_n = lim_(n->oo) frac((n+1)(2n+1), 6n) = 1/3$ 


#info[*Definite Integral*\

$f(x)$ defined on $x in [a, b]$ with regular partition with n subintervals

The definite integral of $f(x)$ on $[a, b]$ is denoted


$ integral_a^b f(x) dif x = lim_(x->oo) sum_(i=1)^n Delta x f(x^*_i) $

A function is integrable on $x in [a, b]$ provided that the limit of Riemann Sum exists and has the same value regardless of the choice of $x^*_i$

In simpler words: integrability equals continuity
]
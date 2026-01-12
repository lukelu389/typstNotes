#import "../../../preamble.typ": *
#import "@preview/diverential:0.2.0": *


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


$ integral_a^b f(x) dif x = lim_(x->oo) sum_(i=1)^n f(x^*_i) Delta x  = lim_(n->oo) sum_(i=1)^n f(a+i Delta x) Delta x $

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

3. $f(x)= cases(1 "if" x in QQ, 0 "if" x in.not QQ) space$ on $[0, 1]$
 - $x^*_i$ is rational

  $integral_0^1 f(x) dif x = lim_(n->oo) sum_(i=1)^n f(x^*+i) Delta x = 1$ 
 - $x^*_i$ is irrational
  $integral_0^1 f(x) dif x = lim_(n->oo) sum_(i=1)^n f(x^*+i) Delta x = 0$ 
 Thus not integrable


For geometric interpretation, Riemann Sums and Definite Integrals measures the "signed" area where there is no more than 1 inflection point

- A positive result of $w$ implies the area under the curve above $x$-axis is $w$

- A negative result of $w$ implies the area under the curve under $x$-axis is $w$

#info[*Parity of Functions and Definite Integrals*\
Let $f(x)$ be bounded and integrable on $[-a, a]$

1. If $f(x)$ is odd function, then $ integral_(-a)^a f(x) dif x = 0 $ 

2. If $f(x)$ is even function where $integral_0^a f(x) dif x = w$ $ integral_(-a)^a f(x) dif x = 2 w $ 

]

Examples:

1. $integral_1^3 x^2 - 3x dif x = lim_(n->oo) sum_(i=1)^n f(1 + frac(2 i, n)) dot 2/n = im_(n->oo) sum_(i=1)^n [(1 + frac(2 i, n))^3 - 3(1 + frac(2 i, n)) ]dot 2/n $

$= lim_(n->oo) sum_(i=1)^n (-frac(4 i, n^2)+frac(8 i^2, n^3)-4/n) = -10/3$

2. $integral_0^5 x^3 - 2 dif x = lim_(n->oo) sum_(i=1)^n f(i 5/n) 5/n = lim_(n->oo) sum_(i=1)^n [(5/n)((i 5 /n)^3 - 2)] = 583/4$


#info[*Basic Property of Definite Integral*\
\

Let $f(x), g(x)$ be integrable on $[a, b]$
\

1. For any $c in RR$, the function $c f(x)$ is integrable and $ integral_a^b c f(x) dif x = c integral_a^b f(x) dif x $ 

2. The function $f + g$ is integrable and $ integral_a^b (f+g)(x) dif x = integral_a^b f(x) dif x + integral_a^b g(x) dif x $ 

3. If $m, M in RR$ and $m <= f(x) <= M forall x in [a, b]$, then $ m(b-a)<= integral_a^b f(x) dif x <= M(b-a) $

4. If $f(x)>=0 forall x$, then $ integral_a^b f(x) dif x >=0 $

5. If $f(x) <= g(x) forall x in [a, b]$, then $ integral_a^b f(x) dif x <= integral_a^b g(x) dif x $

6. The function $|f|$ is integrable on $[a, b]$ and $ abs(integral_a^b f(x) dif x)<= integral_a^b |f(x)| dif x $

7. Bound fliping $ integral_a^b f(x) dif x = - integral _b^a f(x) dif x $

8. $ integral_a^a f(x) dif x = 0 $ 

]

#info[*Separation of Domain of Definite Integral*\

If $f(x)$ is also integrable on an interval containing $a, b, c$, then $ integral_a^b f(x) dif x = integral_a^c f(x) dif x + integral_c^b f(x) dif x $
]
#info[*Average Value of Function*\

Let $f$ be a function that is continuous on an interval $[a, b]$ with $a<b$. The *average calue of $f$ on $[a, b]$* is defined as $ f_"avg" = frac(1, b-a) integral_a^b f(x) dif x $

]

Examples:

1. Determine the average value of $f(x)=1-x^2$ on [-1, 1]

 $f_"avg" = 1/(1-(-1)) integral_(-1)^1 f(x) dif x = integral_(0)^1 f(x) dif x = lim_(x->oo) sum_(i=1)^n (1-(i/n)^2) /n$

 $lim_(n->oo) 1/n sum_(i=1)^n 1- i^2/n^2 = lim_(n->oo)1/n (n-1/n^2(frac(n (n+1) (2n+1), 6))) = 1 - 1/3 = 2/3$

2. Suppose that $f, g$ are integrable on $[-1, 1], integral_1^(-1) f(t) dif t = 5$, and $g$ is an evern function with $integral_0^1 g(t) dif t = 2$. 

  $integral_(-1)^1 3f(x)-g(x) dif x = 3 integral_(-1)^1 f(x) dif x - integral_(-1)^1 g(x) dif x = -3 integral_1^(-1) f(x) dif x - 2 integral_0^1 g(x) dif x = -19$

\
#info[*Fundamental Theorem of Calculus (FTC - 1)*\

Let $a in RR$. If $f$ is continuous on an open interval $I$ containing $a$, then the funciton $ G(x) = integral_a^x f(t) dif t $ is differentiable $forall x in I$ and $G'(x) = f(x)$. That is, $ dvs(integral_a^x f(t) dif t, x) = f(x) $
]

#proof[
Given $x in I$, from the definition of the derivative, we have $ G'(x) &= lim_(h->oo) frac(G(x+h)-G(x), h) \
&= lim_(h->0) frac(integral_a^(x+h) f(t) dif t - integral_a^x f(t) dif t, h) &= lim_(h->0) frac(integral_a^(x) f(t) dif t + integral_x^(x+h) f(t) dif t - integral_a^x f(t) dif t, h) &= lim_(h->0) 1/h integral_x^(x+h) f(t) dif t$.

For all $h!=0$, sufficiently close to 0, and $h>0$ $f$ is continuous on $[x, x+h]$. 

$forall h, exists c = c(h)$ in $[x, x+h]$ s.t. $ f(c(h)) = 1/h integral_x^(x+h) f(t) dif t $

Since $x<=c(h)<= x+h$, by Squeeze Theorem, $lim_(h->0) c_h = x$, thus $ G'(x) = lim_(h->0) 1/h integral_x^(x+h) f(t) dif t = lim_(h->0) (c_h) = f(x) $

#align(right)[$square$]
]
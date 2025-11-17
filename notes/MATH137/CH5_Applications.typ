#import "../../preamble.typ": *
#import "@preview/diverential:0.2.0": *

#let Title = "CH 5 - Applications of Derivatives"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== Related Rates

#tip[Steps for Related Rates Questions\

1. Draw diagram 
2. Identitfy *changing* quantities
3. Find *constant* quantities (if possible)
4. Derive equations relating the quantities that are changing
5. *Implicitly differentiate* the key equations
6. Solve for the desired rate of change, substituting in known quantities.
7. *Concluding statement* (and also check units)
]


Example:\

1. Laindon is taking a hot air ballon ride. A giant fan is blowing hot air into the ballon in a rate of $200"m"^3/("min")$. Assuming that at any given point in time the balloon sphere, find the rate at which the radius of the balloon is changing when the diameter is 12 m.\

  ANS: \
  1. Picture: The problem is trivial so the graph is omitted

  2. Changing variable: Volume($"m"^3$), Radius(m), time(t)\

  3. Constant quantities: $dv(V, t) = 200"m"^3/(min)$\

  4. Key Equation: $V = 4/3pi r^3(t)$\

  5. Implicit Differentiation: $dv(V, t) = 4pi r^2(t) dot dv(r, t) $
  
  6. $dv(r, t, eval:r=6) = 1/(4pi(6)^2) dot 200 = 200/(144pi)  = 25/(18pi)"m"/"min"$ \

  7. Concluding statement: When the diameter of the balloon is 12m, the rate of change of the radius is expanding by $25/(18pi) "m"/"min"$ 

\

2. The construction workers building M4 accidentally left a 20 foot ladder propped up against a concrete wall that is 80 feet in height. The base of the ladder begins to slide away from the wall at a rate of 2ft/sec, and the top begins to move down as a result. When the base of the ladder is 14 ft from the wall, how fast is the top of the ladder sliding down the wall?

  ANS: \
  1. Picture is omitted and left as an exercise for the reader
  2. Changing variable: Distance from wall of base of ladder (m), Heing where ladder touches the wall (m)
  3. Constant quantities : $dv(x, t) = 2$
  4. Key Equation: $x^2 + y^2 = 20^2$
  5. Implicit Differentiation: $2x dv(x, t) + 2y dv(y, t) = 0 ==> dv(y, t) = -x/y dv(x, t)$

  6. $dv(y, t) = -(14)/(sqrt(400-14^2))dot 2 = -14/(sqrt(51)) "ft"/"sec"$
  7. Concluding statement: When the base of ladder is 14cm, the top of the ladder is falling at a speed of $14/(sqrt(51)) "ft"/"sec"$


== Extrema

#info[*Extrema*\

Let $f(x)$ be a funciton defined on an interval $I$, and let $c in I$. We say $f$ has 

1. A *global minimum* on $I$ at $x=c$ if $f(c) <= f(x) forall x in I$
2. A *global maximum* on $I$ at $x=c$ if $f(c) >= f(x) forall x in I$
3. A *global extremum* on $I$ at $x=c$ if $f$ has either a global minimum or global maximum.

- Every point on a constant function is both a global minimum and global maximum
- Every global extremum can be a local extremum in some interval

]

Examples:\

1. Find all global extrema of $f(x) = x^2$ on [0, 1)
  - The global minimum be $x = 0$ because $f(0) <= f(x) space forall x in [0, 1)$
  - The global maximum DNE as the end point is missing. That is infinitely numbers lie on the interval [0, 1]

2. Find all global extrema of $f(x) = 1/x$ on $[-1, 1]$

  - The global extrema DNE as $lim_(x->0^-) 1/x = -oo$ and $lim_(x->0^+) 1/x = oo$. 

#info[*Extreme Value Theorem (Existence Thm)*\

Assume that $f(x)$ is continuous on the closed interval $[a, b]$. Then *there exist* two numbers $c_1, c_2 in [a, b]$ s.t. $f(c_1)<= f(x)<=f(c_2) space forall x in [a, b]$. 

In other words, there is a global minimum at $x=c_1$ and a global maximum at $x_c_2$
]

#info[*Local Extrema*\

Let $f$ be a function. We say that $f$ has 

1. a *local minimum* at $x=c$ if there exists an open interval $(a, b)$ containing $c$ such that $f(c)<=f(x) space forall x in (a, b)$
2. a *local maximum* at $x=c$ if there exists an open interval $(a, b)$ containing $c$ such that $f(c) >=f(x) space forall x in (a, b)$
3. a *local extremum* at $x = c$ if there is either a local minimum or a loacl maximum 
]

#warn[Local Extrema
  
If $c$ is an endpoint of the domain of $f$, c can never be a local extremum, even if it is a global extremum
]


#info[*Fermat's Theorem*\

If there is a local extremum for $f(x)$ at $x=c$ and $f'(c)$ exists, hence $f'(c)= 0$. That is we cannot put an open interval around the point.
]

Examples:\

1. Does the converse of Fermat's Theorem hold? That is if $f'(0) = 0$, then is a local extremum at $x=c$. \

  This is false. Let $f(x)= x^3, f'(x)= 3x^2, f'(0)=0$ but is not a local extremum on any interval containing $x=0$

2. Why is it worth mentioning $f'(c)$ has to exist?\
  It is important because it is like saying $f(x)$ is differentiable at $x = c$. If not, let $f(x) = |x|$. $f(x)$ is continuous. It has a local minimum at $x = 0$ but $f'(0)$ DNE as it is not differentiable. 

#info[*Critical Points*\
We say that a function $f$ has a *critical point* at $x = c$ if $f'(c) = 0$ or $f'(c) = $ DNE for $c in$ the domain of $f$. These are our candidates for local extrema.
]
\
\
#tip[*Closed Interval Method*\
Let $f(x)$ be continuous function on $[a, b]$.
1. Calculate $f(a)$ and $f(b)$
2. Find $f'(x)$
3. Find all the critical points of $f$ on $[a, b]$
4. Calculate $f(c)$

]

Example:\

$f(x)=1/3 x^3- 3 root(3, x)$ on [-8, 1]

  $f(-8) = -512/3 -3(-2) = -496/3$\
  $f(1) = 1/3 - 3 = -8/3$

  $f'(x) = x^2 - x^(-2/3)$

  $f'(c) = 0 ==> c^2 - c^(-2/3) = 0 ==> c^(8/3) = 1 ==> c = -1, 1$. 
  $f'(c) = "DNE" ==> c = 0$

  $f(0) = 0 $\

  $f(-1) = -1/3 + 3 = 8/3$
  Global maximum at $x = -1$, global minimum at $f(-8)$
\
\

#info[*Rolle's Theorem (Existence Thm)*\
\
If $f$ is continuous on $[a, b]$ and differentiable on $(a, b)$ and $f(a)=f(b) = k in RR$, then there exists $c in (a, b)$ s.t. $f'(c) = 0$
]
\
\

#proof[
If $f(x)=k space forall x in [a, b]$, any value of $c$ works.

Otherwise, $exists x_0 in [a, b]$ s.t. $f(x_0) != k$. Since $f$ is continuous on $[a, b]$, it attains a maximum/minimum on $[a, b]$. 

Since $f(x_0) != k ==> f(x_0)> k <--> f(a), f(b)$ are not maximum, or $f(x_0)<k <--> f(a), f(b)$ are not minimum. So one of maximum or minimum is in $(a, b)$, thus differentiable at some $c$. 

By Fermat's Theorem, $f'(c)=0$ or $f'(c) = "DNE"$. But $f$ is differentiable on $(a, b) ==> f'(c)$ exists.\

 $therefore f'(c) = 0$ 
]

#info[*Mean Value Theorem (Existence Thm)*\

If $f$ is continuous on $[a, b]$ and differentiable on $(a, b)$, then $exists c in (a, b)$ s.t. $ f'(c) = frac(f(b)-f(a), b-a) $]

#proof[
Let $h(x)=f(x) - [f(a)+frac(f(b)-f(a), b-a)(x-a)] $\

$h(a)= f(a)-[f(a)+ frac(f(b)-f(a), b-a) dot (a-a)]= 0$\

$h(b) = f(b)- [f(a) + frac(f(b)-f(a), b-a) dot (b-a)] = 0$\

Since $h(b) = h(a) ==>^("Rolle's Theorem") exists c in (a, b)$ s.t. $h'(c) = 0$\

That is $h'(x) = f'(x) frac(f(b)-f(a), b-a) ==> f'(x) = frac(f(b)-f(a), b-a)$\

Finally, $h'(c) = f'(c) - frac(f(b)-f(a), b-a) = 0 <--> f'(c) = frac(f(b)-f(a), b-a)$

Tip: the construction of $[f(a)+frac(f(b)-f(a), b-a)(x-a)]$ is the linear approximation of $f(x)$ near $a$
]
\
== Antiderivative
\
#info[*Antiderivative*\

Given a function $f(x)$, an *antiderivative* is a function $F(x)$ s.t. $F'(x) = f(x)$. If $F'(x) = f(x)$ for all $x in I$ for some interval $I$, then $F(x)$ is an antiderivative of $f(x)$ on $I$

e.g. $dvs(-ln(cos x), x)) = -1/cos x sin x = - frac(-sin x, cos x) = tan x$

Note: one function can have infinitely many antiderivatives, that is why we insist *an antiderivative* of $f(x)$
]
\
\

#info[*Constant Function Theorem*\
Suppose that $f'(x) = 0 space forall x in I$ for some interval $I$. Then $exists alpha in RR$ s.t. $f(x) = alpha space forall x in I$
]
\
\
#proof[
Let $x_1<x_2 in I$. \

Since $f$ is differentiable on $I$, it is continuous on $[x_1, x_2]$ and differentiable on $(x_1, x_2)$.\

 By MVT, $exists c in (x_1, x_2)$ s.t. $f'(c) = frac(f(x_2)-f(x_1), x_2-x_1)$ But $f'(c) = 0$ since $f'(x) = 0$ on $I$. 

 Thus, $0 = frac(f(x_2)-f(x_1), x_2-x_1) and x_2-x_1 != 0 ==> f(x_2) - f(x_1) = 0 <==> f(x_2)=f(x_1)$.

 Since $x_1, x_2$ are arbitrary, therefore $f$ is constant on $I$
]

#info[*Antiderivative Theorem*\

Suppose that $F'(x) = G'(x) forall x in I$ for some interval $I$. Then there exists $alpha in RR$ s.t. $F(x)=G(x)+alpha forall x in I$

]

#proof[
Let $h(x) = F(x)-G(x)$. Then $h'(x)=F'(x)-G'(x)= 0$ on $I$.

By the CFT, $h(x) = alpha$ for some $alpha in RR$, so $F(x)-G(x) = alpha  ==>F(x)=G(x)+alpha quad (forall x in I)$
]
\

== First Derivatives
\
#info[*Definition of Increasing/Decreasing*\

Let $I$ be in interval and $x_1, x_2 in I$, then f(x)
- *increasing* on $I$ if $f(x_1)<=f(x_2) space forall x_1<x_2$
- *decreasing* on $I$ if $f(x_1)>=f(x_2) space forall x_1<x_2$
- *strictly increasing* on $I$ if $f(x_1)< f(x_2) space forall x_1<x_2$
- *strictly decreasing* on $I$ if $f(x_1)> f(x_2) space forall x_1<x_2$

Note: a constant function is both increasing and decreasing but not strictly
]

#info[*Increasing/Decreasing Function Theorem*\
Let $I$ be an interval

1. If $f'(x) >= 0 forall x in I$, then $f(x)$ is increasing on $I$ 
2. If $f'(x) > 0 forall x in I$, then $f(x)$ is strictly increasing on $I$ 
3. If $f'(x) <= 0 forall x in I$, then $f(x)$ is decreasing on $I$ 
4. If $f'(x) < 0 forall x in I$, then $f(x)$ is strictly decreasing on $I$ 
]
\
\
\
\
\
\
#proof[ 
Let $x_1<x_2 in I$. $f'(x)>0$ on $I$, so it exists on $I ==> f$ is differentiable on $(x_1, x_2)$, continuous on $[x_1, x_2]$. 

By MVT, $exists c in (x_1, x_2)$ s.t. $f'(x) = frac(f(x_2)-f(x_1), x_2-x_1)$

Given $f'(x)>0 space forall x in I "and" x_1<x_2 "and" f(x_1)<f(x_2)$

Since $x_1, x_2$ are arbitrary, thus $f$ is strictly increasing on $I$
]

Proof for increasing, strictly decreasing and decreasing is similar thus be omitted.

\
Question: If $f$ is strictly increasing on $I ==> f'(x)>0 space forall x in I$?

ANS: No, counterexample $f(x)=x^3$

Question: If $f$ is strictly decreasing on $I ==> f'(x)<0 space forall x in I$?

ANS: No, counterexample $f(x)= -root(3, x)$
\
\
#info[*Bounded Derivative Theorem*\

Let $f(x)$ be continuous on $[a, b]$ and differentiable on $(a, b)$. 

Suppose that $m<=f'(x)<=M space forall x in (a, b)$. Then $ f(a)+m(x-a)<=f(x)<=f(a)+M(x-a) $ $forall x in [a, b]$

]

#proof[
Let $f(x)$ be continuous on $[a, b]$ and differentiable on $(a, b)$.

It also applies to $[a, x_1]$. 

Case1:

For $x_1 in (a, b]$ \

By MVT, $exists space c in (a, x_1)$ s.t. $f'(c)=frac(f(x_1)-f(a), x_1-a)$\

Since $m <= f'(c) <=M$ so $m(x_1-a) <= f(x_1)-f(a)<=M(x_1-a)$.

Then $m(x_1-a) + f(a) <= f(x_1)<=M(x_1-a) + f(a)$

Case 2:

When $x=a, m(x-a) + f(a) = f(a)$ and similar applies to $M(x-a)$. \

Resulting to $f(a) <= f(a) <= f(a)$]
\
\
\
\
\

Example:\

Prove that $sqrt(51) in [7+1/8, 7+1/7]$.\

Let $f(x) = sqrt(x)$ and let $[a, b]$ be [49,64] \

Since $f(x)$ is continuous on $[49, 64]$ and differentiable on $[49, 64]$\

By Bounded Derivative Theorem, $f(a)+m(x-a) <= f(x)<=f(a)+M(x-a)$ \

where $m <= f'(x)<= M$ on $[49, 64] space forall x$.\

$f'(x) = 1/(2sqrt(x)), 1/sqrt(64) <= 1/(2sqrt(x))<= 1/(2sqrt(49)) ==> 7 + 1/2 dot 1/8 (51-49) <= sqrt(51) <= sqrt(49) + 1/2 dot 1/7 (51-49)$\

$ ==> 7+1/8 <= sqrt(51)<= 7 + 1/7$

#info[*Comparison via First Derivative Theorem*\

Assume $f(x)$ and $g(x)$ are continuous at $x=a$ with $f(a)=g(a)$. Then

- $f$ and $g$ are differentiable for $x > a$ and $f'(x)<=g'(x) space forall x>a ==> f(x)<=g(x) space forall x > a$

- $f$ and $g$ are differentiable for $x < a$ and $f'(x)<=g'(x) space forall x<a ==> f(x)>=g(x) space forall x < a$
]

Example: \

Show that $x-1/2 x^2 < ln(1+x) space forall x > 0$

Let $f(x) = x-1/2 x^2, g(x) = ln(1+x)$\

At $x = 0, f(0) = 0, g(0) = 0$, that is $f(0) = g(0)$\

All functions are differentiable on $(0, oo)$\

$f'(x) = 1-x, g'(x)= 1/(1+x)$.\

Since $x>0, (1-x)(1+x) < 1 ==> 1-x^2 < 1 ==> -x^2 < 0$\

Thus by CFDT, $x-1/2 x^2 < ln(1+x) space forall x > 0$

== Second Derivatives

#info[*Concavity and Second Derivative Theorem*\

1.  We say $f$ is *concave up* on an interval $I$ if for all $a, b in I$, the secant line between $(a, f(a))$ and $(b, f(b))$ lies *above* the graph of $f(x)$.

2. We say $f$ is *concave down* on an interval $I$ if for all $a, b in I$, the secant line between $(a, f(a))$ and $(b, f(b))$ lies *below* the graph of $f(x)$.

3. If $f''(x)>0 space forall x$ in an inverval $I$ then $f(x)$ is *concave up* on $I$

4. If $f''(x)<0 space forall x$ in an inverval $I$ then $f(x)$ is *concave down* on $I$
]

Example:\

$f(x) = |x|$ is neither concave up nor concave down as the secant line lies on the graph if $a$ and $b$ are same side of the absolute function. 

#info[*Point of Inflection*\

A point $(c, f(x))$ is called a *point of inflection* of $f(x)$ if $f(x)$ is continuous at $x = c$ and the concavity of $f(x)$ changes at $x = c$

If $f''(x)$ is continuous at $c$ and $(c, f(c))$ is a point of inflection, then $f''(x) = 0 "or DNE"$ 
]

However, the converse is false: $f(x) = x^4, f''(0) = 0$, but the concavity does not change

Examples:\

1. $f(x)=x^3, f'(x)=3x^2, f''(x) = 6x$\

$ f''(x)<0 space forall x in (-oo, 0)$, concave down

$ f''(x)>- space forall x in (0, oo)$, concave up

$f''(x) = 0 ==> 6x = 0 ==> x = 0$. 

2. $g(x)= 1/x, g'(x) = -1/x^2, g''(x) = 2/x^3$.

$ g''(x)<0 space forall x in (-oo, 0)$, concave down

$ g''(x)>- space forall x in (0, oo)$, concave up

$g''(x)$ is discontinuous at $x = 0$, therefore, $x=0$ is not an infleciton point.

#warn[If a function is concave down before $x = c$, and concave up after $x = c$, it is not necessary that there exists an infleciton point. Notably: $f(x) =1/x$]
\
\
== Derivative Tests

#info[*First Derivative Test*\
Let $f(x)$ has a critical point at $x = c$ and suppose that $f(x)$ is continuous at $c$. If there is an interval $(a, b)$ containing $c$ s.t.

1. $f'(x)>=0$ on $(a, c)$ and $f'(x)<=0$ on $(c, b)$, then $f$ has a local maximum at $c$

2. $f'(x)<=0$ on $(a, c)$ and $f'(x)>=0$ on $(c, b)$, then $f$ has a local minimum at $c$

Otherwise $c$ is neither a local maximum nor a local minimum
]

#info[*Second Derivative Test*\
Suppose that $f'(c)=0$ and $f''(x)$ is continuous at $c$, then

1. if $f''(c) < 0$, then there is a local maximum for $f$ a $c$
2. if $f''(c) > 0$, then there is a local minimum for $f$ at $c$
3. if $f''(x) = 0$, then it is inconclusive, that is, there might be a local maximum, a local minimum, or neither.
]
\
\
\
\
*Comparison*:

FDT: 
- Requires an interval, that is points around $c$
- Requires lesser steps of differentiation
- Conclusive as long as the constraints are satisfied


SDT:
- Requires an interval, that is the point at $c$
- Requires more steps of differentiation
- Inconclusive in some certain cases $f''(x) = 0$


Examples:\

1. Classify all critical points of $f(x)=x^3 - 13x+12$

  $f'(x) = 3x^2-13, f''(x) = 6x$

  $f'(x) = 3x^2-13 ==> f'(x)>=0 space forall x in (-oo, -sqrt(13/3)] union [sqrt(13/3), oo)$ \

  and $f'(x)<=0 space forall x in [-sqrt(13/3), sqrt(13/3)$

  $f'(0) < 0, f'(3) > 0, f'(-3)> 0$

  That is, by FDT, we have a local maximum at $x = -sqrt(13/3)$ and a local minimum at $x = sqrt(13/3)$\


  $f''(x) = 6x, f''(x)< 0 space forall x in (-oo, 0), f''(x) > - space forall x in (0, oo)$. \


  By SDT, we have a local maximum at $x = -sqrt(13/3)$ and a local minimum at $x = sqrt(13/3)$\



2. Find all extrema of $f(x) = x root(3, x-4)$ on interval $[0, 5]$\


  $f'(x) = root(3, x-4)+ 1/3 x (x-4)^(-2/3) $\
  
  $ f''(x) = 1/3(x-4)^(-2/3) + 1/3 (x-4)^(-2/3) - 2/9 (x-4)^(-5/3) = 2/3(x-4)^(-2/3)(1-x/(3(x-4)))$\

  $f'(4) = "DNE"$, $f'(x) = 0 <==> 1+x/(3(x-4))<==> x = 3$

  $f'(2), f'(5), f'(3.5)$


== Optimization

== L'Hôpital Rule




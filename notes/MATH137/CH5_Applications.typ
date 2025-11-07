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

If there is a local extremum for $f(x)$ at $x=c$ and $f'(c)$ exists, hen $f'(c)= 0$. That is we cannot put an open interval around the point.
]

Examples:\

1. Does the converse of Fermat's Theorem hold? That is if $f'(0) = 0$, then is a local extremum at $x=c$. \

  This is false. Let $f(x)= x^3, f'(x)= 3x^2, f'(0)=0$ but is not a local extremum on any interval containing $x=0$

2. Why is it worth mentioning $f'(c)$ has to exist?\
  It is important because it is like saying $f(x)$ is differentiable at $x = c$. If not, let $f(x) = |x|$. $f(x)$ is continuous. It has a local minimum at $x = 0$ but $f'(0)$ DNE as it is not differentiable. 

#info[*Critical Points*\
We say that a function $f$ has a *critical point* at $x = c$ if $f'(c) = 0$ or $f'(c) = $ DNE. These are our candidates for local extrema.
]




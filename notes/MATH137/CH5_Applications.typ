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




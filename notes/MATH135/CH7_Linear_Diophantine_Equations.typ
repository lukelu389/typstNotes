#import "../../preamble.typ": *

#let Title = "CH 7 - Linear Diophantine Equations"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

Recall the Extended Euclidean Algorithm\

$ 253x + 143y = d, d = gcd(253, 143) $
#align(center)[
  #table(
      columns: 5,
      align: (center, center, center, center, center),
      stroke: 0.5pt,
      inset: 6pt,
      [$i$], [$x$], [$y$], [$r$], [$q$],
      [$i=1$], [1], [0], [$253$], [0],
      [$i=2$], [0], [1], [$143$], [0],
      [$i=3$], [1], [-1], [110], [1],
      [$i=4$], [-1], [2], [33], [1],
      [$i=5$], [4], [-7], [11], [3],
      [$i=6$], [-13], [23], [0], [3]
  )
]

== Diophantine Equations

#tip[Simplest Linear Diophantine Equation: $a x = b$]\
\
#info[*Linear Diophantine Equation Theorem, Part 1 (LDET 1)*\
For all integers $a, b, "and" c$, with $a$, $b$ both not zero, the linear Diophantine equation $ a x + b y = c $ (in variable $x$ and $y$) has integer solution if and only if $d divides c, "where" d = gcd(a, b)$
]

#proof[
  Let $a, b, c in ZZ; a, b !=0; d = gcd(a, b)$\
  We prove two implications:
  1. $==>$\ Suppose $exists x_0, y_0 in ZZ, a x_0 + b y_0 =c$\
  Since $d = gcd(a, b)$, we have $d divides a, d divides b$.\
  Since $x_0, y_0 in ZZ$, by DIC, $d divides (a x_0 + b y_0)$

  2. $<==$ Suppose $d divides c$. \
  Then by defintion $exists l in ZZ$ s.t $c = l dot d$. \ By Bézout's Lemma, $exists s, t in ZZ$ s.t. \ $a s + b t = d$. Multiply the equation by $l ==> a s l + b t l = d l = a (l s) + b (l t) = c$. \
  Since $s, l, t in ZZ$, we have integer solution to the Diophantine equation, namely $x = l s, y = l t$ 
]
\
\
\

Examples:\
Are there integer solutions to the following linear Diophantine equation:

1. $253 x + 143 y = 11$
ANS: YES $x = 4, y = -7$

2. $253 x + 143 y = 155$
ANS: LDET 1 says there exists a solution if and only if $11 divides 155$.\ However, $11 divides.not 155$. Hence there are no integer solutions

3. $253 x + 143 y = 154$
ANS: LDET 1 says there exists a solution if and only if $11 divides 154$. $11 divides (11 dot 14)$. \
By multipling the equation of example 1 by 14:\
$14 dot (253 x + 143 y) = 14 dot 11 = 253 dot (14x) + 143 dot (14y) = 154, x = 56, y = -98$

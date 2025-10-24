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
#align(right)[$square$]

#info[*Linear Diophantine Equation Theorem, Part 2 (LDET 2)*\
Let $a, b, c$ be integers with $a, b$ both not zero, and define $d = gcd(a, b)$. If $x = x_0$ and $y=y_0$ is one particular integer solution to the linear Diophantine equation $a x+ b y = c$, then the set of all solutions is given by $ {(x, y): x = x_0 + b / d n, y = y_0 + a/d n, n in ZZ} $
]

#proof[\
Let $a, b, c in ZZ$ with $a, b != 0$. Let $d = gcd(a, b)$\
Suppose $x = x_0, y = y_0$ is one particular solution to LDE $a x + b y = c$\

Let $A =  {(x, y): x = x_0 + b / d n, y = y_0 + a/d n, n in ZZ}$\
Let $B = {(x, y): a x + b y = c, x, y in ZZ}$\

We want to show \

1. $A subset.eq B$, suppose $(x, y) in A$, then $x = x_0+ b/d n, y = y_0 + a/d n, n in ZZ$\

Note, since $d divides a , d divides b ==> b/d, a/d in ZZ$\

So $x = x_0 + b/d n in ZZ$ and $y = y_0 + a/d n in ZZ$\

Now substitute in $x, y$ to then LHS of the linear Diophantine equation.\

Then $a x + b y = a (x_0+b/d n) + b (y_0+a/d n) = a x_0 + (a b)/d n + b y_0  - (a b)/d n$\

$==> a x_0 + b y_0 = c$.

$therefore (x, y) in B ==> A subset.eq B$
\

\
2. $B subset.eq A$ consider $(x, y) in B$, then $x, y in ZZ$ and $a x + b y = c$. \

We also have $(x_0, y_0)$ is a solution to the LDE, so $a x_0 + b y_0 = c$\

Substract those equations: $a x+ b y - a x_0 - b y_0 = 0 ==> a(x-x_0) + b (y-y_0) = c$\

Then $a(x-x_0) = -b (y-y_0)$\

Note, since $a, b != 0, d = gcd(a, b) > 0, a/d "and" -b/d in ZZ$\

So $a/d (x-x_0) = -b/d (y-y_0) ==> b/d divides (a/b (x-x_0))$\

By Division by GCD, $gcd(a/d, -b/c) = 1$ \

By Coprimeness and Divisibility, $b/d divides (x-x_0)$.\

By definition of divisibility, $exists n in ZZ, x - x_0 = b/d n$ in other words, $x = x_0 + b/d n$. \

Substitute $y-y_0 = b/d n$ and isolate: $-a/d (b/d n) = - b/d y-y_0 ==> y = y_0 - a/d n$\

$therefore (x, y) in A, "so" B subset.eq A$
]
#align(right)[$square$]
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

4. $343 x + 259 y = 658$\
ANS: Has a solution, $x=-282, y = 376$

To find all solutions, we apply LEDT 2, the solution set is\
 ${(x, y): -282 + 37 n, y = 376 - 49n, n in ZZ}$

5. A customers has a large quantity of dimes and quarters. In how many ways can she pay exactly for an items that costs \$ 2.65? \

ANS: Let $x$ be number of quarters and $y$ be number of dimes. \

Consider LDE: $25 x + 10 y = 265$. We look for non-negative integer solutions. \

By inspection, $x = 9, y = 4$ is one particular solution\

By LDET 2, we have ${x, y}: 9 + 2n, 4 - 5n, n >=0$ We get $n = {-4, -3, -2, -1, 0}$ that satisfy the inequalities. 

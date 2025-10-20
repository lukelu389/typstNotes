#import "../../preamble.typ": *

#let Title = "CH 6- Greatest Common Divisor"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== Theorem BBD
#info[*Bound By Divisibility* \
  $forall a, b in ZZ, "if" b divides a "and" a!= 0, "then" b <= |a|$]

\
== Division Algorithm
\
$forall a in ZZ, b "in positive integers," exists "a unique integers" q "and" r "s.t." a = q b+r "where "0<=r<b$

\
== Greatest Common Divisor

\
Let $a "and" b$ be integer. An integer $c$ is called a *common divisor* of $a "and" b "if" c divides a "and" c divides b$

If $a$ and $b$ are not both zero, an integer $d > 0$ is the *greatest common divisor* of $a$ and be written $d = gcd(a, b)$, when

1. $d$ is a common divisor of $a$ and $b$
2. $forall$ integers $c$, if $c$ is a common divisor of $a$ and $b$, then $c <= d$

If $a$ and $b$ are both zero, we define $gcd(a, b) = gcd(0, 0) = 0$

#warn[Let $a in ZZ$ then
  1. $gcd(a, a) = |a|$
  2. $gcd(0, a) = |a|$
]

Example: \

Let $a, b in ZZ$, prove that $gcd(3a+b, a) = gcd(a, b)$

#proof[
  Let $a, b in ZZ$, let $c = gcd(3a+b, a) "and" d = gcd(a, b)$.\

  1. Suppose $a, b$ are not both 0: \

  Note that $3a+b "and" a$ are not both 0 as well. \

  Then $c divides (3a+b), c divides a$ and $forall k in ZZ$ if $k$ is a common divisor of $3a+b$ and $a$, then $k <= c, c > 0$\

  Similarly, $d divides a, d divides b, "and" forall l in ZZ$ if $l$ is a common divisor of $a$ and $b$ then $l<=d, d >0$ \

  Notice that since $d divides a "and" d divides b$, by DIC, $d divides (3a+b)$.\
  This tells us that $d$ is a common divisor of $3a+b$ and $a$. By definition, $d <= c$. \

  Since $c divides (3a+b)$ and $c divides a$, then by DIC, $c divides ((3a+b)+(-3a)) = c divides b$. \
  Thus $c$ is a common divisor of $a$ and $b$. By definition, $c <= d$

  Since $c <= d "and" d <= c ==> c = d ==> gcd(3a+b, a) = gcd(a, b)$

  2. Suppose $a = b = 0$ then $gcd(3a+b, a) = gcd(a, b) = gcd(0, 0) = 0$
]
#align(right)[$square$]

#info[GCD with Remainders \
  $forall a, b, q, r in ZZ$, if $a = q b + r$ then $gcd(a, b) = gcd(b, r)$]

Euclidean algorithm example: \

1. Compute $gcd(1239, 735)$\
$ 1239 = 1 dot 735 + 504 $ \
GCDWR says $gcd(1239, 735) = gcd(735, 504)$\
$ 735 = 1 dot 504 + 231 $ \
$gcd(735, 504) = gcd(504, 231)$ \
$ 504 = 2 dot 231 + 42 $ \
$gcd(504, 231) = gcd(231, 42)$ \
$ 231 = 5 dot 42 + 21 $\
$gcd(231, 42) = gcd(42, 21)$ \
$ 42 = 2 dot 21 + 0 $ \
$gcd(42, 21) = gcd(21, 0)$ \
$ therefore gcd(1239, 735) = 21 $\

\
2. Find $x, y in ZZ$ s.t. $1239 x+735 y = 21$\
We work backwards from the previous example\

$ 21 = 5 dot 42 + 21 $
$ 21 = 231 - 5 dot (504 - 2 dot 231) $
$ = 11(231) - 5 dot 504 $
$ = 11 dot 735 - 16 dot 504 $
$ = 11 dot 735 - 16 (1239 - 735) $

$ = -16 dot 1239 + 27 dot 735 $
$therefore -16 dot 1239 + 27 dot 735 = 21$

#info[*GCD Characterization Theorem*\
  $forall a, b in ZZ$ and non negative integer $d$, if
  1. $d$ is a common divisor of $a$ and $b$
  2. there exist integers $s$ and $t$ s.t. $a s + b t = d$ \
  Then $d = gcd(a, b)$
]

Example:\
Let $n in ZZ$. Prove that $gcd(n, n+1) = 1$ \
Option 1: Use the definition of GCD\

Option 2: Use GCD Characterization Theorem\
Let $a = n, b = n+1, d = 1$.\

$d divides a "and" d divides b$ because $d=1$ divides every integer\
Let $s =-1, t = 1$ \
These will be provide the certificate of correctness to verify that $d = 1$ is the GCD we are looking for.

$a s + b t = n(-1) + (n+1) 1 = 1$ \
$therefore "by GCD CT" 1 = gcd(n, n+1)$

Option 3: Use GCDWR\
$n+1 = 1 dot n + 1$
\
\

#info[*Bézout's Lemma* \
  $forall a, b in ZZ, exists s, t in ZZ "s.t." a s + b t = d, d = gcd(a, b)$
]
\
\

#info[*Extended Euclidean Algorithm*
  #align(center)[
    #table(
      columns: 5,
      align: (center, center, center, center, center),
      stroke: 0.5pt,
      inset: 6pt,
      [$i$], [$x$], [$y$], [$r$], [$q$],
      [$i=1$], [1], [0], [$a$], [0],
      [$i=2$], [0], [1], [$b$], [0],
      [$i=3$],
      [$x_i = x_(i-2)-q_i x_(i-1)$],
      [$y_i = y_(i-2)-q_i y_(i-1)$],
      [$r_i = r_(i-2)-q_i r_(i-1)$],
      [$floor(r_(i-2)/r_(i-1))$],
    )
  ]
  We stop when $r_i=0$\

  Note that the last $r != 0$ value is the $gcd(a, b)$\

  Remember at each row we have $a x_i + b y_i = r_i$\

  Let $n = i-1$, Then $gcd(a, b) = r_n "and" s=x_n "and" t = y_n$ are certificate of correctness
]
\
\
\
\
\
\
Numerical Examples:\

1. Find $gcd(56, 35)$ and solve for $s, y in ZZ "for" 56x+35y = gcd(56, 35)$ \
\
#align(center)[
  #table(
    columns: 5,
    align: (center, center, center, center, center),
    stroke: 0.5pt,
    inset: 6pt,
    [$i$], [$x$], [$y$], [$r$], [$q$],
    [$i=1$], [1], [0], [56], [0],
    [$i=2$], [0], [1], [35], [0],
    [$i=3$], [1], [-1], [21], [1],
    [$i=4$], [-1], [2], [14], [1],
    [$i=5$], [2], [-3], [7], [1],
    [$i=6$], [-5], [8], [0], [2],
  )
]
So $gcd(56, 35) = 7$. According to EEA, $s = x_5 = 2$ and $t = y_5 = -3$ are certificate of correctness\

Check $56 (2) + 35(-3) = 112 - 105 = 7$ which is true\

2. Find integers $x, y, d$ s.t. $408x + 170y=d = gcd(408, 170)$\
#align(center)[
  #table(
    columns: 5,
    align: (center, center, center, center, center),
    stroke: 0.5pt,
    inset: 6pt,
    [$i$], [$x$], [$y$], [$r$], [$q$],
    [$i=1$], [1], [0], [408], [0],
    [$i=2$], [0], [1], [170], [0],
    [$i=3$], [1], [-2], [68], [2],
    [$i=4$], [-2], [5], [34], [2],
    [$i=5$], [5], [-12], [0], [2],
  )
]

So $gcd(408, 170) = 34$. According to EEA, $s = x_4 = -2$ and $t = y_4 = 5$ are certificate of correctness\

Check $408 (-2) + 170(5) = 34$ which is true

\
#info[
  *Common Divisor Divides GCD*\
  $ forall a, b, c in ZZ, "if" c divides a "and" c divides, "then" c divides gcd(a, b) $
]

Examples:\

1. Prove $forall a, b, c, in ZZ$, if $gcd(a b, c) = 1, "then" gcd(a, c) = gcd(b, c) = 1$

#proof[
  Let $a, b, c in ZZ$. Assume that $gcd(a b, c) = 1$.\
  By BL, $exists s, t in ZZ$ s.t. $a b dot s + c dot t = 1$\
  $a (b s) + c t = 1$ \
  $b(a s) + c t = 1$ \
  Since $a, b, s, t in ZZ, b s in ZZ "and" a s in ZZ$, 1 can be expressed as an integer combination of $a$ and $c$, as well as an integer combination of $b$ and $c$.\
  Meanwhile, 1 is clearly a common divisor of $a, c$ and $b, c$. Since $1 divides x forall z in ZZ$. \
  $therefore "By GCDCT", gcd(a, b) = 1 "and" gcd(b, c) = 1$
]
#align(right)[$square$]

2. Is converse of 1. true?
\
== Prime Numbers
\
#tip[ Two integers $a, b$ are *comprime* if $gcd(a, b) = 1$] \

#info[*Coprimeness Characterization Theorem*\
  $ forall a, b in ZZ, gcd(a, b) = 1 <==> exists s, t in ZZ "s.t." a s + b t = 1 $]

#info[*Division by the GCD*\
  $ forall a, b in ZZ, "not both zero", gcd(a/d, b/d) = 1 "where" d = gcd(a, b) $]

#info[*Comprimeness and Divisibility*\
  $ forall a, b, c in ZZ, "if" c divides a b "and" gcd(a, c) = 1, "then" c divides b $]

#info[Evey natural number $n > 1$ can be written as a product of primes]

#proof[
  We will prove that the open setnence $P(n):$ the number $n$ can be wirtten as a product of primes is true for all naturanl numbers $n>$ 1 by strong induction. \

  Base case: $n=2 ==> 2=2$, so $P(2)$ is true. \

  Induction Step: \
  Let $k in NN, k >= 2$, assume that $P(2) and P(3) and ... and P(k)$ is true. That is $forall i in 2, ..., k, i$ can be expressed as a product of primes.\
  Consider $k+1$: \
  If $k+1$ is prime, then $k+1$ is already a product of primes, so $P(k+1)$ is true. \
  If $k+1$ is composite, meaning $exists s, r in NN$ with $2<=s, r < k+1 ==> 2 <= s, r <= k$ s.t. $k+1 = r dot s$. By I.H., both $s, r$ can be written as a product or primes. That is $P(k+1)$is true. \
  By Principle of Strong Induciton, $P(n)$ is true $forall n in NN, n >= 2$
]
#align(right)[$square$]
\

#info[*Euclid's Lemma*\
  $forall a, b in ZZ, "and prime numbers" p, p divides a b ==> p divides a or p divides b$  \
  \
  *Generalized Euclid's Lemma*\
  $"Let" p "be a prime number", n in NN, "and" a_1, a_2, ..., a_n in ZZ, p divides (a_1 a_2 ... a_n) ==> p divides a_i "for some" i = 1, 2, ..., n$
]

#info[*Unique Prime Factorization*\
  Every natural number $n > 1$ can be written as a product of primes factors uniquely, apart from the order of factors
]
\
\
== Prime Factorization and GCD
\
#info[*Divisors From Prime Factorization* \
  Let $n$ and $c$ be positive integers, and let $ n = p_1^alpha_1 p_2^alpha_2 p_3^alpha_3 ... p_k^alpha_k $ be a way to express $n$ as a product of the distinct primes $p_1, p_2, ..., p_n$, where some or all of exponents may be zero. The integer $c$ is a positive divisor of $n <==> c$ can be represented as a product $ c = p_1^beta_1 p_2^beta_2 ... p_k^beta_k , "where" 0 <= beta_i <= alpha_i "for" = 1, 2, ..., k $
]
\
Example:\
Let $a, b in ZZ$. Prove that $a^2 divides b^2 <==> a divides b$\

Let $a, b in ZZ$.\

1. $(<==) "Assume" a divides b$. By definition, $exists k in ZZ, b = k a ==> b ^2 = k^2 a ^2$.\ $ therefore a divides b ==> a^2 divides b^2 $

2. $(==>) "Assume" a^2 divides b^2$

- Case 1: If $a = 0 ==> a^2 = 0; a^2 divides b^2 ==> 0 divides b^2$. \
$quad quad quad quad therefore exists l in ZZ, b^2 = 0 dot l ==> b^2 = 0 ==> b = 0 ==> a divides b$

- Case 2: If $a != 0 "and" b = 0$ the statement $a divides b "becomes" a divides 0$, which is true $forall a in ZZ.$ \ $ quad quad quad therefore a divides b$

- Case 3: If $a != 0, b != 0$, then $|a| > 0, |b| > 0$.\
$ quad quad quad quad |b| = p_1^beta_1 ... p_k^beta_k$ and $|a| = p_1^alpha_1 ... p_k^alpha_k, p_1, ... p_k$ is a list of all distinct primes that are factors of $ quad quad quad quad |a| "and" |b|$. then $b^2 =  p_1^(2beta_1) ... p_k^(2beta_k), a^2 = p_1^(2alpha_1) ... p_k^(2alpha_k)$.\
$quad quad quad quad "Now, since" a^2 divides b^2,  "by DFPF" ,0<= 2 alpha_i <= 2beta_i forall = 1, ..., k$. \ $ quad quad quad quad "Dividing" "by" 2,  0 <= alpha_i <= beta_i$. By DFPF, $a divides b$
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

#warn[Let $a in ZZ $then
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
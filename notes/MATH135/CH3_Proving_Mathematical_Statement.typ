#import "../../preamble.typ": *

#let Title = "CH 3 - Proving Mathematical Statements"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")
== Definitions

1. *Proposition* — a statement to be proved true

2. *Theorem* — a significant proposition 

3. *Lemma* — a subsidiary proposition

4. *Corollary* — a proposition that follows almost immediately from a theorem


== Proving Universally Quantified Statements

1. Choose a representative object $x in S$ (let $x$ be arbitrary in $S$)

2. Show the open sentence is true for this $x$ using facts about $S$

Example

Prove $forall x, y in RR, x^4 + x^2 y + y^2 >= 5 x^2 y - 3 y^2$

#discovery[
If $x^4 + x^2 y + y^2 >= 5 x^2 y - 3 y^2$
=> $x^4 - 4 x^2 y + 4 y^2 >= 0$
=> $(x^2 - 2y)^2 >= 0$

This is a discovery, not a proof
]

#proof[
Let $x, y in RR$ be arbitrary

Then $(x^2 - 2y)^2 >= 0$

So $x^4 - 4 x^2 y + 4 y^2 >= 0$

Hence $x^4 + x^2 y + y^2 - 5 x^2 y + 3 y^2 >= 0$


$forall x, y in RR, x^4 + x^2 y + y^2 >= 5 x^2 y - 3 y^2$
]


== Disprove Universally Quantified Statement

To disprove $forall x in S, P(x)$, find $x in S$ with $not\, P(x)$

Example

Disprove $forall x in RR, x^2 = 5$
#proof[
Let $x = 0$

Then $x^2 = 0 != 5$

$exists x in RR$ with $x^2 != 5$, so $forall x in RR, x^2 = 5$ is false
]

\
== Prove Existentially Quantified Statement

Find a specific $x in S$ that makes the sentence true

Example 1

Prove $exists m in ZZ$ s.t. $frac(m - 7, 2 m + 4) = 5$

#proof[
$m - 7 = 5(2m + 4)$
=> $m - 7 = 10m + 10$
=> $-27 = 9m$
=> $m = -3$
]


Let $m = -3$ and note $2m + 4 = -2 != 0$

Then $frac(m - 7, 2 m + 4) = frac(-3 - 7, 2(-3) + 4) = frac(-10, -6 + 4) = frac(-10,-2) = 5$



$exists m in ZZ$ with $frac(m - 7, 2 m + 4) = 5$


Example 2

Prove there exists a perfect square $k$ s.t. $k^2 - frac(31,2) k = 8$

#proof[
Let $k = 16 = 4^2$

Then $k^2 - frac(31, 2) k = 256 - 248 = 8$

There exists a perfect square $k$ with $k^2 - frac(31, 2) k = 8$
]

== Disprove Existentially Quantified Statement

To disprove $exists x in S, P(x)$, prove $forall x in S, not\, P(x)$

Example

Disprove $exists x in RR$ s.t. $cos(2x) + sin(2x) = 3$

#proof[
For all $x in RR$, we have $-1 <= cos(2x) <= 1$ and $-1 <= sin(2x) <= 1$

So $-2 <= cos(2x) + sin(2x) <= 2$

Thus $cos(2x) + sin(2x) != 3$ since $3 ∉ [-2, 2]$
]


$forall x in RR, cos(2x) + sin(2x) != 3$  
i.e. $not\,(exists x in RR, cos(2x) + sin(2x) = 3)$



== Prove/Disprove Nested Quantified Statement

Consider examples

1. $forall x in RR, exists y in RR, x^3 - y^3 = 1$

2. $exists x in RR, forall y in RR, x^3 - y^3 = 1$

1. True


   Let $x in RR$ and set $y = root(3, x^3 - 1)$

   Then $x^3 - y^3 = x^3 - (root(3, x^3 - 1))^3 = x^3 - (x^3 - 1) = 1$



   $forall x in RR, exists y in RR, x^3 - y^3 = 1$

\
2. False


   The negation is $forall x in RR, exists y in RR$ with $x^3 - y^3 != 1$

   Let $x in RR$ and choose $y = x$

   Then $x^3 - y^3 = x^3 - x^3 = 0 != 1$


   $not (exists x in RR, forall y in RR, x^3 - y^3 = 1)$


== Prove/Disprove Implication
#important[
1. To prove the implication $A ⇒ B$, assume that the hypothesis A is true, and use this assumption to show that the conclusion B is true. The hypothesis A is what you start with. The conclusion B is where you must end up.
2. To prove the universally quantified implication $∀x∈S, P(x) => Q(x)$:
Let $x$ be an arbitrary element of $S$, assume that the hypothesis $P(x)$ is true, and use this assumption to show that the conclusion Q(x) is true.
]

Example: \
Prove that $forall$ integers $K$, if $K^5$ is a perfect square, then $9K^19$ is a perfect square. 

#proof[
   Let $K in ZZ$. \
   Assume that $K^5$ is a perfect square. \
   Then $exists l in ZZ$ such that $K^5 = l^2$. \
   Now, $9K^19 = 9(K^5)^3K^4 = 9(l^2)^3K^4 = 3^2(l^3)^2(K^2)^2 = (3l^3K^2)^2$

   Since 3, $l$, and $K$ are integers, we have $3l^3K^2 in ZZ$ so $(3l^3K^2)^2$ is a perfect square, that is, $9K^19$ is a perfect square. \ 

   $therefore K in ZZ$, if $K^5$ is a perfect square, then $(9K^19)$ is a perfect square.
]

== Divisibility of Integers
#important[
An integer $m$ *divides* an integer $n$, and we write $m divides n$, if there exists an integer $k$ so that $n = k dot m$

If $m divides n$ then we say that $m$ is a *divisor* of $n$, $n$ is the multiple of $m$
]

\
Examples\
$7 divides 56$ since $56 = 7 dot 8$ \ 
$7 divides -56$ since $-56 = 7 dot. -8$ \ 
$56 divides.not 7$ we need to write $7 = 56k, k in RR$\ 
$a divides 0$ where $a in ZZ$ since $0 = a dot 0, forall z in ZZ$
$0 divides.not a forall a in ZZ$ except $a = 0$, we can write $0 = 0 dot 0$


Prove $forall m in ZZ$, if $14 divides m$, then $7 divides m$ \
Assume $14 divides n$, Then (by definition), $exists k in ZZ, n = 14k$ \
Then $m = 7 dot 2 dot k = 7 dot 2k$\
Since $k in ZZ$, so is $2k in ZZ$\
$therefore 7 divides m$ 

=== 1. Transivity of Divisibility (TD)
#important[
$forall a, b, c, in ZZ$, if $a divides b$ and $b divides c$, then $a divides c$
]
Something maybe useful \ 
$forall a, b, c in ZZ$, if $a divides b$ or $a divides c$, then $a divides b c$

#proof[
   Let $a, b, c, in ZZ$\
   Suppose $a divides b$, $b divides c$ \
   Then, \
   $exists n in ZZ, b = a dot n$ \
   $exists n in ZZ, b = c dot m$\
   Now, $c = b dot m = a dot n dot m = a(n m)$ 
   Since $n, m in ZZ$ then $n dot m in ZZ$, and so $a divides c$
]
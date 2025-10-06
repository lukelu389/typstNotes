#import "../../preamble.typ": *

#let Title = "CH 3 - Proving Mathematical Statements"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")
= Definitions

1. *Proposition* — a statement to be proved true

2. *Theorem* — a significant proposition 

3. *Lemma* — a subsidiary proposition

4. *Corollary* — a proposition that follows almost immediately from a theorem


= Proving Universally Quantified Statements

1. Choose a representative object $x in S$ (let $x$ be arbitrary in $S$)

2. Show the open sentence is true for this $x$ using facts about $S$

Example

Prove $forall x, y in RR, x^4 + x^2 y + y^2 >= 5 x^2 y - 3 y^2$

#discovery[
If $x^4 + x^2 y + y^2 >= 5 x^2 y - 3 y^2$
$=>$ $x^4 - 4 x^2 y + 4 y^2 >= 0$
$=>$ $(x^2 - 2y)^2 >= 0$

This is a discovery, not a proof
]

#proof[
Let $x, y in RR$ be arbitrary

Then $(x^2 - 2y)^2 >= 0$

So $x^4 - 4 x^2 y + 4 y^2 >= 0$

Hence $x^4 + x^2 y + y^2 - 5 x^2 y + 3 y^2 >= 0$


$forall x, y in RR, x^4 + x^2 y + y^2 >= 5 x^2 y - 3 y^2$
]


= Disprove Universally Quantified Statement

To disprove $forall x in S, P(x)$, find $x in S$ with $not P(x)$

Example

Disprove $forall x in ZZ, x^2 = 5$
#proof[
Let $x = 0$

Then $x^2 = 0 != 5$

$exists x in RR$ with $x^2 != 5$, so $forall x in ZZ, x^2 = 5$ is false
]

\
= Prove Existentially Quantified Statement

Find a specific $x in S$ that makes the sentence true

Example 1

Prove $exists m in ZZ$ s.t. $frac(m - 7, 2 m + 4) = 5$

#proof[
$m - 7 = 5(2m + 4)$
$=>$ $m - 7 = 10m + 10$
$=>$ $-27 = 9m$
$=>$ $m = -3$
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

= Disprove Existentially Quantified Statement

To disprove $exists x in S, P(x)$, prove $forall x in S, not P(x)$

Example

Disprove $exists x in RR$ s.t. $cos(2x) + sin(2x) = 3$

#proof[
For all $x in RR$, we have $-1 <= cos(2x) <= 1$ and $-1 <= sin(2x) <= 1$

So $-2 <= cos(2x) + sin(2x) <= 2$

Thus $cos(2x) + sin(2x) != 3$ since $3 ∉ [-2, 2]$
]


$forall x in RR, cos(2x) + sin(2x) != 3$  
i.e. $not\,(exists x in RR, cos(2x) + sin(2x) = 3)$



= Prove/Disprove Nested Quantified Statement

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


= Prove/Disprove Implication
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

= Divisibility of Integers
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

== 1. Transivity of Divisibility (TD)
#important[
*Proposition:
$forall a, b, c, in ZZ$, if $a divides b$ and $b divides c$, then $a divides c$*
]
Some similar proposition \ 
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

== 2. Divisibility of Integer Combination (DIC)

#important[
*Proposition: $forall a, b, c in ZZ$, if $a divides b$ and $a divides c$, then for all integers $x$ and $y$, $a divides (b x+ c y)$*
]
#proof[
Let $a, b, c in ZZ$ \
Assume $a divides b "and" a divides c$. \
Then $exists k, l in ZZ, b = k a "and" c = l a$
Let $x, y in ZZ$ \
Then $b x + c y = k a x + l a y = a(k x + l y)$
Since $k, x, l, y in ZZ$, we have $k x + l y in ZZ$. 
By definition, it means $a divides (b x + c y)$ \
Q.E.D.
]

\

= Prove of Contrapositive
Example:
$forall x in ZZ$ if $x^2+4x-2$ is odd, then $x$ is odd

#proof[
   Let $x in ZZ$, we prove the implication by proving the contrapositive.\
   Assume $x$ is even.\
   Then $k in ZZ, x = 2k$\
   $x^2+4x-2 = (2k)^2+4(2k)+2 = 2(2k^2+4k-1)$ \
   Since $k in ZZ$, $2(2k^2+4k-1) in ZZ$, so the contrapositive is true.\
   Therefore the original statement is also true
]
#align(right)[$square$]

\
#important[
   $A => (B or C) equiv ((A and not(B)) => C)$
]
Example: 

$forall x in RR$, if $x^2-7x+12>=0$, then $x <=3$ or $x>4$

#proof[
   Proof 1: \
   Let $x in RR$. \
   Assume $x^2-7x+12>=0 and x > 3$. \
   Notice $x^2-7x+12 (x-3)(x-4)$, so the inequality can be rewritten as $(x-3)(x-4) >= 0$.\
   Since $x>=3$, then $x-3>0$, so $(x-3)(x-4)>=0$, we must have $x - 4>=0$. Thus $x>=4$.
   We have shown $forall x n RR$, if $x^2-7x+12>=0$ and $x>3$ then $x>=4$, which is logically equivalent to the original statement.
]
#align(right)[$square$]

#proof[
   Proof 2: \
   The contrapostive is $forall x in RR, ((x>3) and (x<4)) => x^2-7x+12<0$
   The inequality becomes $(x-3)(x-4)<0$. The solution set is $(3, 4)$. The contrapositive is true, thus the original statement is true.
]
#align(right)[$square$]

= Proof by Contradiction
\
Let $A$ be a statement, Note that either $A "or" not A$ must be false, so the compound statement $A and (not A)$ is always false. The statement $A and (not A)$ is true is called a contradiction.

Example: \
Proof that there is no largest integer
#proof[
   In order to obtain a contradiction, let us assume that there is a largest integer. Call this integer N. Then, $forall n in ZZ, N >= n$. \* \
   Now let $n = N+1$, since $N, i in ZZ$, we have $N+1 in ZZ$,
   so by \*, $N>=N+1$, this implies $ 0 >= 1$. 
   This is an contradiction. So the assumption that there is a largest integer must be false. \
   $therefore$ There is no largest integer. 
]
#align(right)[$square$]

Proof that $sqrt(2)$ is irrational: \
#proof[
   Assume, for the sake of contradiction, that $sqrt(2)$ is rational, we have $sqrt(2) in QQ$ and $sqrt(2) = a / b$ where $a, b in ZZ$ and $b != 0$. We also can assume $sqrt(2)$ is positive. It also safe to say that $a "and" b$ cannot be both even.
   [Proof of $a$ is always even and $b$ is always even is omitted]
   Contradiction. Thus $sqrt(2)$ must be irrational
]

== Proving Uniqueness
\ 
There is a unique element $x in S$ s.t. $P(x)$ is true.

Prove that there is at least one element $x in S$ s.t. $P(x)$ is true. 

1. Assume that $P(x)$ and $P(y)$ are true for $x, y in S$ and prove that this assumption leads to the conclusion $x=y$
2. Assume that are true for distinct $x, y in S$ and prove this assumption leads to a contradiciton

Example:

$forall a, b in ZZ$, if $a != 0$ and $a divides b$, then there is a unique integer $k$ s.t. $b = k a$

#proof[
Let $a, b in ZZ$, and assume $a!=0$ and $a divides b$. \
By defintion, $exists y in ZZ, b = k a$.
Now, to prove uniqueness, assume $exists, k, l in ZZ, b = k a "and" b = l a$
Then $a(k-l) = 0$, given $a!=0$, then $k - l = 0 => k = l$. $therefore k$ is unique.
]

#align(right)[$square$]


= Prove If and Only If Statements
\
To prove the an if and only if statment, we have this logical equivalence. Proving two implication will result the proof of the if and only if statement.
$ (A <==> B) equiv ((A ==> B) and (B ==> A)) $

Example:  \
Prove $forall x, in RR, "with "x, y >=0, x =y <==> (x+y)/2 = sqrt(x y)$

#proof[
$"Let" x, y "be arbitrary non-negative real numbers."$ 

$ quad ("i")  (==>) "Assume" x = y, "then" (x+y)/2 = (2x)/2 = 2, "and" sqrt(x y) = sqrt(x x) = x "as" x>= 0$

$quad $Therefore $(x+y)/2 = sqrt(x y) "we have shown the implication: if" x = y "then" (x+y)/2 = sqrt(x y) $

$quad ("ii") (<==) "Assume" (x+y)/2 &= sqrt(x y)$ \
$quad "then" frac((x+y)^2, 4) &= x y$ \
$quad "This implies" frac(x^2+2x y+y^2, 4) &= x y$ \
$quad "then" x^2+2x y = y^2 = 4x y$ \
$quad x^2 -2x y + y^2 = 0, "means" (x-y)^2 = 0, "so", x-y = 0, "implies" x = y$
We have proved $"if" (x+y)/2 = sqrt(x y) "then" x = y$.\

Therefore we have shown that $forall x, in RR, "with "x, y >=0, x =y <==> (x+y)/2 = sqrt(x y)$ 
#align(right)[$square$]
]


Consider a triangle \
In $triangle A B C$, prove that $b = c cos A <==> angle C= 90 degree$.
#proof[
   (i) $(==>)$ Assume $b = cos A$ then $angle C = 90 degree$. \ 
   $quad a^2 = b^2+c^2 - 2a b cos C$\
   $quad a^2 = b^2 + c^2 - 2a b => a^2 - b^2 - c^2 c^2 - b^2 $ \
   $quad c^2 = a^2 + b^2, "implies the triangle is must be a right triagle"$\
   (ii) $(<==)$ Assume $angle C = 90 degree$ then $b = c cos A$
   $quad "Then" a^2 + b^2 = c^2, a^2 + c^2 cos^2 A = c^2 $
]

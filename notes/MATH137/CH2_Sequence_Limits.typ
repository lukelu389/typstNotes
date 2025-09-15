#import "../../preamble.typ": *

#let Title = "CH 2 — Sequence and Limits"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== Triangle Inequality

$ |x - y| <=|x - z| + |z - y| $
for $x, y, z in RR$

Idea: the straight-line distance is shortest. \
Without loss of generality assume $x <= y$; swapping $x,y$ preserves the statement.

Number-line proof by cases:

- Case 1 $z <= x <= y$: $|x - y| <= |z - y| <= |x - z| + |z - y|$

- Case 2 $x <= z <= y$: $|x - y| = |x - z| + |z - y|$

- Case 3 $x <= y <= z$: $|x - y| <= |x - z| + |z - y|$

=== Triangle Inequality 2 

For all $a,b in RR$

$ |a + b| <= |a| + |b| $

Proof: \
apply the triangle inequality to $x=a$, $y=-b$, $z=0$.
\

=== Quick check

Is $|a - b| <= |a| - |b|$ for all $a,b$ ?\
No\
Example: \
$a=10$, $b=-9$ gives $|10-(-9)| = 19$, while $|10| - |-9| = 1$\
Hence this statement is false.

== Interval translations

1. $|x - a| < delta => x in (a - delta, a + delta)$

2. $|x - a| <= delta => x in [a - delta, a + delta]$

3. $0 <= |x - a| <= delta => x in (a - delta, a) union (a, a + delta)$

== Practice

1) Solve $|2x - 5| < 3$

$-3 < 2x - 5 < 3 => 1 < x < 4$

*Answer*: $x in (1, 4)$


2) Solve $2 < |x + 7| <= 3$

Split into $|x+7| > 2$ and $|x+7| <= 3$

*Answer:* $x in [-10, -9) union (-5, -4]$


3) Solve $frac(|x+2|, |x-2|) > 5$

Consider regions $(-∞,-2)$, $(-2,2)$, $(2,∞)$ and track signs of $x+2$ and $x-2$

*Answer*: $x in (4/3, 2) union (2, 3)$

== Infinite Sequences

A sequence is an ordered list $a_1, a_2, a_3, dots$; write $(a_n)_{n=1}^{∞}$

A subsequence chooses indices $n_1 < n_2 < dots$, yielding $a_{n_1}, a_{n_2}, dots$

The tail with cutoff $k$ is $a_k, a_{k+1}, a_{k+2}, dots$

=== Convergence (definition)
#important[
We say $lim_{n->∞} a_n = L$ if for every $epsilon > 0$ there exists $N$ such that
$n > N => |a_n - L| < epsilon$
]
Equivalent formulations:

- Every interval $(L - epsilon, L + epsilon)$ contains a tail of $(a_n)$

- Only finitely many terms lie outside $(L - epsilon, L + epsilon)$

- More generally, any open interval $(a,b)$ containing $L$ contains a tail

=== Examples

1) Show $lim_{n->∞} frac(1, root(3, n)) = 0$

Choose $N = frac(1, epsilon^3)$

Then $n > N => | frac(1, root(3, n)) | < epsilon$ \



2) Show $lim_{n->∞} frac(3n^2 + 2n, 4n^2 + n + 1) = frac(3, 4)$

Estimate $| frac(3n^2 + 2n, 4n^2 + n + 1) - frac(3, 4) | <= frac(5, 16n + 4)$

Pick $N > frac(5, 16 epsilon) - frac(1, 4)$ \ 


=== Theorem (Equivalent definitions of the limit of a sequence)
#important[
For a sequence $(a_n)$ and a number $L$, the following are equivalent

1) $lim_{n->∞} a_n = L$

2) For every $epsilon > 0$, the interval $(L - epsilon, L + epsilon)$ contains a tail of $(a_n)$

3) For every $epsilon > 0$, only finitely many $n$ satisfy $|a_n - L| >= epsilon$

4) Every interval $(a,b)$ containing $L$ contains a tail of $(a_n)$

5) Given any interval $(a,b)$ containing $L$, only finitely many terms of $(a_n)$ lie outside $(a,b)$
]
\
*Example 1*

Show $lim_{n->∞} frac(1, root(3, n)) = 0$

Side work:

$| frac(1, root(3, n)) | < epsilon => frac(1, root(3, n)) < epsilon => root(3, n) > frac(1, epsilon) => n > frac(1, epsilon^3)$

#proof[

Let $epsilon > 0$ and choose $N = frac(1, epsilon^3)$

If $n > N$ then $| frac(1, root(3, n)) | < frac(1, root(3, N)) = frac(1, root(3, frac(1, epsilon^3))) = epsilon$
]

*Example 2)*

Prove $lim_{n->∞} frac(3n^2 + 2n, 4n^2 + n + 1) = frac(3, 4)$

Rough work

$ | frac(3n^2 + 2n, 4n^2 + n + 1) - frac(3, 4) |
  = frac(|5n - 3|, 16n^2 + 4n + 4)
  <= frac(5n, 16n^2 + 4n)
  = frac(5, 16n + 4) $

#proof[
Given $epsilon > 0$, pick $N > frac(5, 16 epsilon) - frac(1, 4)$

Then for $n > N$

$ | frac(3n^2 + 2n, 4n^2 + n + 1) - frac(3, 4) |
  < frac(5, 16n + 4)
  <= frac(5, 16N + 4)
  < epsilon $
]


== Limits
\
Thinking quesiton: can a sequence converge to two different limits $L != M$?\
No, we are saying then $epsilon < frac(|L-M|, 2)$\
If $a_n -> L$ a tail of the sequence lies in $(L-epsilon, L+epsilon)$ so only finite many terms can lie in the interval $(M-epsilon, M+epsilon)$, that is $a_n arrow.r.not M$

#important[
  *Theorem (Uniqueness of Limits)*: \
  Let ${a_n}$ be a sequence. If ${a_n}$ has limit $L$, then the value $L$ is unique.
  \
  \

  We say that a sequence *diverges to $infinity$* if for every $m>0$, there exists $N in NN$ such that for all $n>N, a_n>m$.
  \
  We say that a sequence *diverges to $infinity$* if any interval of the form $(m, epsilon)$ for some $m> 0$ contains a tail of ${a_n}$. We write that $lim_(n->oo) a_n = infinity$
\
\
  We say that a sequence *diverges to $-infinity$* if for every $m<0$, there exists $N in NN$ such that for all $n>N, a_n<m$

   We say that a sequence *diverges to $-infinity$* if any interval of the form $(m, epsilon)$ for some $m < 0$ contains a tail of ${a_n}$. We write that $lim_(n->oo) a_n = -infinity$\

  ]
\

Thinking questions: 
1. If a seuqnce consists of non-negative terms, is the limit non-negative? \
    ANS: YES
    Suppose not, then $a_n -> L$, $a_n > 0, forall n$. Consider $epsilon < frac(|L|, 2)$. Then $(L-epsilon, L+epsilon)$ only contains negative numbers, so it can't include a tail of $a_n$, contradiction. 
2. If a sequence consists of positive terms, is the limit positive? \
    ANS: NO,
    consider the sequence ${1/n}$, $lim_(n->oo) 1/n = 0$

3. $lim_(n->oo) a_n + b_n = a + b$
4. $lim_(n->oo) a_n b_n = a b$
5. $lim_(n->oo) a_n / b_n = a / b, b!= 0$
6. If $a_n>=0 forall n, alpha>0$, then $lim_{n-> infinity} a_n^alpha = a^alpha$
7. For any $k in NN, lim_(n->oo) = a_n$




Examples:
Prove that $lim_{n->infinity$
Let $m>0$ and consider the interval $m, infinity$. If $n>root(3, m)$ then $n^3>m$ and ao $n^3 in (m, infinity)$. So choose $k = ceil(root(3, m))+1$, then the tails lies in $(m, infinity)$

=== Limit Laws
#important[
  Let ${a_n}, {b_n}$ be sequences with $lim_(n->oo) a_n = a$, $lim_(n->oo) b_n = b$ for some $a, b in RR$ then:
  1. For any $c in RR$, if $a_n = c$ for all $n$ then $c=a$
  2. For any $c in RR$, if $lim_(n->oo) c a_n = c a$
]

Prove the SUm of Sequences Rule
#proof[
  $a_n -> a, b_n->b$\
  $forall epsilon > 0, exists M , N in RR, forall n > M, n > N, |a_n-a|<epsilon, |b_n-b|< epsilon$\
  $|(a_n+b_n)-(a+b)| = |(a_n-a)+(b_n-b)| <= |a_n-a| + |b_n+b|< epsilon/2 + epsilon/2 = epsilon$
]
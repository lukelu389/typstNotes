#import "../../preamble.typ": meta, set-title

#let Title = "CH 2 — Inequalities and Limits"
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

We say $lim_{n->∞} a_n = L$ if for every $epsilon > 0$ there exists $N$ such that

$n > N => |a_n - L| < epsilon$

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

For a sequence $(a_n)$ and a number $L$, the following are equivalent

1) $lim_{n->∞} a_n = L$

2) For every $epsilon > 0$, the interval $(L - epsilon, L + epsilon)$ contains a tail of $(a_n)$

3) For every $epsilon > 0$, only finitely many $n$ satisfy $|a_n - L| >= epsilon$

4) Every interval $(a,b)$ containing $L$ contains a tail of $(a_n)$

5) Given any interval $(a,b)$ containing $L$, only finitely many terms of $(a_n)$ lie outside $(a,b)$


*Example 1*

Show $lim_{n->∞} frac(1, root(3, n)) = 0$

Side work:

$| frac(1, root(3, n)) | < epsilon => frac(1, root(3, n)) < epsilon => root(3, n) > frac(1, epsilon) => n > frac(1, epsilon^3)$

Formal proof:

Let $epsilon > 0$ and choose $N = frac(1, epsilon^3)$

If $n > N$ then $| frac(1, root(3, n)) | < frac(1, root(3, N)) = frac(1, root(3, frac(1, epsilon^3))) = epsilon$


*Example 2)*

Prove $lim_{n->∞} frac(3n^2 + 2n, 4n^2 + n + 1) = frac(3, 4)$

Estimate:

$ | frac(3n^2 + 2n, 4n^2 + n + 1) - frac(3, 4) |
  = frac(|5n - 3|, 16n^2 + 4n + 4)
  <= frac(5n, 16n^2 + 4n)
  = frac(5, 16n + 4) $

Given $epsilon > 0$, pick $N > frac(5, 16 epsilon) - frac(1, 4)$

Then for $n > N$

$ | frac(3n^2 + 2n, 4n^2 + n + 1) - frac(3, 4) |
  < frac(5, 16n + 4)
  <= frac(5, 16N + 4)
  < epsilon $

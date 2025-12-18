#import "../../../preamble.typ": *

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

A sequence is an ordered list $a_1, a_2, a_3, dots$; write ${a_n}_(n=1)^(infinity)$

A subsequence chooses indices $n_1 < n_2 < dots$, yielding $a_(n_1), a_(n_2), dots$

The tail with cutoff $k$ is $a_k, a_(k+1), a_(k+2), dots$

=== Convergence (definition)
#important[
We say $lim_(n->∞) a_n = L$ if for every $epsilon > 0$ there exists $N$ such that
$n > N => |a_n - L| < epsilon$
]

=== Theorem (Equivalent definitions of the limit of a sequence)
#important[
For a sequence $(a_n)$ and a number $L$, the following are equivalent

1) $lim_(n->∞) a_n = L$

2) For every $epsilon > 0$, the interval $(L - epsilon, L + epsilon)$ contains a tail of ${a_n}$

3) For every $epsilon > 0$, only finitely many $n$ satisfy $|a_n - L| >= epsilon$

4) Every interval $(a,b)$ containing $L$ contains a tail of ${a_n}$

5) Given any interval $(a,b)$ containing $L$, only finitely many terms of ${a_n}$ lie outside $(a,b)$
]
\
*Example 1*

Show $lim_(n->∞) frac(1, root(3, n)) = 0$

Side work:

$| frac(1, root(3, n)) | < epsilon => frac(1, root(3, n)) < epsilon => root(3, n) > frac(1, epsilon) => n > frac(1, epsilon^3)$

#proof[

Let $epsilon > 0$ and choose $N = frac(1, epsilon^3)$

If $n > N$ then $| frac(1, root(3, n)) | < frac(1, root(3, N)) = frac(1, root(3, frac(1, epsilon^3))) = epsilon$
]
\
*Example 2*

Prove $lim_(n->∞) frac(3n^2 + 2n, 4n^2 + n + 1) = frac(3, 4)$

Rough work

$ | frac(3n^2 + 2n, 4n^2 + n + 1) - frac(3, 4) |
  = frac(|5n - 3|, 16n^2 + 4n + 4)
  <= frac(5n, 16n^2 + 4n)
  = frac(5, 16n + 4) $

#proof[
Given $epsilon > 0$, pick $N = frac(5, 16 epsilon) - frac(1, 4)$

Then for $n > N$

$ | frac(3n^2 + 2n, 4n^2 + n + 1) - frac(3, 4) |
  < frac(5, 16n + 4)
  <= frac(5, 16N + 4)
  < epsilon $
]

== Limits
\
Thinking quesiton: \
Can a sequence converge to two different limits $L != M$?\
\
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

Thinking questions: 
1. If a sequence consists of non-negative terms, is the limit non-negative? \
    ANS: YES
    Suppose not, then $a_n -> L$, $a_n > 0, forall n$. Consider $epsilon < frac(|L|, 2)$. Then $(L-epsilon, L+epsilon)$ only contains negative numbers, so it can't include a tail of $a_n$, contradiction. 
2. If a sequence consists of positive terms, is the limit positive? \
    ANS: NO,
    consider the sequence ${1/n}$, $lim_(n->oo) 1/n = 0$

\

Examples:
Prove that $lim_(n->infinity)$
Let $m>0$ and consider the interval $m, infinity$. If $n>root(3, m)$ then $n^3>m$ and ao $n^3 in (m, infinity)$. So choose $k = ceil(root(3, m))+1$, then the tails lies in $(m, infinity)$
\

= Limit Laws
#info[
  Let ${a_n}, {b_n}$ be sequences with $lim_(n->oo) a_n = a$, $lim_(n->oo) b_n = b$ for some $a, b in RR$ then:
  1. For any $c in RR$, if $a_n = c$ for all $n$ then $c=a$
  2. For any $c in RR$, if $lim_(n->oo) c a_n = c a$
  3. $lim_(n->oo) (a_n+b_n) = a + b$
  4. $lim_(n->oo) a_n b_n = a b$
  5. $lim_(n->oo) frac(a_n, b_n) = a/b "if " b!=0$
  6. If $a_n >=0$ for all $n$ and $alpha > 0$, then $lim_(n->oo) a^alpha_n = a^alpha$
  7. For any $k in NN$, $lim_(n->infinity) a_(n+k) = a$
]

Prove the Sum of Sequences Rule
#proof[
  $a_n -> a, b_n->b$\
  $forall epsilon > 0, exists M , N in RR, forall n > M, n > N, |a_n-a|<epsilon, |b_n-b|< epsilon$\
  $|(a_n+b_n)-(a+b)| = |(a_n-a)+(b_n-b)| <= |a_n-a| + |b_n-b|< epsilon/2 + epsilon/2 = epsilon$
]
\
#important[
  Tandem Convergence Theorem: \
  If $lim_(n->oo) frac(a_n, b_n)$ exists and $lim_(n->oo) b_n = 0$, 
  then $lim_(n->oo) a_n = 0$
]

Examples: \
Evaluate the following limits 

1) $lim_(n->oo) frac(3n^2+2n, 4n^2+n+1)$ \

$=lim_(n->oo) frac(n^2(3+2/n), n^2(4+1/n+1/n^2)) = lim_(n->oo) frac(3 + 2/n, 4+ 1/n+1/n^2) = frac(lim_(n->oo)3+ lim_(n->oo) 2/n, lim_(n->oo) 4 + lim_(n->oo) 1/n + lim_(n->oo)1/n^2) 
= frac(3 + 0, 4+0+0) = 3/4$


2) $lim_(n->oo)sqrt(n^2+n)-n$, We have indeterminate form $[infinity-infinity]$\

$=lim_(n->oo)sqrt(n^2+n)-n dot frac(sqrt(n^2+n)+n, sqrt(n^2+n)+n) = lim_(n->oo) frac(n^2+n-n^2, sqrt(n^2+n)+n) = lim_(n->oo) frac(n, n(sqrt(1+1/n)+1)) = lim_(n->oo) 1/(sqrt(1+1/n)+1) = 1/(sqrt(1+lim_(n->oo)1/n)+1) = 1/(1+0+1)=1/2$

3) Let the sequence ${a_n}$ be defined recursively by $a_1=16$ and for all $n>2, a_n = 1/2(a_(n-1)+260/a_(n-1))$. Given that $lim_(n->oo) a_n$ exists, compute is value

$lim_(n->oo) a_n = lim_(n->oo) 1/2(a_(n-1)+260/a_(n-1)) = 1/2(lim_(n->oo)a_(n-1)+ 260/lim_(n->oo) a_(n-1))$

$= 1/2(lim_(n->oo)a_(n)+ 260/lim_(n->oo) a_n)$

Let $L = lim_(n->oo) a_n$, then $L = 1/2(L+260/L) <=>L^2= 1/2L^2+260<=> L plus.minus sqrt(260)$

Since $a_n$ consists of non-negative terms, thus its limit converges to a value that is non-negative. Thus, $lim_(n->oo) a_n = sqrt(260)$
\
\
\
\
\
#info[
  *Squeeze Theorem*:\
   If $a_n>= b_n>=c_n$ for all $n in NN$ with $n >= M$ for some $M in RR$ and $lim_(n->oo) a_n = L = lim_(n->oo)c_n$ for some $L in RR$, then $lim_(n->oo) b_n = L$ 
  ]

#proof[
  Since $lim_(n->oo) a_n = L = lim_(n->oo)c_n$ for any $epsilon > 0, exists N_a, N_c in RR: n > N_a, n> N_c. |a_n - L| < epsilon, |c_n-L|< epsilon.$ Let $N = max(N_a, N_c)$ but $a_n>=b_n>=c_n$, so $a_n in (L-epsilon, L+epsilon), b_n in (L-epsilon, L+epsilon), c_n in (L-epsilon, L+epsilon)$ \
  $therefore lim_(n->oo) b_n = L$
]
\
4) $lim_(n->oo) frac(sin(n), n)$ \

$-1<= sin(n) <= 1$ for any $n in NN$, so $-1/n <= sin(n)/n <= 1/n, forall n in NN$ \
$lim_(n->oo) -1/n = lim_(n->oo) 1/n = 0$ \

By Squeeze Theorem,  $lim_(n->oo)sin(n)/n = 0$

\
5) $lim_(n->oo) frac(4+(-1)^n, n^3+n^2-1)$ \
\
$3/(n^3+n^2-1) <= frac(4+(-1)^n, n^3+n^2-1)<= frac(5, n^3+n^2-1)$\

$lim_(n->oo) 3/(n^3+n^2-1) = lim_(n->oo) 5/(n^3+n^2-1) = 0$ \

By Squeeze Theorem, $lim_(n->oo) frac(4+(-1)^n, n^3+n^2-1) = 0$


$lim_(n->oo) frac(4+(-1)^n+(-1)^(n^2+n+2), n^3+n^2+100)$ can be solved similarly
\

== Definitions
\
A sequence ${a_n}$ is 
1. increasing if $a_n<=a_(n+1) forall n in NN$
2. decreasing if $a_n>=a_(n+1) forall n in NN$
3. monotoinc if it is increasing or decreasing
\
A set $S subset RR$ is 
1. bounded above it there exists some $alpha in RR$ with $a<= alpha forall x in S$, and we call such an $alpha$ an upper bound for $S$. The least upper bound is the smallest such $alpha$
2. bounded below it there exists some $beta in RR$ with $a>= beta forall x in S$, and we call such an $beta$ an upper bound for $S$. The greatest lower bound is the largest such $beta$
3. bounded if it is both bounded above and bounded below

If a set $S subset RR$ is bounded above, it has a least upper bound. If it is bounded below, it has a greatest lower bound. 

Greatest lower bound and least upper bound do not have be in part of the set
\
\
\
\
\

#info[
  *Theorem(Monotone Convergence Theorem)*: \
  Let ${a_n}$ be an increasing sequence. If ${a_n}$ is bounded above, it converges to its least upper bound, otherwise to $infinity$
  That is, if a sequence is bounded and monotonic, the sequence converges.
]

#warn[
  We say a sequence $S$ is bounded if it is bounded by both sides.
]
#proof[
  Let ${a_n}$ be increasing, bounded above. Then it has a lowest upper bound say $L$. Suppose $lim_(n->oo) a_n != L$. So there is some bad $epsilon$ s.t. no tail of ${a_n}$ lies in $(L - epsilon, L+epsilon)$. But then no term from $a_n.$ lies in $(L-epsilon, L+epsilon)$ since $a_n$ is increasing. Hence $L- epsilon$ is an upper bound for ${a_n}$, but $L-epsilon < L$ and $L$ is the least upper bound of ${a_n}$is  a contradiction. The assumption of $lim_(n->oo) a_n != L$ is false. $therefore lim_(n->oo)a_n = L$ 
]

\
Let ${a_n}$ be a decreasing sequence. If ${a_n}$is bounded below, it converges to its greatest lower bound, otherwise it diverges to $-infinity$

#proof[
  Let $L = "greatest lower bound of" {a_n}$ since ${a_n}$ is decreasing, ${-a_n}$ is increasing with lowest upper bound is $-L$. By the Monotone Convergence Theorem, it is true.
]



#tip[ *Proof By Induction* \
Let $P(n)$ be a statement over the natural numbers $NN$

1) Prove the basic case $P(1)$ is true \
2) Prove that if $P(n)$ is true, then $P(n+1)$ is true $forall n in NN$ \
3) Apply 2) repeatedly starting at $P(1)$

Prove a recursive sequence ${a_n}$ converges: \
1) Show that ${a_n}$ is monotone \
2) Show that ${a_n}$ is bounded above if increasing or bounded below if decreasing. \
3) By the Monotone Convergence Theorem, $lim_(n->oo) a_n$ exists. Use limit laws to solve for it, keeping in mind that the initial term and whether {an} is increasing or decreasing will tell you which solution is admissible if there are multiple.
]

Example: 

*1)* Find the limit of the sequence $(a_n)$ given by
#align(left)[$
a_1 = 1, quad a_n = sqrt(3 + 2 a_(n - 1)) text("for")  n >= 2.
$]

#proof[
Let $P(n)$ be the statement that $a_n <= a_(n+1)$.

*Base Case:* $P(1)$, $a_1 = 1,  a_2 = sqrt(5)$, so $a_1 < a_2$.

*Inductive Hypothesis:* $P(a) -> P(a+1)$ suppose $P(n)$ is true for some $n$.

Then $a_n < a_(n+1)$; we want to show that $a_(n+1) <= a_(n+2)$. From $a_n <= a_(n+1)$:
$ 2 a_n <= 2 a_(n+1) $
$ 3 + 2 a_n <= 3 + 2 a_(n+1) $
$ sqrt(3 + 2 a_n) <= sqrt(3 + 2 a_(n+1)) $
$ a_(n+1) <= a_(n+2) $

By inducion, $P(n)$ is true for all $n in NN$, so $(a_n)$ is increasing.

*Step2:* Choose upper bound to be big to make proof easier.

Let $P(n)$ be the statement that $a_n <= 100$. $P(1)$ is true since $a_1 = 1 < 100$.

Suppose $P(n)$ is true for some $n$. Then $a_n <= 100$.

We want to show $a_(n+1) <= 100$:
$ a_(n+1) = sqrt(3 + 2 a_n) <= sqrt(3 + 2 * 100) < sqrt(10000) = 100. $

By induction $P(n)$ ...

Since $(a_n)$ is increasing and bounded above. By MCT, $a$ converges to least upper bound. So, let

$ a_n -> L,  a_(n+1) = sqrt(3 + 2 a_n) $.
$ lim_(n->oo) a_(n+1) = sqrt(3 + 2 lim_(n->oo) a_n) -> L = sqrt(3 + 2 L). $
So $L = -1, 3 = lim_(n->oo) a_n$. Since the sequence is increasing, we choose $L = 3$
]

#align(right)[$square$]
*2)* Find the limit of the sequence ${b_n}$ given by
#align(left)[$
b_1 = 4, quad b_n = frac(7 + b_(n-1), 22) text("for") n >= 2.
$]

Notice that the sequence is a decreasing sequence. \
Let $P(n)$ be the statement that $b_n > b_(n+1) forall n in NN$ and $b_n >= 1/3 forall n$.

Base case: $ b_1 = 4 >= 1/3$ and $b_2 = 1/2 < 4 = b_1$.

Inductive hypothesis: suppose $P(n)$ is true for some $n = k$. Then
$ b_(n+1) = frac(7 + b_k, 22) >= frac(7 + 1/3, 22) > 1/3. $

We want to show $b_k >= b_(k+1) <-> 22 b_k >= 7 + b_k <-> 21 b_k >= 7 <-> b_k > 1/3$, so $P(k+1)$ holds. \
By Induction, $P(n)$ holds for all $n$. 

By MCT, ${b_n}$ converges to $L$, since $b_n = frac(7 + b_(n-1), 22)$, so
$ lim_(n->oo) b_n = frac(7 + lim_(n->oo) b_(n-1), 22) -> L = frac(7 + L, 22) -> 22 L = 7 + L -> L = 1/3. $

== CHAPTER ENDS
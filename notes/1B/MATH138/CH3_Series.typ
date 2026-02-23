#import "../../../preamble.typ": *
#import "@preview/diverential:0.2.0": *
#let strut(h) = box(height: h, width: 0pt)

#let Title = "CH 3 — Series"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

#info[*Infinite Series*\

An infinite series is an expression of the form $ sum_(n=1)^(oo) a_n = a_1+ a_2 + ... $ where ${a_n}$ is a sequence.

- the sequence of terms ${a_n}_(n=1)^(oo)$

- the sequence of partial sums ${S_m}_(m=1)^(oo)$ where $S_m$ is the truncated sum up to the term $a_m$: $ S_m = a_1 + a_2 + a_3 + ... + a_m $

We say that a series converges if the sequence of partial sums converges.

If $lim_(m->oo) S_m = S$, then $S$ is called the sum of the series.

Otherwise the series diverges.
]

Note that oscillating result is assigned with "no limit" or DNE 


=== Geometric Series

#info[*Harmonic Series*\

The harmonic series $ sum_(n=1)^oo 1/n $ is always divergent.

]

#info[*Geometric Series*\
Let $a, r in RR$ s.t. $a!=0$. A geometric series is a series in form $ sum_(n=0)^oo a r^n = a+a r+a r^2 + ... $

$a$ is called the first term of the geometric series and $r$ is the ratio of the geometric series.

The partial sum $ S_m = sum_(n=0)^m a r^n = a + a r+ a r^2 + ...+ a r^m = a (frac(1-r^(m+1), 1-r)) $ where $r!=1$ 

\

*Geometric Series Test*

Let $sum_(n=0)^oo a r^n $be a geometric series, where $a!=0$

1. If $|r| <1$, then $sum_(n=0)^oo a r^n$ converges and $sum_(n=0)^oo a r^n = frac(a, 1-r)$

2. If $|r|>=1$, then $sum_(n=0)^oo a r^n)$ diverges
]

Examples:

1. $sum_(n=1)^oo 1/n$

  - Prove that the partial sums of the series satisfy $S_(2^k) >= 1+k/2$ for all non-ngative integers $k$

    $k = 0 ==> S_(2^0)=1 = 1 + 0/2 $

    $k = 1 ==> S_(2) = 1+1/2 = 1 + 1/2$

    $k = 2 ==> S_(4) = 1+1/2+1/3+1/4 > S_2+1/2  =2= 2$

    $k = 3 ==> S_(8) = S_4 + 1/5+1/6+1/7+1/8 > S_4 + 1/2=1+3/2 = 1+3/2$

2. $sum_(n=0)^oo 1/2 (1/2)^n$ converges to $1/2 / 1/2 = 1$ by GST

3. $sum_(n=0)^oo (-4/3)^n$ diverges by GST

#info[*Arithemtic Properties*\

Assume that the series $sum_(n=1)^oo a_n, sum_(n=1)^oo b_n$ both converges

1. $sum_(n=1)^oo c  a_n$ converges for every $c in RR, sum_(n=1)^oo c  a_n = c sum_(n=1)^oo a_n$ 

2. $sum_(n=1)^oo a_n + b_n $ converges, $sum_(n=1)^oo a_n + b_n = sum_(n=1)^oo a_n + sum_(n=1)^oo b_n$
]

#info[*Tail Convergence*\

Given an infinite series $sum_(n=1)^oo a_n$, let $S_m = sum_(n=1)^m a_n$ denote its $m$-th partial sum. The difference $ sum_(n=1)^oo a_n - S_m = a_(m+1) + a_(m+2)+a_(m+3) + ... = sum_(n=m+1)^oo a_n $ is caled a tail of the infinite series.

Let ${a_n}_(n=1)^oo$ be a sequnce and let $j$ denote a positive integer.

1. If $sum_(n=1)^oo a_n$ converges, then its tail also converges for each $j>=1$

2. If the tail $sum_(n=1)^oo a_n$ converges for some $j$, then $sum_(n=1)^oo a_n$ converges.

]

#warn[*Necessary Condition for Convergence*\

If $sum_(n=1)^oo a_n$ converges, then $lim_(n->oo) a_n = 0$.

The converse is false]
=== Telescoping Series
Example:

$sum_(n=1)^oo 1/n - 1/(n+1)$

$S_1 = a_1 = 1- 1/2$

$S_2 = a_1+a_2 = (1-1/2) + (1/2 - 1/3) = 1-1/3$

By induction, we can prove that $forall m in NN, S_m = 1- 1/(m+1)$
=== Alternating Series

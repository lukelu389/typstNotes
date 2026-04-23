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


]

#info[
*Geometric Series Test*\

Let $sum_(n=0)^oo a r^n $be a geometric series, where $a!=0$

1. If $|r| <1$, then $sum_(n=0)^oo a r^n$ converges and $sum_(n=0)^oo a r^n = frac(a, 1-r)$

2. If $|r|>=1$, then $sum_(n=0)^oo a r^n$ diverges]

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

The converse is false, the contrapositive is called the *Divergence Test*]

#info[*Divergence Test*\

If $lim_(n->oo) a_n != 0$, then $sum_(n=1)^oo a_n$ diverges.

]

Examples:

1. $sum_(n=0)^oo frac((-3)^(2 n), 2^(3n -3)) = sum_(n=0)^oo 8 (9/8)^n, "since"(|9/8| >1)$, divergent by GST

2. $sum_(n=1)^oo (-2)^n 5^(2-n) = sum_(n=1)^oo 25(-2/5)^n = sum_(n=0)^oo -10 (-2/5)^n$, since $|-2/5| <1$, converging to 

 $-10/(1+2/5) = -50/7$

=== Telescoping Series
Example:

$sum_(n=1)^oo 1/n - 1/(n+1)$

$S_1 = a_1 = 1- 1/2$

$S_2 = a_1+a_2 = (1-1/2) + (1/2 - 1/3) = 1-1/3$

By induction, we can prove that $forall m in NN, S_m = 1- 1/(m+1)$

== Convergence Tests for series with Nonnegative Terms

#warn[*Positive Series*\

We call a series $sum_(n=1)^oo a_n$ positive if $a_n>=0, forall n>=1$

If there is some positive integer $j$ s.t. $a_n>=0, forall n>=j$, then the series is said to be eventually positive. The sequence of partial sum is a montone sequence that is non-decreasing.

1. If the sequence is bounded above, the series converges
2. If the sequence is not bounded above, the series diverges to $oo$
]

#info[*Integral Test*\

Let $f$ be a function that is defined on the infinite interval $[1,∞)$. Suppose that $f$ is continuous, positive, and *decreasing* on the subinterval $[k,∞)$ for some positive integer $k$. Then the following statements hold.

1. If $integral_k^oo f(x) dif x$ converges, then the series $sum_(n=1)^oo f(n)$ converges

2. If $integral_k^oo f(x) dif x$ diverges, then the series $sum_(n=1)^oo f(n)$ diverges to $oo$
]

Examples:


1. $sum_(n=1)^oo 1/n$. Let $f(x) = 1/n$. We have $integral_1^oo 1/x dif x$ have the same behaviour as of the series. 

 $lim_(t->oo) integral_1^t 1/x dif x = lim_(t->oo) eval(ln x, 1, upper:oo) = oo$. Since the limit of the integral diverges, the series diverges to $oo$ by the Integral Test

2. $sum_(n=1)^oo 1/n^2$. Let $f(x) = 1/n^2$. We have $integral_1^oo 1/x^2 dif x$ have the same behaviour as of the series. 

   $lim_(t->oo) integral_1^t 1/x^2 dif x = lim_(t->oo) eval(-1/x, 1, upper:oo) = 0 - (-1) = 1$. Since the limit of the integral converges, the series converges by the Integral Test

#info[*Integral Test Estimation Theorem*\

Suppose that a function $f$ is continuous, positive, and decreasing on the infinite interval $[k, oo)$ for some positive integer $k$. Further suppose that $ integral_k^oo f(x) dif x$ converges so that $sum_(n=1)^oo f(n) = S$ for some real number $S$ by the Integral Test. Let $S_m = sum_(n=1)^m f(n)$ denote the $m-$th partial sum. Then for any integer $m>=k$, we have $ integral_(m+1)^oo f(x) dif x<= S-S_m <= integral_m^oo f(x) dif x $
]


Example:


$sum_(i=1)^oo frac(ln n, n)$.

Let $f(x) = frac(ln x, x)$

$f$ is continuous on $(0, oo)$ and that $f(x)>=0$ on $[1, oo)$. 

Note that $f'(x)<0$ on $[e, oo)$

We choose $k = 3$

$lim_(t->oo)integral_3^t frac(ln x, x) dif x = lim_(t->oo) eval(1/2 ln^2(x),3, upper:t) = oo$.

Therefore the series diverges by Integral Test

#info[*$p$-Series Test*\

If $p>1$, then the $p-$series $sum_(n=0)^oo 1/n^p$ converges

If $p<=1$, then the $p-$series $sum_(n=0)^oo 1/n^p$ diverges
]

#info[*Direct Comparison Test*\

Let $k$ be a positive integer. Suppose ${a_n}_(n=1)^oo , {b_n}_(n=1)^oo$ be two sequences satisfying 

$0<=a_n<=b_n, "for ever" n>=k$

If $sum_(n=1)^oo b_n$ converges, $sum_(n=1)^oo a_n$ converges

If $sum_(n=1)^oo b_n$ diverges, $sum_(n=1)^oo a_n$ diverges
]

Example:

1. $sum_(n=1)^oo frac(n, n^3+1)$

  Choose $b_n = 1/n^2$

  Since $sum_(n=1)^oo 1/n^2 $ converge by $p$-series test, therefore $sum_(n=1)^oo frac(n, n^3+1)$ converges by DCT

2. $sum_(n=0)^oo frac(3^n+1, 2^(n+1)-1)$

  Choose $b_n = 1/2 (3/2)^n < frac(3^n+1, 2^(n+1)-1)$

  SInce $sum_(n=0)^oo b_n = 1/2 (3/2)^n $ diverges by GST with $|3/2| > 1$, therefore $sum_(n=0)^oo frac(3^n+1, 2^(n+1)-1)$ diverges by DCT

#info[*Limit Comparison Test*\
Let ${a_n}_(n=1)^oo , {b_n}_(n=1)^oo$ be sequences and suppose that there is a positive integer $k$ s.t. 

$a_n>=0$ and $b_n>=0, forall n>=k$

We obtain $lim_(n->oo) frac(a_n, b_n) = L$

1. $0<L<oo$ then $sum_(n=1)^oo a_n$ and $sum_(n=1)^oo b_n$ both converges or both diverges

2. $L = 0$, then 
 - if $sum_(n=1)^oo b_n$ converges, $sum_(n=1)^oo a_n$ converges

 - if $sum_(n=1)^oo a_n$ diverges, $sum_(n=1)^oo b_n$ diverges

3. $L = oo$, then 
 - if $sum_(n=1)^oo a_n$ converges, $sum_(n=1)^oo b_n$ converges

 - if $sum_(n=1)^oo b_n$ diverges, $sum_(n=1)^oo a_n$ diverges

Note that if the limit is DNE and not $oo$, it is inconclusive (i.e. oscillating)
]

#info[*Alternating Series Test*\

Let ${a_n}_(n=1)^oo$ be a sequence. If

1. $lim_(n->oo) a_n = 0$

2. and there is a positive integer $k$ s.t. $a_n>=a_(n+1)>0, forall n >=k$

then the series $sum_(n=1)^oo (-1)^(n-1) a_n "and" sum_(n=1)^oo (-1)^n a_n$ both converge.
]

We prove this for $sum_(n=1)^oo (-1)^(n-1) n$ and $k=1$.

Suppose that 

- $a_n >-, forall n>= 1$

- $a_n >= a_(n+1), forall n >=1$

- $lim_(n->oo) a_n = 0$

For $k>=2$:

$ S_(2k) = S_(2k-2)+a_(2k-1)-a_2k >=S_(2k-2)$

$S_(2k) = a_1 - a_2+a_3-a_4+... - a_(2k-2)+a_(2k-1)-a_(2k)$

$  = a_1 - (a_2-a_3) - (a_4-a_5)- ... -(a_(2k-2)-a_(2k-1)) - a_(2k) <= a_1$

So we have $S_2<=S_4<=...<= S_(2k)<=...<=a$

By MCT, this sequence converges 

For $k>=1$:

$ S_(2k+1) = S_(2k)+a_(2k+1)$

$lim_(k->oo) S_(2k+1) = L$

By MCT, this sequence converges 

#info[*Alternating Series Estimation*\

Let ${a_n}_(n=1)^oo$ be a sequence. If

1. $lim_(n->oo) a_n = 0$

2. and there is a positive integer $k$ s.t. $a_n>=a_(n+1)>0, forall n >=k$

Let $S_m = sum_(n=1)^oo (-1)^(n-1) a_n "and" T = sum_(n=1)^oo (-1)^n a_n$

Then for all integers $m>=k$, we have the following:

4. $|S-S_m|<= a_(m+1)$

5. If $m$ is even, then $S_m$ is an underestimate of $S$ and $T_m$  is an overestimate of $T$

6. If $m$ is odd, then $S_m$ is an overestimate of $S$ and $T_m$  is an underestimate of $T$


]

Example:

$sum_(n=1)^oo frac((-1)^(n-1), n)$

Is proven to be convergent by AST 

For $m = 5: |S-S_5|<=a_6 = 1/6$. It is an overestimation.

To guarantee an error be $0.001, 1/(m+1)<=1/1000 ==> m>=999$


#info[*Absolute Convergence Test*\
If the series $sum_(n=1)^oo |a_n|$ converges, then the series $sum_(n=1)^oo a_n$ converges.

Note that the converse is false.

A series is *absolutely convergent* if the $sum_(n=1)^oo |a_n|$ converges.

A series is *conditionally convergent* if it converges but $sum_(n=1)^oo |a_n|$ diverges
]

#tip[*Series Classification*\

1. Try Divergence Test

2. Test $sum |a_n|$

3. Test $sum a_n$

]
Examples:

1. $sum_(n=0)^oo cos(n)/n^2 $ is absolutely convergent

2. $sum_(n=1)^oo (-1)^n arctan (n/(n+1))$

  $lim_(n->oo) (-1)^n arctan (n/(n+1)) = "DNE(oscillating)"$

  The series diverges by Divergence Test

\
\
3. $sum_(n=1)^oo (-2/3)^n $

  Divergence Test fails

  $sum_(n=1)^oo |(-2/3)^n| = sum_(n=1)^oo (2/3)^n$
  
  The series is geometric, converges by GST and is absolutely convergent.

4. $sum_(n=1)^oo frac((-1)^n sqrt(n^2+n), n^(3/2))$

  Divergence Test fails

  $sum_(n=1)^oo |frac((-1)^n sqrt(n^2+n), n^(3/2))|  ==> lim_(n->oo) frac(frac(sqrt(n^2+n), n^(3/2)),  1/sqrt(n)) = 1$ 
  
  diverges by LCT.

  $sum_(n=1)^oo frac((-1)^n sqrt(n^2+n), n^(3/2))$ converves by AST


#info[*Ratio Test*\
Let $k$ be a positive integer. Suppose that ${a_n}_(n=1)^oo$ is a sequence satisfying $a_n !=0$ for every $n >=k$. Let $ L = lim_(n->oo) |frac(a_(n+1), a_n)| $

Further, supose that either $L in RR$ or $L = oo$

1. If $L<1$, then $sum_(n=1)^oo a_n$ converges absolutely.

2. If $L>1$ or if $L = oo$, then $sum_(n=1)^oo a_n$ diverges.

3. If $L = 1$, then $sum_(n=1)&oo a_n$ is *inconclusive*
]

Examples:

1. $sum_(n=1)^oo frac((-1)^n 2^n, n^2 3^n)$

  $lim_(n->oo) |frac((-1)^(n+1) 2^(n+1), (n+1)^2 3^(n+1)) dot frac(n^2 3^n, (-1)^n 2^n)| = lim_(n->oo) frac(2 n^2, 3 (n+1)^2) = 2/3 < 1$

  Converges absolutely by Ratio Test

2. $sum_(n=1)^oo b^n / n!$

  $lim_(n->oo) |frac(b^(n+1), (n+1)!) dot frac(n!, b^n)| = lim_(n->oo) b/(n+1) = 0<1$

  Converges absolutely by Ratio Test

3. $sum_(n=1)^oo n^n/n!$

  $lim_(n->oo) |frac((n+1)^(n+1), (n+1)!) dot frac(n!, n^n)| = lim_(n->oo) (frac( n+1, n))^n = 1$

  Inconclusive by Ratio Test
#info[*$n$-th Root Test*\
Let $L = lim_(n->oo) root(n, |a_n|)$ and suppose that $L in RR$ or $L = oo$

1. If $L<1$, then $sum_(n=1)^oo a_n$ converges absolutely.

2. If $L>1$ or if $L = oo$, then $sum_(n=1)^oo a_n$ diverges.

3. If $L = 1$, then $sum_(n=1)&oo a_n$ is *inconclusive*
]

=== Summary

#align(center)[#image("../../../pictures/sem1/cal2_ch3.png", width:12cm)]
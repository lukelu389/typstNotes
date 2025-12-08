#import "../../preamble.typ": *

#let Title = "CH 3 — Function Limits and Continuity"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== Definitions


$"If" f: RR -> RR "is a function and" a in RR, lim_(x->a) f(x) = L$ if \
for all $epsilon > 0$ there exists $delta>0$ s.t. if $0<|x-a|<delta, "then" |f(x)-L|<epsilon$

Examples:


*1)*Prove using the $epsilon-delta$ definition that $lim_(x->0)f(x)$ DNE where 
$ f(x) = cases(-2 "if" x<0, 3 "if" x > 0) $
Domain: $RR \\ {0}$

Take $epsilon = 1$. Consider some $delta>0$. Whitin $(0-delta, 0+delta)$ \
We have both $(-delta, 0) "where" f(x)=-2 "and" (0, delta) "where" f(x) = 3$. If this $delta$ exists for $epsilon = 1$ then the limit $L$ would need to be distance 1 or both -2 and 3, where is impossible. 

$ therefore lim_(x->0) f(x) = "DNE" $

*2)* $lim_(x->7) 8x -3 = 53$

Let $epsilon > 0$ be arbitrary. \
 We want find $delta$ s.t. if $0<|x-7|<delta$ then $|8x-3-53|<epsilon -> delta = epsilon/8 $\
Pick $delta = epsilon/8$. \
Then if $0<|x-7|<epsilon/8 , |(8x-3)-53| = |8x-56|=8|x-7| < 8 dot epsilon/8 = epsilon$
 

*3)* $lim_(x->1)x^2+3x+4=8$ 


We want for any $epsilon > 0 "and" delta > 0: |x-1|<delta$, then $|f(x) - L| < epsilon$ \

$<->|x^2+3x-4| < epsilon <-> |(x+4)(x-1)| < epsilon <-> |x+4|-|x-1| < epsilon$

I can always make $delta$ smaller if I need to. \

take $delta < 1$, then $|x-1|<1 ==> 0<x<2$ \
$|x+4| < 6 -> |x+4||x-1| < 6 delta$, but $6delta < epsilon <-> delta < epsilon/4$. Say $epsilon/7 < epsilon /6$ for all epsilon. \
Take $delta < min(1, epsilon/6)$

#proof[
  Let $epsilon > 0$ be given. Take $delta = min(1/2, epsilon/7)$. Then, if $|x-1|<delta, |x^2+3x+4-8| = |x^2+3x-4| = |(x+4)(x-1)| = |(x+4)(x-1)| < 6 dot epsilon/7 < epsilon$
]

#align(right)[$square$]


#info[
  *Sequential Characterization of Limits Theorem* \
  Let $a in RR$. let the function $f(x)$ be defined on an open interval containing $a$, expect possibly at $x = a$ itself. Then the following are equivailent:
  1. $lim_(x->a)f(x) = L$
  2. For all sequences ${x_n}$ satisfying $lim_(n->oo) x_n = a$ and $x_n!=a, forall n in NN,$ we have that $lim_(n->oo)f(x_n) = L$
]

#tip[ Usage of Sequential Characterization of Limits
1. Find a sequence ${x_n}$ with $x_n->a$
2. Find two sequences ${x_n}, {y_n}$ with $x_n, y_n -> a "and" x_n, y_n !=a, forall n in NN "but which" {f(x_n)}, {f(y_n)}$ converge to different values
]
#proof[
   $==>$ : $lim_(x->a)f(x) = L$ means $forall epsilon > 0, exists delta > 0: |x-a|<delta$, then $|f(x)-L|< epsilon$. \
   Let ${x_n}$ be s.t. $x_n ->a("meaning that "forall epsilon > 0, exists N in RR: forall n > NN, |x_n-a|<epsilon_2)$ and $x_n!=a$ for any $n$.

   In particular, let $epsilon$ for $x_n->a$ be $delta$. Then $forall n > N$, $|x_n-a|< delta$, and so $|f(x)_n| < epsilon_1$. Then $forall n > N, |x_n-a|<delta$ and so $|f(x_n)-L|< epsilon_1$. So by definition, $lim_(n->oo) f(x_n)=L$
]
\
*Side Question:* We saw the limit of a sequence is unique. Is the same true for limits of functions?

*ANS*: NO, it is like saying $lim_(x->a) f(x) = L$ $"and "= M "and" L != M$
Suppose true. By Sequential Characterization of Limits, $forall {x_n} -> a$ but $x_n != a forall n, f(x_n) -> L "and" f(x_n)->M "but" L != M$ Since the limits of sequences are unique, thus there is a contradiction. 
 \
 \

Examples:

Prove that $lim_(x->0) cos(1/x)$ does not exist \
We take sequences of peak points of $cos(1/x)$, that is $-1, 1$. Then will converge to $-1, 1$ repeatedly, so by Sequential Characterization, $lim_(x->0)cos(1/x)$ will not exist.

$cos(1/x) = 1$ if $x = 1/(2 k pi), k in ZZ$, and  $cos(1/x) = -1$ if $x = 1/((2k+1) pi), k in ZZ$.

Let $x_n = 1/2n pi$ and $y_n = 1/(2n+1)pi$. Then $x_n, y_n -> 0, x_n, y_n !=0 forall n$. It converges to both $-1 "and" 1$. By Sequential Characterization, the limit DNE. 

= Limit Laws
#info[
  Let $f, g$ be functions with $lim_(x->a) f(x) = L$, $lim_(x->a) g(x) = M$ for some $L, M in RR$ then:
  1. For any $c in RR$, if $f(x) = c$ for all $n$ then $L = c$
  2. For any $c in RR$, if $lim_(x->a) c f(x) = c L$
  3. $lim_(x->a) (f(x)+g(x)) = L+M$
  4. $lim_(x->) f(x) dot g(x) = L M$
  5. $lim_(n->oo) frac(f(x), g(x)) = L / M "if " M!=0$
  6. If $alpha>0$ and $L > 0$, then $lim_(x>a) f(x)^alpha = L^alpha$

]

#proof[
  We assume functions $f,g$ are defined on a punctured neighborhood of $a$ and
$lim_(x->a) f(x) = L$, $lim_(x->a) g(x) = M$. In the quotient law we also
assume $M != 0$.

1. Product law
*Claim.* $lim_(x->a) (f(x) g(x)) = L M$.

*Proof.* Let $epsilon > 0$. Then
$|f(x) g(x) - L M|
  = |f(x) (g(x) - M) + M (f(x) - L)|
  <= |f(x)| · |g(x) - M| + |M| · |f(x) - L|.$

Since $f(x) -> L$, choose $delta_0 > 0$ with
$|x - a| < delta_0 => |f(x) - L| < 1$, hence $|f(x)| <= |L| + 1$ there.

Choose $delta_1, delta_2 > 0$ so that
$|x - a| < delta_1 => |g(x) - M| < epsilon / (2 (|L| + 1))$
and
$|x - a| < delta_2 => |f(x) - L| < epsilon / (2 (|M| + 1))$.

Let $delta = min(delta_0, delta_1, delta_2)$. For $0 < |x - a| < delta$,
$|f(x) g(x) - L M|
  <= (|L| + 1) · epsilon / (2 (|L| + 1)) + |M| · epsilon / (2 (|M| + 1))
  <= epsilon/2 + epsilon/2 = epsilon.$

Thus $lim_(x->a) (f g) = L M$.

2. Quotient law (with $M != 0$)
*Claim.* $lim_(x->a) f(x)/g(x) = L/M$.

*Proof.* Let $epsilon > 0$. Because $g(x) -> M != 0$, there exists $delta_0 > 0$
such that $|x - a| < delta_0 => |g(x) - M| < |M|/2$, hence $|g(x)| >= |M|/2$.

Now
$| f(x)/g(x) - L/M |
  = | M f(x) - L g(x) | / ( |M| · |g(x)| )
  <= ( |M| · |f(x) - L| + |L| · |g(x) - M| ) / ( |M| · |g(x)| )
  <= (2/|M|) · |f(x) - L| + (2 |L| / |M|^2) · |g(x) - M|.$

Choose $delta_1, delta_2 > 0$ with
$|x - a| < delta_1 => |f(x) - L| < (|M|/4) · epsilon$
and
$|x - a| < delta_2 => |g(x) - M| < (|M|^2 / (4 (|L| + 1))) · epsilon$.

Let $delta = min(delta_0, delta_1, delta_2)$. Then for $0 < |x - a| < delta$,
$| f(x)/g(x) - L/M |
  <= (2/|M|) · (|M|/4) · epsilon + (2 |L| / |M|^2) · (|M|^2 / (4 (|L| + 1))) · epsilon
  <= epsilon/2 + epsilon/2 = epsilon.$

Therefore $lim_(x->a) f(x)/g(x) = L/M$.
]

#info[
*Limit of Polynomial Functions*
Let $p(x) = a_0 + a_1x + a_2x^2 + ... + a_n x^n$ be a polyomial. \

Then $lim_(x->a)p(x) =  p(a)$

#proof[
  $ quad quad quad lim_(x->a) x = a $ 
  $ quad quad quad lim_(x->a) x^i = a^i $ 
  $ quad quad quad lim_(x->a) a_i x^i = a_i a^i $ 
  $ quad quad quad lim_(x->a) sum_(i = 0)^n a_i x^i = sum_(i = 0)^n a_i a^i $
]
]


\
#info[ *Limit of Rational Functions* \

Let $f(x) = p(x)/q(x)$ when $p, q$ be polynomial functions and $a in RR$
1. If $q(a) !=0 "then" lim_(x->a) p(x)/q(x) = p(a)/q(a)$
2. If $lim_(x->a) q(a) = 0 "but then" lim_(x->a) p(x) != 0 "then" lim_(x->a) p(x)/q(x) "is DNE"$.\ If $x->a, x < 0$, then the limit diverges to $-infinity$.\ If $x->a, x > 0$, then the limit diverges to $infinity$. 

3. Otherwise, $p(a) = 0 = q(a)$, so both $p(x)$ and $q(x)$ have $(x-a)$ as a factor. Divide it out and then repeat the process.
]
\
\
Examples:

1. $lim_(x->-3) frac(x^3+10x^2+13x-24, x^2-4x-21)$ 

$=>  =^[frac(0, 0)] lim_(x->-3) frac((x+3)(x-1)(x+8), (x+3)(x-7)) = lim_(x->-3) frac((x-1)(x+8), (x-7)) = frac((-3-1)(-3+8), (-3-7)) = (-20)/(-10) = 2$
\
\

#info[
  *Squeeze Theorem(Functions)*:

   If $g(x)<=f(x)<=h(x)$ be functions defined in an open interval $I$ around $a$ except possibly at $a$. 

   If $forall a in I \\ {a}$ we have $g(x) <= f(x)<=h(x)$ and $lim_(x->a) g(x) = lim_(x->a)h(x) = L$, then $lim_(x->a) f(x) = L$]

\
#tip[When to apply Squeeze Theorem
1. Trigonometeric functions with clear bounds and polynomial terms before
2. Exponential Functions with constants terms or by defining a certain inverval
]


2. Evaluate $lim_(x->0) x^2 cos(1/x)$ 
$ -1 <= cos(1/x) <= 1 $
$ -x^2 <= x^2 cos(1/x) <= x^2 $
Notice that $x^2$ are polynomial function that is defined in $x in RR$.
$ lim_(x->0) -x^2 = lim_(x->0) x^2 = 0 $
By Squeeze Theorem, $lim_(x->0) x^2 cos(1/x) = 0$
\
\
\
= One Sided  Limits and the Fundamental Trig Limit
\
1. We say that $L$ is the *right side limit* of $f$ at $a$, and write $lim_(x->a^+) f(x) = L$ if $forall epsilon > 0, exists delta >0$ s.t. if $|x-a|<delta$ and $x>a$ then $|f(x)-L|< epsilon$ 

2. We say that $L$ is the *left side limit* of $f$ at $a$, and write $lim_(x->a^-) f(x) = L$ if $forall epsilon > 0, exists delta >0$ s.t. if $|x-a|<delta$ and $x<a$ then $|f(x)-L|< epsilon$ 
\
#info[*Theorem* \
$lim_(x->a) f(x) = L <==> lim_(x->a^-) f(x) = lim_(x->a^+) f(x) = L$
]

Example:\
Show that $lim_(x->0) sin(x) = 0, lim_(x->0) cos(x) = 1, "and" lim_(x->0) tan(x) = 0$

1. $lim_(x->0) sin(x)$:  \
Construct a unit circle with a triangle that lies in the first quadrant and an arbitrary point, say $P(x, y)$. Then $P(x, y) = P(cos(x), sin(y))$. The area of the triangle can be represented as $1/2 sin(x)$. \

Contruct another unit circle and draw $P(x, y)$ at the same location as the previous triangle, however, contruct an sector. The area of this new sector is $1/2 x$. 

Notice that the area bounded by the sector is bigger than the triangle. 

We then have $0<= 1/2 sin(x) <= 1/2 x ==> 0<= sin(x) <= x$. Since $lim_(x->0^+) 0 = lim_(x->0^+) x = 0$, by Squeeze Theorem, $lim_(x->0^+) sin(x) = 0$ 

$lim_(x->0^-) sin(x) = 0$ can be achieved similarly to the prove of right side limit and will be omitted. 

Thus $lim_(x->0) sin(x) = 0$

2. $lim_(x->0) cos(x) = 1$ :
$lim_(x->0) cos(x) = lim_(x->0) sqrt(1 - sin^2(x)) = 1$

3. $lim_(x->0) tan(x) = lim_(x->0) sin(x)/cos(x) = 1$

#warn[*The Fundamental Trig Limit*: $ lim_(x->0) sin(x)/x = 1 $
]

#image("../../pictures/fundamental_trig.png")

We have that $1/2 cos(x)sin(x) <= 1/2 x <= 1/2 tan(x) ==> cos(x) <= x/sin(x) <= 1/cos(x)$.

By Squeeze Theorem, $lim_(x->0^+) sin(x)/x = 1$.

Since $sin(x)$ is a even function, then $(sin(-x))/(-x) = (-sin(x))/(-x) = sin(x)/x$ so $lim_(x->0^-) sin(x)/x = 1$ \
$ therefore lim_(x->0)sin(x)/x = 1 $

Examples:

1. $lim_(x->0) tan(x)/x = lim_(x->0) sin(x)/x dot 1/cos(s) = lim_(x->0)sin(x)/x dot lim_(x->0)1/cos(x) = 1 dot 1 = 1$

2. $lim_(x->0) sin(72x)/tan(9x) = lim_(x->0) sin(72x)/(72x) dot (9x)/tan(9x) dot 8 = lim_(x->0) sin(72x)/(72x) dot lim_(x->0) (9x)/tan(9x) dot 8 = 1 dot 1 dot 8 $

3. $lim_(x->0) frac(sin(x^2-1), sin(x-1)) = lim_(x->0) frac(sin(x^2-1), sin(x-1)) dot (x^2-1)/(x^2-1) dot (x-1)/(x-1) = lim_(x->0) sin(x^2-1)/(x^2-1) dot lim_(x->0) (x-1)/(sin(x-1)) dot \ lim_(x->0) (x+1) = 1 dot 1 dot 1 = 1$

\

= Horizontal Asymptotes and the Fundamental Log Limit
\
#info[*Limit at $plus.minus infinity$* \
Let $L in RR$. 

We say that $lim_(x->infinity) f(x) = L$ if $forall epsilon > 0, exists N in RR "s.t. if" x> N, "then" |f(x)-L|< epsilon.$

Similarly, $lim_(x->-infinity f(x)=L)$ if $forall epsilon > 0, exists N in RR "s.t. if" x < N, "then" |f(x)-L|< epsilon.$
]

#info[*Horizontal Asymptotes* \
If $lim_(x->infinity) f(x) = L "or" lim_(x->-oo)f(x) = L$ for some $L in RR$ then we way $y = L$ is a *Horizontal Asymptote* of $f$ \

*Note*: you can cross horizontal asymptotes multiple times
]


#info[*Divergence of Limits* \
1. We say that $lim_(x->oo) f(x) = oo$ if, $forall M > 0, exists N in RR$ s.t. if $x>N$ we have $f(x)>M$.
2. We say that $lim_(x->-oo) f(x) = oo$ if, $forall M > 0, exists N in RR$ s.t. if $x<N$ we have $f(x)>M$.
3. We say that $lim_(x->oo) f(x) = -oo$ if, $forall M < 0, exists N in RR$ s.t. if $x>N$ we have $f(x)<M$.
4. We say that $lim_(x->-oo) f(x) = -oo$ if, $forall M < 0, exists N in RR$ s.t. if $x<N$ we have $f(x)<M$.
]

#info[*Squeeze Theorem at $plus.minus oo$*\
If $g(x)<= f(x)<=h(x) forall x >= N$ for some $N in RR$, and if \ $lim_(x->oo) g(x) = L = lim_(x->oo) h(x), "then" lim_(x->oo) f(x) = L$

]

#warn[*The Fundamental Log Limit* $ lim_(x->oo) ln(x)/x = 0 $]

#proof[
  $0 <= ln(x)/x$ true whenever $x>=1$. Since $x-> oo$, assume $x>=1$. \

  $ln(x)/x = frac(ln(sqrt(x) dot sqrt(x)), sqrt(x) dot sqrt(x)) = frac(2 ln(sqrt(x)), sqrt(x) dot sqrt(x)) = 2/(sqrt(x)) dot ln(sqrt(x))/sqrt(x) <= 1 <= 2/sqrt(x) $ (since $ln(z)<= z, forall z "arbitrarily large"$) \

  $0 <= ln(x)/x <= 2/sqrt(x)$. By Squeeze Theorem $lim_(x->oo) ln(x)/x = 0$
]

Examples:

1. Show that $lim_(x->oo) ln(x)/x^p = 0, forall p > 0$ \
$lim_(x->oo) ln(x)/x^p = lim_(x->oo) ln(x^p)/x^p dot 1/p$ $quad quad "Let" u = x^p, x-> oo, u -> oo$ \

$lim_(u->oo) ln(u)/u dot 1/p = 0 dot 1/p = 0$

2. Show that $lim_(x->oo) ln(x^p)/x = 0, forall p > 0$\
$lim_(x->oo) ln(x^p)/x = lim_(x->oo)p dot lim_(x->oo) ln(x)/x = p dot 0 = 0$

3. Show that $lim_(x->oo) x^p/e^x = 0, forall p > 0$
$lim_(x->oo) x^p/e^x quad quad "Let" x = ln u <=> u = e^x, x-> oo, u -> oo$ \
$lim_(u->oo) ln(u)^p/u = lim_(u->oo)  (ln(u)/u^(1/p))^p = 0^p = 0 $

4. Show that $lim_(x->0^+) x^p/ln(x) =0, forall p > 0$ \
$lim_(x->0^+) x^p/ln(x) quad quad ("Let" u = 1/x)$ \
$lim_(u->oo) 1/(u^p) dot ln(1/u) = 0$

#info[*Vertical Asymptotes*\
1. $lim_(x->a^+) f(x) = infinity$ if for every $m>0, exists delta > 0$ s.t. if $a<x<a+delta$ then $f(x) > m$
2. $lim_(x->a^-) f(x) = infinity$ if for every $m>0, exists delta > 0$ s.t. if $a-delta<x<a$ then $f(x) > m$
3. $lim_(x->a^+) f(x) = lim_(x->a^-) f(x) = infinity ==> lim_(x->a) f(x) = infinity$
4. If $lim_(x->a^plus.minus) f(x) = plus.minus infinity$ then there is a vertical asymptote at $x = a$
]


#info[*Continuity*\
We say that a function $f$ *is continuous* at $a$ if $f$ is defined at $a$ and \
1. $lim_(x->a) f(x) = f(a)$\
2. For every $epsilon > 0, exists delta >0$ s.t. if $|x-a|<delta$, then $|f(x)-f(a)|< epsilon$
3. for every sequence ${x_n}$ with $x_n -> a$, we have $f(x_n) -> f(a)$
4. If $f$ is not continuous at $a$, then it is called *discountinous at* $a$
]

Example:
1. $f(x) = |x|$ is continuous at $a$
$f(x)= cases(x "if" x > 0, -x "if" x <= 0)$\

$lim_(x->0^-) |x| = lim_(x->0^-) -x = 0$\
$lim_(x->0^+) |x| = lim_(x->0^+) x = 0$\
Thus $lim_(x->0) |x| = 0$

#tip[*Polynomials are continuous at all points*
\
$ lim_(x->a) p(x) = p(a) $
]

#info[ Alternative way of Proving Continuity
$ lim_(x->a) f(x) = f(a) equiv lim_(h->0) f(a+h) = f(a) $
]

Example: \
1. Prove $sin(x)$ is continuous at $x in RR$

$sin(a+h)= sin(a)cos(h) + sin(h)cos(a)$ \

$lim_(x->a) sin(x) = lim_(h->0) sin(a+h) \
= lim_(h->0) sin(a) dot lim_(h->0) cos(h) + lim_(h->0) sin(h) dot lim_(h->0) cos(a)$ \
$= sin(a) dot 1 + 0 dot cos(a) = sin(a)$
\
\

2. Given that $e^x$ is continuous at $x = 0$, prove that it is continuous on all of $RR$

$lim_(x->a) e^x = lim_(h->0) e^(a+h) = e^a dot 1 = lim_(h->0)$

#tip[*Continuity of Inverse* \
Let $f(x)$ be invertible at $x=a$ with $f(a) = b$. Then $f^(-1)(y)$ is continuous at $y=b$] \

#info[*Arithmetic Rules for Continuous Functions* \
Let $f, g$ be continuous at x = a.
1. For any constant $c in RR$, cf(x) is continuous at $x=a$
2. $f(x)plus.minus g(x)$ remain continuous
3. $f(x)g(x)$ remain continuous
4. If $g(x) != 0, f(x)/g(x)$ remain continuous
]
#info[*Composition of Continuous Function*\
If $f$ is continuous at $x = a$, and $g$ is continuous at $x=f(a)$, then \
$h = g compose f$ is continuous at $x=a$ 
]

Proof:\
$"Given" f "is continuous at" a, "then for any" {x_n}, x_n -> a, f(x_n) -> f(a)$ But $g$ is continuous at $f(a)$, so for any ${y_n}$ with $y_n -> f(a), g(y_n)->g(f(a))$. Let $y_n = f(x_n)$. Then $g(f(x_n))->g(f(a))$ since $x_n$ is aribitrary, $g compose f$ is continuous at $x=a$
 \
 \
#tip[*Continuity on Invervals*\

1. We say that a function $f$ is continuous on $(a, b)$ if it is continuous at each $x in (a, b)$
2. We say that a function $f$ is continuous on $[a, b]$ if it is continuous on $(a, b)$ and we have $lim_(x->a^-) f(x) = f(a)$ and $lim_(x->b^+) f(x) = f(b)$
]
\


Example:\
Find the largest interval on which $f(x) = x^(1/4)$ is continuous.\
For $(0, oo)$ given $a in (0, oo), f$ is continuous at $a^-$ beacuse it is the inverse of $x^4$, which is continuous at $RR$.

For $a= 0, lim_(x->0^+) x^(1/4) = 0$, so $f$ is continuous at 0 as well.

$therefore f "is continuous on" [0, oo) $

#info[*Types of Discountinuity*\

1. A discontinuity is a removable discontinuity if $lim_(x→a) f (x)$ exists but does not equal $f(a)$. All discontinuities not of this type are non-removable.

2. A discontinuity is a jump discontinuity if $lim_(x→a^-) f(x)$ and $lim_(x→a^+) f(x)$ exist but do not agree.

3. A discontinuity is infinite if either $lim_(x→a^-) f(x) = ±∞$ or $lim_(x→a^+) f(x) = ±∞$. 

4. A discontinuity is oscillatory if $lim_(x→a) f(x)$ does not exist, but $f$ is bounded and oscillates infinitely often near $x = a$.
]

\

#info[*Intermediate Value Theorem (IVT)*\
If $f$ is continuous on a closed interval $[a, b]$ and $alpha in RR$ is such that either $f(a) < alpha < f(b)$ or $f(a) > alpha > f(b)$, then $exists c in (a, b)$ s.t. $f(c) = alpha$
]

Examples:
1. Show that $sin(x)$ and $1-x^2$ intersects on $(0, 1)$ \
Since $sin(x) "and" 1-x^2$ are continuous on $RR$ therefore continuous on $[0, 1]$ \
For $x = 1, sin(1)-1+(1)^2 = 1^2-1 > 1$ \
For $x = 0, sin(0)-1+(0)^2 = -1 < 1$ \
$f(0) < 0 < f(1)$ \
By IVT, $exists c in (0, 1), f(c) = 0$, meaning the given function intersect

2. Show that $x^3+3x^2-x-3$ has a root in the interval $(-5, -2)$
Since $x^3+3x^2-x-3$ is continuous on $RR$ therefore continuous on $[-5, -2]$ \
For $x = -5, (-5)^3 + 3(-5)^2 -(-5)-3 = -48 < 0$\
For $x = -2, (-2)^3 + 3(-2)^2 -(-2)-3 = 3 > 0$ \
$-48 < 0 < 3$\
By IVT, $exists c in (-5, -2), f(c) = 0$, meaning there is a point where the given function has a root

#info[*Bisection Method*\
Let $F$ be a continuous function. \
To approximate a value $c$ s.t. $F(c) = 0$ with an error of at most $epsilon$

1. We need to find $a, b$ s.t. $F(a)$ and $F(b)$ have opposite signs
2. IVT gives that $c in (a, b)$ 
3. Look at the mid-point $a+ (b-a)/2$. Is $F(a + (b-a)/2)$ positive or negative? 
$cases(1. "If it has the same sigh as" F(a) \, "then it has the opposite sign with" F(b) ==> "IVT gives" c in (a+(b-a)/2 \, b),

 2. "If it has the opposite sigh as" F(a) \, "then it has the same sign with" F(b) ==> "IVT gives" c in (a, a+(b-a)/2 \)))$
4.  Repeat Step 3 until $|b-a| < epsilon$
]

 == CHAPTER ENDS
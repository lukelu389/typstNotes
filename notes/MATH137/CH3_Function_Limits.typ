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
  2. For all sequences ${x_n}$ satisfying $lim_(n->oo) x_n = a$ and $x_n!=a forall n in NN,$ we have that $lim_(n->oo)f(x_n) = L$
]

#tip[ Usage of Sequential Characterization of Limits
1. Find a sequence ${x_n}$ with $x_n->a$
2. Find two sequences ${x_n}, {y_n}$ with $x_n, y_n -> a "and" x_n, y_n !=a forall n in NN "but which" {f(x_n)}, {f(y-n)}$ converge to different values
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
  5. $lim_(n->oo) frac(f(x), g(x)) = L / M "if " M=0$
  6. If $alpha>0$ and $L > 0$, then $lim_(x>a) f(x)^alpha = L^alpha$

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
#info[ *Limit of Rational Functios* \

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

   If $forall a in I \\ {a}$ we have $g(x) < f(x)<=h(x)$ and $lim_(x->a) g(x) = lim_(x->a)h(x) = L$, then $lim_(x->a) f(x) = L$]

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

#import "../../preamble.typ": *

#let Title = "CH 3 — Function Limits and Continuity"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== Definitions
\
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

1. Find a sequence ${x_n}$ with $x_n->a$
2. Find two sequences ${x_n}, {y_n}$ with $x_n, y_n -> a "and" x_n, y_n !=a forall n in NN "but which" {f(x_n)}, {f(y-n)}$ converge to different values

#proof[
   $==>$ : $lim_(x->a)f(x) = L$ means $forall epsilon > 0, exists delta > 0: |x-a|<delta$, then $|f(x)-L|< epsilon$. \
   Let ${x_n}$ be s.t. $x_n ->a("meaning that "forall epsilon > 0, exists N in RR: forall n > NN, |x_n-a|<epsilon_2)$ and $x_n!=a$ for any $n$.

   In particular, let $epsilon$ for $x_n->a$ be $delta$. Then $forall n > N$, $|x_n-a|< delta$, and so $|f(x)_n| < epsilon_1$. Then $forall n > N, |x_n-a|<delta$ and so $|f(x_n)-L|< epsilon_1$. So by definition, $lim_(n->oo) f(x_n)=L$
]

*Question:* We saw the limit of a sequence is unique. Is the same true for limits of functions?

ANS: NO, it is like saying $lim_(x->a) f(x) = L$ $"and "= M "and" L != M$
Suppose true. By Sequential Characterization of Limits, $forall {x_n} -> a$ but $x_n != a forall n, f(x_n) -> L "and" f(x_n)->M "but" L != M$ Since the limits of sequences are unique, thus there is a contradiction. 
 \
 \

Examples:

Prove that $lim_(x->0) cos(1/x)$ does not exist \
We take sequences of peak points of $cos(1/x)$, that is $-1, 1$. Then will converge to $-1, 1$ repeatedly, so by Sequential Characterization, $lim_(x->0)cos(1/x)$ will not exist.

$cos(1/x) = 1$ if $x = 1/(2 k pi), k in ZZ$, and  $cos(1/x) = -1$ if $x = 1/((2k+1) pi), k in ZZ$.

Let $x_n = 1/2n pi$ and $y_n = 1/(2n+1)pi$. Then $x_n, y_n -> 0, x_n, y_n !=0 forall n$. It converges to both $-1 "and" 1$. By Sequential Characterization, the limit DNE. 
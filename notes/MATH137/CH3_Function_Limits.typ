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

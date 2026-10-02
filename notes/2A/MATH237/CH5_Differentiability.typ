#import "../../../preamble.typ": *
#show: conf
#import "@preview/diverential:0.2.0": *
#import "@preview/physica:0.9.8": *
#let strut(h) = box(height: h, width: 0pt)
#let Title = "CH 5 — Differentiability"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

Recall $f(x, y) = cases(frac(2 x y, x^2+y^2) quad (x, y)!=0, 0 quad (x, y) =(0, 0)) $

We have previously shown that $f$ is not continuous at $(0, 0)$

But $f_x (0, 0) = f_y(0, 0)= 0$. Thus partial derivatives exists

Notice that here differentiability does not imply continuity

\

Recall in Calculus I where cusps, jump discontinuity, vertical asymptotes are not differentiable

When $f(x)$ differentiable, the linear approximation is defined and is a good local approximation on the graph


#defn[*Remainder Approximation* \

If $g'(a)$ exists, then $ lim_(x->a) frac(|g(x) - L_a (x)|, |x-a|) =  lim_(x->a) frac(|R_(1, a) (x)|, |x-a|)  $
]

#proof[
$R_(1, a) (x) = g(x) - L_a (x) = g(x)-[g(a)+g'(a)(x-a)] \ 
\
frac(|R_(1, a) (x)|, |x-a|) = frac(| g(x)-[g(a)+g'(a)(x-a)]|, |x-a|) = |frac(g(x)-g(a), x-a) - g'(a)|, quad x!=a $

$lim_(x->a) frac(|R_(1, a) (x)|, |x-a|)  = lim_(x->a) |frac(g(x)-g(a), x-a) - g'(a)| = |g'(a) - g'(a)| = 0$
]
#align(right)[$square$]

#defn[*Differentiability* \ 

$f(x)$ is differentiable at $x=a$ if $ lim_(x-a) frac(|R_(1,a) (x)|, |x-a|) = 0 $

$f(x, y)$ is differentiable at $(x, y) = (a, b)$ if $ lim_((x, y)->(a, b)) frac(|R_(1,a) (x, y)|, ||(x, y)-(a, b)||) = 0 $
]

\
*Note*: for the linearization to exist at $(a, b)$, both partial derivatives must exists at $(a, b)$ but this is not enough to guarantee differentiability. The existence of the partial derivatives is a necessary condition, but not sufficient condition for differentiability.
\
\
Example:

Show that $g(x) = x^2$ satisfy the above definition on differentiability at $x=1$.

$R_(1, a) = g(x) - [g(a)+g'(a)(x-a)] = x^2 - 1 - 2(x-1) = x^2-2x+1$

$lim_(x->1) frac(|x^2-2x +1|, |x-1|) = lim_(x->a) |frac(x^2-2x+1, x-1)| = lim_(x->a)|x-1| = 0$


#defn[*Derivatives at a Point* \ 

If $f(x, y)$ satisfy 

$ lim_((x, y)->(a, b)) frac(|f(x, y)-f(a, b) - c(x-a) - d(y-b)|, |(x, y)-(a, b)|) = 0 $

then $c=f_x(a, b), d = f_y(a, b)$
]
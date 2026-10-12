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


\

#defn[*Derivatives at a Point* \ 

If $f(x, y)$ satisfy 

$ lim_((x, y)->(a, b)) frac(|f(x, y)-f(a, b) - c(x-a) - d(y-b)|, ||(x, y)-(a, b)||) = 0 $

then $c=f_x(a, b), d = f_y(a, b)$
]

#proof[

  Let $vec(z) = {(a, b)+c(x-a)+d(y-b)}$ be any plane $(a. b, f(a, b))$

  We assume $ lim_((x, y)->(a, b)) frac(|f(x, y)-f(a, b) -c(x-a)-d(y-b)|, ||(x, y)-(a, b)||) = 0$

  This must be true on all paths approaching $(a, b)$

  If $ y = b, lim_(x->a) frac(|f(x, b)-f(a, b)-c(x-a)|, |x-a|) = 0 ==> lim_(x->a) |frac(f(x, b)-f(a, b)|, x-a) -c| = 0 <==> c = f_x (a, b)$

  If $ x = a, lim_(y->b) frac(|f(a, y)-f(a, b)-d(y-b)|, |y-b|) = 0 ==> lim_(y-b) |frac(f(a, y)-f(a, b)|, y-b) -d| = 0 <==> d = f_y (a, b)$

  $vec(z) = f(a, b)+f_x (a, b)(x-a) +f_y (a, b)(y-b)$
]
#align(right)[$square$]

\
#defn[*Tangent Plane* \ 

Consider a function $f(x, y)$ which is differentiable at $(a, b)$. The *tangent plane* to the surface $z=f(x, y)$ at $(a, b)$ is $ z=f(a, b)+f_x (a, b)(x-a)+f_y (a, b)(y-b) $
]

\
Examples:

1. Determine whether $f(x, y) = x^2+y^2$ is differentiable at $(0, 0)$

  $f_x(0, 0) = lim_(h->0) frac(f(0, h)-f(0, 0), h) = 0/h = 0; f_y(0, 0) = lim_(h->0) frac(f(h, 0)-f(0, 0), h) = 0$

  $L_(0, 0) = f(0, 0) + f_x (0, 0)(x) + f_y (0, 0)(y) = 0 + 0+0=0 $

  $lim_((x, y)->(0, 0)) frac(|R_(1, (0, 0))(x, y) |, ||(x, y)-(0, 0)||) = lim_((x, y)->(0, 0)) frac(|x^2+y^2|, sqrt(x^2+y^2)) = lim_((x, y)->(0, 0)) sqrt(x^2+y^2) = 0$

  $f$ is differentiable at the origin

\

2. $f(x, y) = cases(frac(2x y, x^2+y^2) &"if" (x, y)!=(0, 0), 0 &"if" (x, y) = (0, 0))$ is not differentiable at $(0, 0)$

  $f_x (0, 0) = 0 = f_y (0, 0); L_(0, 0) (x, y) = f(0, 0)+f_x (0, 0)(x) + f_y (0, 0)(0) = 0+0+0=0$

  $lim_((x, y)->(0, 0)) frac(|R_(1, (0, 0))|, ||(x, y)-(a, b)||) = lim_((x, y)->(0, 0)) frac(frac(|2x y|, x^2+y^2), sqrt(x^2+y^2) ) = lim_((x, y)->(0, 0)) frac(2|x||y|, (x^2+y^2)^(3/2))$
  
  Try approach $(0, 0)$ along path $y = sqrt(x) ==> lim_(x->0) frac(2, (x+1)^(3/2)) = 2 !=0$. 
  
  $therefore f$ is not differentiable at $(0, 0)$

3. $f(x, y) =|x y|$ is differentiability at $(0, 0)$ but not at $(1, 0)$

  $f_x (0, 0) = lim_(h->0) frac(f(h, 0)-f(0, 0), h)= lim_(h->0) 0/h = 0$; $f_y (0, 0) = lim_(h->0) frac(f(0, h)-f(0, 0), h)= lim_(h->0) 0/h = 0$

  $L_(0, 0) (x, y) = 0$

  $lim_((x, y)->(0, 0)) frac(|R_(1, (0, 0))|, ||(x, y)-(0, 0)||) = lim_((x, y)->(0, 0)) frac(|x y|, sqrt(x^2+y^2))$

  $|frac(x y, sqrt(x^2+y^2))| <= frac(sqrt(x^2+y^2)|y|, sqrt(x^2+y^2)) = |y|; lim_(y-> 0) |y| = 0$
  
  By Squeeze Theorem, $lim_((x, y)->(a, b)) frac(|x y|, sqrt(x^2+y^2)) = 0$

  \


  $f_x (1, 0) = lim_(h->0) frac(f(x+h, 0) - f(x, 0), h) = lim_(h->0) 0/h = 0$

  $f_y (1, 0) = lim_(h->0) frac(f(1, y+h)- f(1, y), h) = lim_(h->0) frac(|h|, h) = "DNE"$


  $f_y (1, 0)$ does not exist, thus the linearization of $f(x)$ does not exist. Therefore, $f(x, y)$ is not differentiable at $f(1, 0)$


#defn[*Differentiability and Continuity* \

If $f(x, y)$ is differentiable at $(a, b)$, then $f(x, y)$ is continuous at $(a, b)$
]

#proof[
  Using the fact that the $R_(1, (a, b)) (x, y) = f(x, y) - L_(a, b) (x, y)$, we can write 
  $ f(x, y) &= L_(a, b) (x, y) + R_(1, (a, b)) \ 
  
  &= f(a, b) = grad f(a, b) dot (vec(x)-vec(a)) + R_(1, (a, b)) (x, y) \

\

  lim_((x, y)->(a, b)) f(x, y) &= lim_((x, y)->(a, b)) f(a, b) + lim_((x, y)->(a, b)) grad f(a, b)(x-a, y-b) + lim_((x, y)->(a, b)) R_(1, (a, b)) (x, y) \

  &= f(a, b) + 0+ lim_((x, y)->(a, b)) R_(1, (a, b))
  $

  For $(x, y)!=(a, b)$:

  $ R_(1, (a, b)) = frac(R_(1, (a, b)) ||(x, y)-(a, b)||, ||(x, y)-(a, b)||) $ since $f$ is differentiable at $(0, b)$, $ lim_((x, y)->(a, b)) R_(1, (a, b)) = lim_((x, y)->(a, b)) frac(R_(1, (a, b)) ||(x, y)-(a, b)||, ||(x, y)-(a, b)||) = 0 
  $

  $
  lim_((x, y)->(a, b))  f(x, y) = f(a, b) +0+0 \

  lim_((x, y)->(a, b)) f(x, y) = f(a, b)$
  ]
#align(right)[$square$]

Examples

1. $f(x, y) = sqrt(x^2+y^2)$

  Level curves:
  
  $sqrt(x^2+y^2) &= k, quad k>=0 \
  x^2+y^2 &= k^2$

  #align(center)[ #image("../../../pictures/yr2/cal3ch5_1.png", width: 8cm)]
  
  Cross Secions

  $z = sqrt(c^2+y^2), c in RR$, $z= sqrt(x^2+d^2), d in RR$

  #align(center)[ #image("../../../pictures/yr2/cal3ch5_2.png", width: 8cm)]

  Graph in 3D

  #align(center)[ #image("../../../pictures/yr2/cal3ch5_3.png", width: 8cm)]

2. Show the above function is not differentiable at $(0, 0)$

  $f_x = lim_(h->0) frac(f(h, 0) - f(0, 0), h) = lim_(h->0) frac(sqrt(h^2), h) = lim_(h->0) frac(|h|, h) = "DNE"$

  $f_x (0, 0)$ does not exist, thus the linearization does not exist at $(0, 0)$. So $f(x, y)$ is not differentiable at $(0, 0)$

#thm[*Mean Value Theorem* 

If $f(t)$ is contnuous on the closed interval $[t_1, t_2]$, $f$ is differentiable on the open
interval $(t_1, t_2)$,  then there exists $t_0 ∈ (t_1, t_2)$ such that
$ f (t_2)- f (t_1)= f'(t_0) (t_2- t_1) $
]

#thm[*Continuity Theorem* \

If the partial derivatives $f_x (x, y)$ and $f_y (x, y)$ are continuous at $(a, b)$, then $f(x, y)$ is differentiable at $(a, b)$]

#proof[
  $R_(1, (a, b)) = f(x, y) - f(a, b) - f_x (a, b)(x-a) - f_y (a, b) (y-b)$
  
  $f_x, f_y$ are continuous at $(a, b)$, so $f_x, f_y$ are defined in some neighbourhood of $(a, b), N(a, b)$
  For $(x, y) in N(a, b)$

  $f(x, y)- f(a, b) = [f(x, y) - f(a, y)] + [f(a, y) - f(a, b)]$



  $[f(x, y) - f(a, y)] &= f_x (overline(x), y) (x-a) \
  
  &= f_x (overline(x), y) (x-a) + f_x (a, b) (x-a) - f_x (a, b) (x-a) quad quad overline(x) in (x, a)  \

  &= f_x (a, b) (x-a)  + A(x-a) \

  ==> A &= f_x (overline(x), y) - f_x (a, b)

  \

  [f(x, y) - f(a, y)] &= f_y (a, overline(y)) (y-b) \
  
  &= f_x (a, overline(y)) (y-b) + f_y (a, b) (y-b) - f_y (a, b) (y-b) quad quad overline(y) in (y, b)  \

  &= f_y (a, b) (y-b) +B(y-b) \

  ==> B &= f_y (a, overline(y)) - f_y (a, b)

  $
  
  $ R_(1, (a, b)) (x, y) &=  f_x (a, b) (x-a)  + A(x-a) + f_y (a, b) (y-b) +B(y-b) - f_x (a, b) (x-a) - f_y (a, b) (y-b)  \
  
  &= A (x-a) +B(y-b)$ 
  \

  $abs(frac(|R_(1, (a, b)) (x, y)|, ||(x, y) - (a, b)||) - 0) &= abs(frac(|R_(1, (a, b)) (x, y)|, ||(x, y) - (a, b)||))  = abs(A (x-a) +B(y-b)) /(sqrt((x-a)^2+(y-b)^2)) = frac(|A||x-a|, (sqrt((x-a)^2+(y-b)^2))) + frac(|B||y-b|, (sqrt((x-a)^2+(y-b)^2)))  \
  
  &= frac(|A|sqrt((x-a)^2), (sqrt((x-a)^2+(y-b)^2))) + frac(|B|sqrt((y-b)^2), (sqrt((x-a)^2+(y-b)^2))) <= frac(|A|s(sqrt((x-a)^2+(y-b)^2)), (sqrt((x-a)^2+(y-b)^2))) + frac(|B|(sqrt((x-a)^2+(y-b)^2)), (sqrt((x-a)^2+(y-b)^2)))  \
   &= |A| + |B|$

  Since $f_x, f_y$ is continuous at $(a, b)$, $lim_((x, y)->(a, b)) f_x (overline(x), y) = f_x (a, b)$,
  
   $lim_((x, y)->(a, b)) f_y (a, overline(y)) = f_y (a, b)$

  $==> lim_((x, y)->(a, b)) A = 0, lim_((x, y)->(a, b)) B = 0 ==>lim_((x, y)->(a, b)) |A| + |B| = 0$

  By Squeeze Theorem, $lim_((x, y)->(a, b)) frac(|R_(1, (a, b)) (x, y)|, ||(x, y) - (a, b)||) = 0$ so $f "is differentiable at" (a, b)$
]
#align(right)[$square$]

Example:

$f(x, y) = sqrt(x^2+y^2)$ is differentiable $forall (x, y)!= (0, 0)$

For $(x, y) != (0, 0)$

$f_x = x/sqrt(x^2+y^2), f_y = y/sqrt(x^2+y^2)$

By continuity theorem, $f_x, f_y$ are continuous $(x, y) != (0, 0)$, therefore differentiable $(x, y) != (0, 0)$


\
*Notation*: if the $k$-th order partial derivatives of $f(vec(x))$ are continuous, $f in C^k$

If $f(x, y) in C^k ==> f_x, f_y$ are continuous therefore $f$ is differentiable


$f(x, y) = cases((x^2+y^2) sin(1/sqrt(x^2+y^2)) "if" (x, y)!=(0, 0), 0 "if" (x, y) = (0, 0))$
Notice $f$ is differentiable at $(0, 0)$ and has a horizontal tangent plane. But $f_x, f_y$ are discontiuous due to rapid oscillation

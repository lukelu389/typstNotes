#import "../../../preamble.typ": *
#show: conf
#import "@preview/diverential:0.2.0": *
#import "@preview/physica:0.9.8": *
#let strut(h) = box(height: h, width: 0pt)
#let Title = "CH 8 — Taylor Polynomial and Taylor Theorem"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

Recall: For a single variable function, $f(x)$, the second-order Taylor Polynomial at $x =a$ is $ P_(2, a) (x) = f(a) + f'(a)(x-a)+1/2f''(a)(x-a)^2 = L_a (x) +1/2 f''(a)(x-a)^2  $

This is the 2nd order polynomial which agrees with $f(x)$ at $x=a$ up to the 2nd order derivative, i.e.

$ P_(2, a)(a) = f(a) \ P'_(2, a) = f'(a) \ P''(2, a)(a) = f''(a) $


#defn[*Taylor Polynomial* \

If $f(x, y) in C^2$ at $(a, b)$, then second-order Taylor Polynomial is defined of $f$ at $(a, b)$ by $ P_(2, (a, b))(a, b) = L_((a, b))(x, y)  
+1/2(f_(x x)(x-a)^2 +2 f_(x y)(a, b)(x-a)(y-b)+f_(y y)(y-b)^2) $

]

#defn[*Hessian Matrix* \ 

The *Hessian Matrix* of $f(x, y)$ is $ H f(x, y) = mat(f_(x x)(x, y), f_(x y)(x, y); f_(y x)(x, y), f_(y y)(x, y)) $
]

Examples:

1. Use both linearization and the second order Taylor Polynomial of $f(x, y) = e^(x+y)$ at $(0, 0)$ to approximate $f(0.1, 0.2)$

  $L_((0, 0))(0.1, 0.2) = eval(1+x+y, (x, y)=(0.1, 0.2)) = 1.3$

  $P_(2, (0, 0)) = L_((0, 0))(0.1, 0.2) + eval(1/2((x)^2+2(x)(y)+(y)^2), (x, y)=(0.1, 0.2))  \
  
  = 1.3+1/2((0.1)^2+2(0.1)(0.2)+(0.2)^2) = 1.3+(0.005+0.02+0.02) = 1.345$

2. Use the linearization and second-order Taylor polynomial of $f(x, y) = 1/2 x -y+x^5$ at $(0, 0)$ to approximate $f(0.1, 0.1)$

  $L_(0, 0)(x, y) = 0+(1/2+5(0)^4)(x)+ (-1)(y) = 1/2x-y$

  $L_(0, 0)(0.1,0.1) = 1/2(0.1)-0.1 = -0.05$

  $P_(2, (0, 0))(x, y) = -0.05+1/2[(20(0)^3)(x)^2 + 2 (0)(x)(y) + (0)(y)^2] = -0.05$

  $P_(2, (0, 0)) = -0.05$


In practical application, we don't know the value of what we are trying to approximate, so we cannot calculate the approximate the approximation error exactly.

#thm[*Taylor's Polynomial 1D* \ 

If $f''(x)$ exists on $[a, x]$, then $exists a in RR$ s.t $c in (a, x)$ and $ f(x) = f(a)+f'(a)(x-a)+R_(1, a)(x) $ where $R_(1, a)(x) = 1/2 f''(c)(x-a)^2$
] 
#thm[*Taylor's Polynomial 2D* \ 

If $f(x, y) in C^2$ in some neighbourhood $N(a, b)$ of $(a, b)$, then $forall (a, b) in N(a, b), exists (c, d)$ on the line segment joining $(a, b)$ and $(x, y)$ s.t. $ f(x, y) = f(a, b)+f_x (a, b)(x-a)+f)y (a, b)(y-b)+R_(1, (a, b))(x, y) $ where 

$ R_(1, (a, b)) (x, y)= 1/2[f_(x x)(a, b)(x-a)^2+2f_(x y) (a, b)(x-a)(y-b)+f_(y y)(a, b) (y-b)^2] $
]

#proof[
Consider the line segment joining $(x, y)$ and $(a, b)$. Consider $f(x, y)$ and let $g(t) = f(vec(L)(t))$.

Notice for a fixed $(x, y), x-a "and" y-b$ are constant, let $x-a = k, y-b = h$.

$g(t) = f(vec(L)(t)) = f(a +t k, b + t h), 0<=t<=1$

$g'(t) = f_x (vec(L)(t))k+f_y (vec(L)(t))h$

$g''(t) = f_(x x)(vec(L)(t))k^2 + f_(x y) (vec(L)(t))k h +f_(x y)(vec(L)(t))h k + f_(y y) (vec(L)(t))h^2$

Since Taylor's theorem requires $f in C^2$, then $f_(x y) = f_(y x)$

$ g''(t) = f_(x x)(vec(L)(t))k^2 + 2f_(x y) (vec(L)(t))k h  + f_(y y) (vec(L)(t))h^2 $

We have $g''(t)$ is defined on $[0, 1]$, we can apply Taylor's theorem to $g(t)$ on $[0, 1]$, that is $exists tilde(c) in (0, 1)$ s.t. for $t in [0, 1]$, $g(t) = g(0)+g'(0)(t-0)+1/2 g''(tilde(c))(t-0)^2$

Let $t = 1, g(1) = g(0)+g'(0)+1/2 g''(tilde(c)) $

$g(1) = f_x (vec(L)(1))k = f(x,y)$

$g(0) = f(a, b)$

$g'(0) = f_x (a, b)(x-a)+f_y (a, b)(y-b)$

Let $(c, d) = L(tilde(c)) "point on the line segment"$

$==> g''(tilde(c)) = f_(x x) (c, d)(x-a)^2 +2 f_(x y) (c, d)(x-a)(y-b)+f_(y y) (a, b)(y-b)^2$
\

$f(x, y) = f(a, b)+f_x (a, b)(x-a)+f_y (a, b)(y-b)+ \

1/2  f_(x x) (c, d)(x-a)^2 +2 f_(x y) (c, d)(x-a)(y-b)+f_(y y) (a, b)(y-b)^2 $

]
#align(right)[$square$]

\
\
Example:

Show that $x>=0, y>=0$ and $f(x, y) = ln(1+x+2y)$ $R_(1, (0, 0)) <=3(x^2+y^2)$


  $f_x = 1/(1+x+2y), f_y = 2/(1+x+2y), f_(x x) = -1/(1+x+2y)^2, f_(x y)  = f_(y x)= - 2/(1+x+2y)^2, f_(y y) = -4/(1+x+2y)^2$

  By Taylor theorem, $exists (c, d)$ on the line joining $(0, 0)$ and $(x, y)$ s.t.
  
   $ |R_(1, (0, 0))(x, y)| &= |1/2 [f_(x x)(c, d)x^2 + 2 f_(x y)(c, d))x y + f_(y y)(c, d)y^2]| \
   
   &<= 1/2[ |f_(x x)(c, d)|x^2+2|f_(x y)(c, d)|x y + |f_(y y)(c, d)|y^2] $

   $|f_(x x)(c, d)| = 1/(1+c+2d)^2 <= 1, |f_(x y)(c, d)| = 2/(1+c+2d)^2 <=2,|f_(y y)(c, d)|  = 4/(1+c+2d)^2 <= 4$

   $therefore |R_(1, (0, 0))(x, y)|<= 1/2 [x^2 +4|x||y| +4y^2] =^(2|x||y| <= x^2+y^2) 1/2(x^2 +2(x^2+y^2)+4y^2)\ = 3/2 x^2+3y^2 <= 3(x^2+y^2) = 3||(x, y)-(0, 0)||^2$

   We can always have an upper bound that is greater than the current upper bound.

  In general we get the below theorem.

#thm[*Corollary of Upper Bound of 2D Taylor Polynomial* \ 
If $f(x, y) in C^2$ in some neighbourhood $N(a, b)$ of $(a, b)$, then $exists M in RR_(>=0)$ s.t. 
$ R_(1, (a, b))(x, y) <= M||(x, y)-(a, b)||^2 quad forall (x, y) in N(a, b) $

]

#tip[*Taylor Theorem usage* \

1. Always use the triangle inequality first to obtain the error as a sum of non-negative terms

2. DO NOT substitute $(a, b)$ into the second partial derivatives directly, instead use an arbitrary $(c, d)$ as unknown point

]
Examples:

Let $f(x, y) = e^(-2x+y)$ Show that the error in $L_(1, 1)$ is at most $3e[(x-1)^2+(y-1)^2]$ \
if $0<=x<=1, 0<=y<=1$

$f_x = -2e^(-2x+y), f_y = e^(-2x+y); f_(x x)  = 4e^(-2x+y), f_(x y) = f_(y x) = -2e^(-2x+y), f_(y y) = e^(-2x+y)$

$c, d = (0, 1)$

$|f_(x x)(0, 1)| <= 4e^(-2(0)+1) = 4e$, $|f_(x y)(0, 1) <= 2e^(-2(0)+1)| = 2e$, $|f_(y y)(0, 1)| <= e^(-2(0)+1)= e$

By Taylor's theorem, $exists (c, d)$ between $(1, 1)$ and $(x, y)$ s.t 

$ R_(1, (1, 1))(x, y) &= 1/2|f_(x x) (c, d)(x-1)^2 + 2f_(x y) (c, d)(x-1)(y-1)+f_(y y) (c, d)(y-1)^2| \

&<= 1/2 [ |f_(x x) (c, d)|(x-1)^2 + 2|f_(x y) (c, d)(x-1)(y-1)|+|f_(y y) (c, d)|(y-1)^2] \ 

&<= 1/2 [ 4e(x-1)^2 + 4e|x-1||y-1| + e(y-1)^2]  \

&<= e/2[4(x-1)^2 + 2(x-1)^2 + 2(y-1)^2+(y-1)^2] <= 3e[(x-1)^2+(y-1)^2]

$



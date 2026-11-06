#import "../../../preamble.typ": *
#show: conf
#import "@preview/diverential:0.2.0": *
#import "@preview/physica:0.9.8": *
#let strut(h) = box(height: h, width: 0pt)
#let Title = "CH 9 — Critical Points"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== 9.1 Critical Points and Local Extrema

Recall: In single -variable calculus, local extrema occur when $f'(x) = 0$ or when $f'(x)$ does not exist

#defn[*Local Extrema* \ 

In two dimensions, $(a, b)$ is a 

- *Local Maximum* of $f$ if $f(x, y)<=f(a, b)$ in some neighborhood of $f(a, b)$

- *Local Minimum* of $f$ if $f(x, y)>=f(a, b)$ in some neighborhood of $f(a, b)$
]

Examples:

Local Minimum:
#align(center)[#image("../../../pictures/yr2/cal3ch9_1.png", width:10cm)]

#thm[*Local Extrema* \

If $f(a, b)$ is a local extrema of $f(x, y)$, then $ f_x (a, b)=0 "or DNE"  $ and $ f_y (a, b) = 0 "or DNE" $
]

#proof[
  Consider $g(x) = f(x, b)$. If $(a, b)$ is a local extrema of $f, x=a$ must be a local extrema of $g(x)$. Therefore, $g'(a) = 0 "or DNE" = f_x (a, b)$. 
  
  Similar argument can be applied for $g(x) = f(a, y)$
]
#align(right)[$square$]

#defn[*Critical Points* \ 

A point $(a, b) in "dom"f$ is a critical point of $f$ if 

$ f_x (a, b) = 0 "or DNE" $ and $ f_y(a, b)= 0 "or DNE" $

A local extrema must occur at a critical point BUT the reverse is not true.
]

#defn[*Saddle Point* \

A critical point $(a, b)$ is a *saddle point* of $f(a, b)$ if in every neighborhood of $(a, b) exists (x_1, y_1) "and" (x_2, y_2)$ s.t. $ f(x_1, y_1) >f(a, b) > f(x_2, y_2) $
]

#align(center)[#image("../../../pictures/yr2/cal3ch9_2.png", width:10cm)]

Example: 

Find all critical points of $f(x, y) = x^2 y-2x y^2+3x y+4$

  $f_x = 2x y-2y^2+3y, f_y = x^2+4x y+3x$. It is two continuous functions, so the critical points must have $f_x = f_y = 0$

  $2x y - 2y^2+3y = x^2 -4 x y +3x = y(2x-2y+3)= x(x-4y+3)$

  $y_1 = 0, x_1 = 0 : (0, 0)$

  $y_2 = 0, x+3 = 0 ==> x_2 = -3: (-3, 0)$

  $2x+2y+3 = 0, x_3 = 0 ==>-2y+3 = 0, y_3 = 3/2: (0, 3/2)$

  $2x-2y+3 =0, x-4y+3 = 0 ==> x_4 = -1, y_4 = 1/2: (-1, 1/2)$

  We have 4 critical points: $(0, 0), (-3, 0), (0, 3/2), (-1, 1/2)$
  

== 9.2 Second Derivative Test

Let $f(x, y)$ be a $C^2$ function in some neighborhood of a critical point $(a, b)$, i.e. for $(x, y)$ near $(a, b)$, $ f(x, y) approx P_(2, (a, b))(x, y) $

Since $(a, b)$ is a critical point and $f in C^2$, then we must have $f_x (a, b) = 0 =f_y (a, b)$ 

$therefore f(a, b) approx f(a, b) +1/2 (f_(x x) (a, b)(x-a)^2 + 2 f_(x y)(x-a)(y-b)+f_(y y)(y-b)^2) \

==> f(x, y) - f(a, b) approx 1/2 (f_(x x) (a, b)(x-a)^2 + 2 f_(x y)(x-a)(y-b)+f_(y y)(y-b)^2)
$

Let $A = f_(x x) (a, b), B = f_(x y)(a, b),
C = f_(y y)(a, b), 
u = x-a, 
v =y-b$ 

$==> 1/2 [A u^2+2B u v+ C v^2]$ is the quadratic form

$==> 1/2[A(u + (B v)/A)^2 + (C- B^2/A)v^2]$

Discovery:

Case 1: $A > 0$ and $C -B^2/A >0==>  A C - B^2 >0$ which is the local minimum

Case 2: $A < 0$ and $C -B^2/A <0==>  A C - B^2 >0$ which is the local maximum

Case 3: $A$ and $C -B^2/A$ has opposite signs $ ==>  A C -B^2 < 0$ then it could be a saddle point 


#thm[*Second Derivative Test* \ 

Let $H f=mat(f_(x x), f_(x y); f_(y x), f_(y y))$ be the Hessian matrix of $f in C^2$ in some neighborhood of a critical point $(a, b)$ and that $ f_(x) (a, b) = f_(y) (a, b) = 0 $

1. $f_(x x) (a, b) >0$ and $"det"H f(a, b)>0$ or $H f(a, b)$ satisfy positive definite, then $(a, b)$ is local minimum

2. $f_(x x) (a, b) <0$ and $"det" H f(a, b)>0$ or $H f(a, b)$ satisfy negative definite, then $(a, b)$ is a local maximum

3. $"det"H f(a, b) < 0$, then $(a, b)$ is a saddle point

4. $"det"H f(a, b) = 0$, inconclusive, or the degenerate critical point]

Example:

$f(x, y) = 2(x-y)^2 - x^4 - y^4$ has critical points $(sqrt(2), -sqrt(2)), (-sqrt(2), sqrt(2)), (0, 0)$

$f_x = 4(x-y)-4x^3, f_y = 4(x-y)-4y^3$

$f_(x x) = 4-12x^2, f_(x y) = f_(y x) = -4, f_(y y) = 4-12y^2$

$"det"(H f(sqrt(2), -sqrt(2)) )= "det"(mat(-20, -4;-4, -20)) > 0, -20>0 ==>$ local maximum

$"det"(H f(-sqrt(2), sqrt(2))) = "det"(mat(-20, -4; -4, -20)) >0, -20>0 ==>$ local maximum

$"det"(H f(0, 0)) = "det"(mat(4, -4; -4, 4)) = 0 ==>$ inconclusive. 

We will investigate the sign $f(x, y)-f(0,0) = 2(x-y)^2 - x^4 - y^4 -0$

If $y=0$, $f(x, 0) -f(0, 0) = 2(x)^2 - x^4 = x^2(2-x^2)>0, space 0<x^2<2$

If $y=x$, $f(x, x) -f(0, 0) = - 2x^4 < 0, space forall x != 0$. Thus it is saddle point from the above discovery.


== 9.3 Proof of the Second Partial Derivative Test
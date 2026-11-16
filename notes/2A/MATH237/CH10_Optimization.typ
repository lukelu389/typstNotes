#import "../../../preamble.typ": *
#show: conf
#import "@preview/diverential:0.2.0": *
#import "@preview/physica:0.9.8": *
#let strut(h) = box(height: h, width: 0pt)
#let Title = "CH 10 — Optimization"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")




#thm[*Extreme Value Theorem 2D* \ 

  If $f(x, y)$ is a continuous on a closed and bounded subset of $S subset.eq RR^2$, then there exists $(a, b), (c, d)in S$ s.t. $ f(a, b)<=f(x, y)<=f(c, d) space forall (x, y) in S $
  
  where $f(a, b)$ is the absolute minimum and $f(c, d)$ is the absolute maximum
]

*Note*: A function $f(x, y)$ may have an absolute extrema on $S$ even if these conditions are not satisfied.

Example:

$f(x, y) = cases(1 "  if" y>=x, -1 "if" y<x)$ and $S = {(x, y) in RR^2: x>0, y>0}$

  $f$ is discontinous on $S$ and $S$ is not closed and not bounded, but we have absolute extrema

#tip[*Extrema on a Set*
  
If $f$ is continuous on $S$, then the absolute extrema of $f$ on $S$ must occur either on a critical point or on the boundary of $f$

If $f(x, y)$ is continuous on $S subset.eq RR^2$ and $S$ is closed and bounded, then 

1. Find all critical points of $f$ which are contained in $S$

2. Find the extrema of $f$ on the boundary of $S$
  - Parameterizing the boundary curve

3. Compare the value of $f$ at all points found in the steps 1 and 2. 
  - Largest is absolute maximum
  - Smallest is absolute minimum

*Note*: the absolute extrema of the function could occur more than one in the set $S$
]

Examples

1. Find the absolute minimum of $f(x, y) = x^2+x y+y^2$ on 

  $S= {(x, y)in RR^2 : -1<=x<=1, -1<=y<=1}$

  Critcal points: $f_x = 2x+y, f_y = x+2y$

  $f_x = f_y = 0 ==> (0, 0)$

  Smallest value on the boundary

  $x=-1, -1<=y<=1 ==> x(t)=-1, y(t) = t, -1<=t<=1$

  $g(t) = f(x(t), y(t)) = 1-t+t^2, -1<=t<=1 ==> t = 1/2 \

  ==> min(g(1/2), g(-1), g(1)) = min(3/4, 3, 1) = 3/4$

  Repeating for $x = 1, y=1, y=-1$, we get the minimum of $3/4$

  Compare $(0, 0)$ with $3/4$

  $f(0, 0) = 0 > 3/4$, therefore the absolute minimum is at $(0, 0)$

2. Find absolute maximum of $f(x, y) = x^3+y^2-3x y^2$ with critical points $(0, 0), (1/3, 1/3), (1/3, -1/3)$ on the triangle $(0, 0), (0, 1), (1, 1)$

  Already given critical points $(0, 0), (1/3, 1/3), (1/3, -1/3)$, but not on the triangle enclosed by the points

  Smallest value on the boundary 

  $y = 1, 0<=x<=1 ==> y(t) = 0, x(t) = t, 0<=t<=1 ==> g(t) = f(x(t), y(t)) = t^2 ==> 2t = t=0$

  $max(g(0), g(1)) = max(0, 1) = 1$


  $x = 0, 0<=y<=1 ==> x(t)=0, y(t)=t, 0<=t<=1==>g(t) =f(x(t), y(t)) = t^3+1-3t==>t=plus.minus 1$

  $max(g(0), g(1), g(-1)) = max(0, 1, 1) = 1$

  $y = x, 0<=x<=1, x(t)=y(t)==>g(t) = f(x(t), y(t)) =t^3+t^2 -3t^2 ==> -6t^2+2t = 0==>t=0, 1/3$

  $max(g(0), g(1/3), g(1)) = max(0, -1, 1/27) = 1/27 ==>max(1, 1, 1/27) = 1$

#tip[*Method of Lagrange Multipliers* \ 

Consider solving for extrema $f(x, y)$, subject to $g(x, y) = k$

Let $vec(x)(t) =(x(t), y(t))$ is a parametrization for the curve $g(x, y) = k$

Then let $u(t) = f(x(t), y(t))$ 

$-> u'(t)= f_x (x(t), y(t))x'(t)+f_y (x(t), y(t))y'(t) = grad f(x(t), y(t)) dot vec(x)(t)$

Set $u'(t)=0-> grad f(x(t), y(t)) dot vec(x)(t)= 0$

Assuming $grad g !=(0, 0)$, then at a critical point $grad f, grad g$ are both orghogonal to $vec(x)(t)$, therefore they must be parallel,

$ grad f = lambda grad g; space lambda in RR $

To find critical points of $u(t)$, we can solve the system of equations $ cases(grad f = lambda grad g, g(x, y)=k) $
]

*Lagrange Multipliers Algorithmn*

If $f(x, y)$ is differentiable and $g(x, y) in C^1$, then to find the maximum/minimum of $f(x, y)$ subject to $g(x, y)= k$, evaluate $f(x, y)$ at all points $(a, b)$ which satisfy one of the following:

1. $grad f(a, b) = lambda grad g(a, b) "and" g(a, b)=k$

2. $grad g(a, b) = (0, 0) "and" g(a, b)=k$

3. $(a, b)$ is an endpoint of $g(x, y) = k$

The maximum/minimum is the largest/smallest of all values from 1-3.

*Note*

- $lambda = "Lagrange multiplier"$
- A closed curve: circle, ellipse, etc has no end-points where we skip step3

- $g(x, y)$ is an unbounded curve, consider $lim_(||(x, y)||->oo) f(x, y)$ for $(x, y)$ satisfying $g(x, y)= k$

Examples:

1. $f(x, y) = x y^2$ subject to $x = -sqrt(1-y^2)$

  Step 1

  $x^2= 1-y^2 ==> g(x, y) = x^2+y^2=1, x in [-1, 0]$

  $grad f = (y^2, 2x y), grad g = (2x, 2y) ==> cases(y^2 = lambda 2x, 2 x y = lambda 2 y, x^2+y^2 = 1) "where" -1<=x<=0 ==>cases(y^2=lambda 2 x, y(x-lambda) = 0, x^2+y^2 = 1) $

  Case1: $y=0 ==>x^2+0^2 = 1 ==> x = -1 ==>(-1, 0)$

  Case2: $x = lambda ==> y^2 = 2 x^2 =1 ==>3 x^2 = 1==> x = -1/sqrt(3) ==>(-1/sqrt(3), plus.minus sqrt(2/3))$

  Step 2

  $(2x, 2y) = (0, 0) ==> (x, y) = (0, 0) in.not g(x, y)$, invalid

  Step 3

  $(0, 1), (0, -1)$ are the endpoints from constraint

  $f(-1, 0) =0, f(0, 1)=0, f(0, -1)=0, f(-1/sqrt(3), sqrt(2/3)) = -2/3 sqrt(3), f(-1/sqrt(3), -sqrt(2/3)) = -2/3 sqrt(3)$

  Absolute maximum at $(-1, 0), (0, plus.minus 1)$, minimum at $(-1/sqrt(3), plus.minus sqrt(2/3))$

2. Find the point on the sphere $x^2+y^2+z^2=1$ which is closest to the point $(1, 2, 2)$

  We want to minimize  the distance from $x^2+y^2+z^2=1$ to $(1, 2, 2)$

  $f(x, y, z) = sqrt((x-1)^2+(y-2)^2+(z-2)^2)$ subject to $x^2+y^2+z^2=1$

  We can minimize $(x-1)^2+(y-2)^2+(z-2)^2$ to minimize $f(x, y, z)$

  $grad f = lambda grad g = (2x-2, 2y-4, 2z-4) = lambda (2x, 2y, 2z)$

  $cases(x-1 = lambda x, y-2 = lambda y, z-2=lambda z, x^2+y^2+z^2 =1)$and since $x, y, z!=0$, we get $lambda = (x-1)/x = (y-2)/y = (z-2)/z$

  $==> x y - y = x y - 2 x ==> y = 2x = z ==> x^2+(2x)^2+(2x)^2 = 1 = 9x^2 ==>x = plus.minus 1/3$

  Critical points $(1/3, 2/3, 2/3), (-1/3, -2/3, -2/3)$

  $grad g = (0, 0, 0) ==> (0, 0, 0) in.not x^2+y^2+z^2=1$

  The unit sphere is a closed surface, does not have any boundary curves/points

  $f(1/3, 2/3, 2/3) = sqrt(4/9+16/9+16/9) =2, f(-1/3, -2/3, -2/3) = sqrt(16/9+64/9+64/9) = 4$

  The minimum distance is $2$ at $(1/3, 2/3, 2/3)$

*Note* $g(x, y, z)= k$ represents a surface in $RR^3$. In step 3, we might have a boundary curve. 

In the final, it is unlikely this would occur due to time constraint but it will occur in $RR^2$ constraints.

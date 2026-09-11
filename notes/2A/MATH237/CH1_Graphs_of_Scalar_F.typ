#import "../../../preamble.typ": *
#show: conf
#import "@preview/diverential:0.2.0": *
#let strut(h) = box(height: h, width: 0pt)
#let Title = "CH 1 — Graphs of Scalar Functions"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== 1.0 Parametric Curves 
\

We have seen functions that are either explicit or implicit
1. $y=f(x)$
2. $x=y^2$
3. $x^2+y^2 = 1$

We can also describe a curve using parametric equations where \
$ x = x(t), y = y(t), t in [a, b], forall a, b in ZZ $
with $(x(t), y(t))$ is a point of the curve and $t$ is the parameter.

- The curve is called *parametric curve*.

- We get a direction in which the curve is traced as well.

Practices:

1. Find the parametric curve: $x = t-1, y = 2t+1, t in [0, 3]$

  $x+1 = t ==> y = 2(x+1)+1 = 2x+3, x in [-1, 2]$

2. Find the parametric curve: $x = cos(t), y = sin(t), t in [0, 2pi]$

 $x^2(t) + y^2(t) = cos^2 t+ sin^2 t = 1, t in [0, 2pi]$ 

3. Find the parametric curve: $x = cos(2t), y = sin(2t), t in [0, 2pi]$

  $x^2 + y^2 = cos^2 (2t) + sin^2 (2t) = 1, t in [0, 2pi]$ 
  
  Same curve as Q2 but has two different parametrizations. Twice as the speed as the Q2.


\
== 1.1 Vector -Valued Functions

#defn[*Vector-Valued Funciton*\

It is a funciton whose domain is a subset of the $RR$ and whose output is a vector

]

*Note*: a vector-valued funciton is a convenient way to collect scalar functions

Examples:

1. In $RR^2, vec(x)(t) = mat(x(t); y(t))$
\

2. In $RR^3, vec(x)(t) = mat(x(t); y(t); z(t))$
\
\
\
\
\


3. Let $vec(x) (t) = (cos t, sin 2t)$ repsent the position of a particle at time $t$. Sketch $vec(x)(t), 0<= t<=2pi$

  We have $x= cos t, y = sin 2t, 0 <=t <= 2pi$

  #align(center)[ #image("../../../pictures/yr2/cal3ch1_1.png", width: 8cm)]


#defn[*Velocity* \
  
  Velocity = $vec(v)(t) = dv(x(t), t)$]

Examples:

1. $vec(x)(t) = (cos t, sin 2t)$

  velocity $= dv(vec(x)(t), t) = (- sin t, 2 cos 2t)$

  At $t = 0, vec(v)(0) = (0, 2)$
  At $t = pi/2, vec(v)(pi/2) = (-1, 0)$

2. Let $vec(x)_1(t) = (cos t, sin t)$ and $vec(x)_2(t) = (cos 3t, sin 3t)$ be the paths of two particles, find the velocity of each particle when $t = 0$

  $dv(vec(x_1)(t), t) = (-sin t, cos t)$, 1 revolution of unit circle radius 1 unit

  $dv(vec(x_2)(t), t) = (-3 sin 3t, 3 cos 3 t)$, 3 revolutions of unit circle radius 1 unit

  $vec(x_1)'(0) = (0, 1), vec(x_2)'(0) = (0, 3)$

#defn[*Tangent vector*\

Given the curve defined by $ vec(x)(t) = (x(t), y(t)) $ its *tangent vector* at $t = t_0$ is $ vec(t) = eval(dv(vec(x), t), t=t_0) = (x'(t_0), y'(t_0)) $ whenever $dv(vec(x), t), t=t_0) != vec(0)$ exists.
]

*Note*: $vec(t)$ lies on the tangent line and points in the direction of travel

Example: 

Consider the curve $vec(x)(t) = (t^3, t^2)$ and its tangent vector.

Notice that if $x = t^3 --> t = x^(1/3) --> y = x^(2/3)$

$dv(vec(x)(t),t) = (3t^2, 2t)$

$t = 1, vec(x)(1) = (1, 1), vec(v)(1) = (3, 2)$

$t = 0, vec(x)(1) = (0, 0), vec(v)(1) = (0, 0) = vec(0)$ We cannot define the tangent vector as the function at the point is not differentiable

#align(center)[ #image("../../../pictures/yr2/cal3ch1_2.png", width: 8cm)]
  

\
== 1.2 Scalar Functions

Recall:
 
$f:A->B$ is a function
1. Each element $a in A$ is a unique element $f(a) in B$ called the *image* of $a$ under $f$

2. The set $A$ is called the *domain* of $f$ and is denoted by $D(f)$

3. The set $B$ is called the *codomain* of $f$.

4. The subset of $B$ consisting of all $f(a)$ is called the *range* of $f$, denoted by $R(f)$


#defn[*Scalar Function*\
  A *scalar function* $f(x_1, ..., x_n)$ of $n-$variables is a function whose domain is a subset of $RR^n$ and whose range is a subset of $RR$


]

== 1.3 Geometric Interpretation of $z = f(x, y)$

#defn[*Levels*\

  1. The *level curves* of a function $f(x, y)$ are the curves $ f(x, y) = k $ where $k$ is a constant in the range of $f$

  2. A *level surface* of a scalar function $f(x,y,z)$ is defined by $ f(x, y, z) = k, quad k in R(f) $

  3. A *level set* a scalar function $f(x), x in RR^n$ is defined by $ f(x) = k, quad k in R(f) $
]

#defn[*Cross Sections*\
  A *cross section* pf a surface $z= f(x, y)$ is the intersection of $z=f(x, y)$ with a plane
]


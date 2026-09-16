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
== 1.1 Vector-Valued Functions

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


3. Let $vec(x) (t) = (cos t, sin 2t)$ represent the position of a particle at time $t$. Sketch $vec(x)(t), 0<= t<=2pi$

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

Given the curve defined by $ vec(x)(t) = (x(t), y(t)) $ its *tangent vector* at $t = t_0$ is $ vec(t) = eval(dv(vec(x), t), t=t_0) = (x'(t_0), y'(t_0)) $ whenever $dv(vec(x), t), t=t_0 != vec(0)$ exists.
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

5. Single variable scalar functions are $f:RR -> RR$


#defn[*Scalar Function*\
  A *scalar function* $f(x_1, ..., x_n)$ of $n$-variables is a function whose domain is a subset of $RR^n$ and whose range is a subset of $RR$
]

Examples:

1. $f(x, y) = x^2+ y^2 -> f(1, 1) = 1^2+1^2 = 2$

2. $f(x, y) = sin(x+y) -> f(0, pi/2) = sin(pi/2) = 1$

3. $f(x, y, z) = e^(x+y+z) -> f(1, 2, 1) = e^(1+2+1) = e^4$

*Notation*: We can write $vec(x) = (x_1, x_2, ..., x_n)$ so that $f(vec(x)) = f(x_1, x_2, ..., x_n)$

Our independent variables don't have to be $x, y, z$, etc... Multivariable functions can be used to model many different physical situations

Example: write down a multivariable funciton which calculates the volume of a cylinder.

$V = pi r^2 h --> V(r, h) = pi r^2 h$

#defn[*Domain and Range*\

*Domain* is the largest subset of $RR^n$ for which the funciton is defined

*Range* is a set of all possible values which are subset of $RR$
]

Examples: 

1. Find the domain and range of $f(x, y) = sqrt(x y)$

  We need $x y >= 0 ==> cases(x >= 0 "and" y>=0, x <= 0 "and" y <=0)$

  $"dom"(f)= {(x, y) in RR^2 : x>=0, y>=0} union  {(x, y) in RR^2 : x<=0, y<=0}$

  #align(center)[ #image("../../../pictures/yr2/cal3ch1_3.png", width: 6cm)]

  We know that $sqrt(x y) >=0, space forall x, y in "dom"(f)$ \

  Let $c in RR, c >=0$, be an arbitrary non-negative real number.

  Notice that $f(c^2, 1) = sqrt(c^2) = abs(c) = c$ since $c>=0$ 

  For any $c in RR, c>=0, exists$ inputs in the domain of $f$ s.t. $c$ is a valid output $-> c in "ran"(f): RR_(>=0)$ 

2. Find the domain and range of $g(x, y) = frac(x^2 - y^2, |x| + |y|)$

  We need $|x|+|y| != 0$ which is true $forall x, y in RR "both note zero" $ since $|x| > 0, |y|> 0$

  $"dom"(g) = {(x, y): x, y in RR \\ {(0, 0)}}$

  Consider case $x > y$: $x^2 - y^2 > 0, |x|+|y| >0 ==> g(x,y)>0$

  Consider case $x = y$: $x^2 - y^2 = 0, |x|+|y| = 2x ==> g(x,y)=0$

  Consider case $x < y$: $x^2 - y^2 < 0, |x|+|y| >0 ==> g(x,y)<0$

  or alternatively

  Let $c in RR, c>0, g(c, 0) = frac(c^2 - 0, |c| + 0) = |c| = c, c > 0$

  Let $d in RR, d<0, g(0, d) =frac(0-d^2, 0 + |d|) = |d| = d, d < 0$

  Let $a, b in RR, a = b, g(a, b) = frac(a^2 - b^2, |a|+|b|) = frac(a^2 - a^2, |a|+|a|) = 0/(2 a) = 0 $

  Thus $"ran"(g) = RR$


== 1.3 Geometric Interpretation of $z = f(x, y)$

Question: How we can graph $z = f(x, y)$

ANS: We graph $(a, b, f(a,b))$. We think of $f(a, b)$ as height above the $x y$-plane

#defn[*Level Curves*\

The *level curves* of a function $f(x, y)$ are the curves $ f(x, y) = k $ where $k$ is a constant in the range of $f$

    - *Alternate definition*: curves along which the height of the graph $z=f(x,y)$ is constant

    - A collection of *level curves* are called a *contour map*

    - There are *exceptional level curves* because it looks different from the other level curves.

]
\
#defn[*Cross Sections*\
  A *cross section* of a surface $z= f(x, y)$ is the intersection of $z=f(x, y)$ with a plane
]

Examples:

1. Sketch $x+2y+z=3$

  We can rewrite this as $z = 3-x-2y = f(x, y)$

  #align(center)[ #image("../../../pictures/yr2/cal3ch1_4.png", width: 6cm)]

  Sketch and write down an equation which is the level curves for the above and sketch these level curves for a different $k$

  Level curve: $ 3-x-2y =k, k in RR ==> y = -1/2 x+1/2(3-k)$

2. Sketch $f(x, y)= x^2+y^2$

  Level curves: $x^2+y^2 = k, k >= 0$ (red circle below)

  #align(center)[ #image("../../../pictures/yr2/cal3ch1_5.png", width: 6cm)] 

  This is a parabloid(grey "cone-like" shape)

3. $z = x^2+y^2$

  $x = c ==> z = c^2+y^2$

  #align(center)[ #image("../../../pictures/yr2/cal3ch1_6.png", width: 6cm)] 

  $y = d ==> z = x^2+d^2$ (Similar like above)


4. $z = x^2-y^2$

  $"dom"(f) = RR, "ran"(f) = RR$

  Level curves: $x^2 - y^2 = k, k in RR$ (hyperbolas)

    #align(center)[ #image("../../../pictures/yr2/cal3ch1_7.png", width: 6cm)] 
  Red lines $k>0$ \
  Green lines $k<0$ \
  Blue lines $k=0$
  




#defn[*Levels*

1. A *level surface* of a scalar function $f(x,y,z)$ is defined by $ f(x, y, z) = k, quad k in R(f) $

2. A *level set* a scalar function $f(x), x in RR^n$ is defined by $ f(x) = k, quad k in R(f) $
]



#import "../../../preamble.typ": *
#show: conf

#let Title = "CH 1 — Graphs of Scalar Functions"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== 1.0 Parametric Curves 


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
== 1.1 Scalar Functions

Recall:
 
$f:A->B$ is a function
1. Each element $a in A$ is a unique element $f(a) in B$ called the *image* of $a$ under $f$

2. The set $A$ is called the *domain* of $f$ and is denoted by $D(f)$

3. The set $B$ is called the *codomain* of $f$.

4. The subset of $B$ consisting of all $f(a)$ is called the *range* of $f$, denoted by $R(f)$


#defn[*Scalar Function*\
  A *scalar function* $f(x_1, ..., x_n)$ of $n-$variables is a function whose domain is a subset of $RR^n$ and whose range is a subset of $RR$


]

== 1.2 Geometric Interpretation of $z = f(x, y)$

#defn[*Levels*\

  1. The *level curves* of a function $f(x, y)$ are the curves $ f(x, y) = k $ where $k$ is a constant in the range of $f$

  2. A *level surface* of a scalar function $f(x,y,z)$ is defined by $ f(x, y, z) = k, quad k in R(f) $

  3. A *level set* a scalar function $f(x), x in RR^n$ is defined by $ f(x) = k, quad k in R(f) $
]

#defn[*Cross Sections*\
  A *cross section* pf a surface $z= f(x, y)$ is the intersection of $z=f(x, y)$ with a plane
]


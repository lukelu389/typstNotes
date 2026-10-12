#import "../../../preamble.typ": *
#show: conf
#import "@preview/diverential:0.2.0": *
#import "@preview/physica:0.9.8": *
#let strut(h) = box(height: h, width: 0pt)
#let Title = "CH 4 — Linear Approximation"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== 4.1 Partial Differentiation

The "slope" of the surface depends on the direction of travel

#defn[*Partial Differentiation* \ 

The *partial derivatives* of $f(x, y)$ are defined as 

$ pdv(f, x) = lim_(h->0) frac(f(x+h, y) - f(x, y), h) $

$ pdv(f, y) = lim_(h->0) frac(f(x, y+h) - f(x, y), h) $
]

Examples:

1. $f(x, y) = x^3 sin(x y)$

  $pdv(f, x) = 3x^2 sin x y + x^3 y cos(x y)$

  $pdv(f, y) = x^4 cos(x y)$

*Note*: if the derivative rules do not apply, then use definition above.

2. $f(x, y) = (x^3+y^3)^(1/3)$, what is $pdv(f(0, 0), x)$

  $pdv(f, x) = x^2(x^3+y^3)^(-2/3); x^2+y^2 !=0 $

  $lim_(h->0) frac(f(x+h, y)-f(x, y), h) = lim_(h->0) frac(f(0+h)-f(0, 0), h) = lim_(h->0) frac((h^3)^(1/3) - 0, h) = 1$

3. Show that the above function where $pdv(f, x)$ is not continuous at $(0, 0)$

  $lim_((x, y)->(0, 0)) pdv(f, x) = lim_((x, y)->(0, 0)) frac(x^2, (x^3+y^3)^(2/3)) $

  Consider path $y= m x$

  $lim_(x->0) frac(x, (x^3+(m x)^3)^(2/3)) = lim_(x->0) 1/(1+m^3)^(2/3) !=1  $

  The limit does not exist, so $pdv(f, x)$ is not continuous at $(0, 0)$

4. $f(x, y) = cases(frac(2x y, x^2+y^2) quad &(x, y)!= (0, 0), 0 quad &(x, y)=(0, 0))$

  $pdv(f(0, 0), x) = lim_(h->0) frac(f(h, 0)-f(0, 0), h) = lim_(h->0) frac(frac(2 h dot 0, h^2+0^2) - 0, 0) = lim_(h->0) 0/h = 0$

  $pdv(f(0, 0), y) = lim_(h->0) frac(f(0, h)-f(0, 0), h)=lim_(h->0) frac((2h/(h^2+0^2)) - 0, h) =  lim_(h->0) 0/h = 0$

  Notice that this function is not continuous at $(0, 0)$ but both partial derivatives exists at $(0, 0)$

\
== 4.2 Higher-Order Partial Differentiation
\

Example:

Determine first and second derivative of $f(x, y) = x^2 y$

  $ pdv(f, x) = 2x y, pdv(f, y) = x^2 \

   pdv(f, x, x) = 2y, pdv(f, y, x) = 2x \
   
   pdv(f, x, y) = 2x, pdv(f, y, y) = 0 $ 

\
Short-hand notations \
\

#align(center)[
#table(
    columns: 3, 
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    [Leibniz Notation], [Short-Hand Notation], [Operator Notation],
    [$pdv(f, x)$], [$f_x$], [$D_1 f$],
    [$pdv(f, x, x)$], [$f_(x x)$], [$D_1^2 f_x$],
    [$pdv(f, x, y)$], [$f_(x y)$], [$D_2 D_1 f_x$],
    [$pdv(f, y, x)$], [$f_(y x)$], [$D_1 D_2 f_x$],
    [$pdv(f, y, y)$], [$f_(y y)$], [$D_2^2 f_x$]
  )
]

\
#thm[*Clairaut's Theorem* \ 

If $f_(x y)$ and $f_(y x)$ are defined in some neighbourhood of $(a, b)$ and are continuous at $(a, b)$

$ f_(x y) (a, b) = f_(y x) (a, b) $

This means the most functions the "mixed" partial derivatives will be equal. A generalized of Clairaut's Theorem applies to higher-order partial derivatives.

]

\

Example

$f(x, y, z) = x^2 e^(y+z) sin z$
  
$pdv(f, x) = 2x e^(y+z) sin z $
  
$ pdv(f, y) = x^2 e^(y+z) sin z$
  
$pdv(f, z) = x^2 (e^(y+z) sin z + e^(y+z) cos z) = x^2 e^(y+z) (sin z+ cos z)$

 \

== 4.3 Tangent Plane
  
  \
#defn[*Tangent Plane* \ 

The *tangent plane* to $z = f(x, y)$ at point $P = (a, b, f(a, b))$ is $ z = f(a, b) + pdv(f, x)(a, b)(x-a) + pdv(f, y)(a, b)(y-b) $

That is, a *tangent plane* is the plane which contains the tangent lines to all curves on $z= f(x, y)$ passing through point $(a, b, f(a, b))$

In particular, if

$C_1 = "cross-section corresponding to" y-b, z= f(a, b) +pdv(f, x)(a, b)(x-a)$

$L_1 = "tangent line to" C_1 "to" P $


$C_2 = "cross-section corresponding to" x-a, z = f(a, b)+ pdv(f, y)(a, b)(y-b)$

$L_2 = "tangent line to" C_2 "to" P  $

]

Example:

Let $z = ln(2x+y)$, find tangent plane at $(-1, 3)$

  $f(x, y) = ln(2x+y), (a, b) = (-1, 3)$

  $f(-1, 3) + pdv(f, x)(-1, 3)(x+1) + pdv(f, y)(-1, 3)(y-3) = 0 + 2(x+1)/(2(-1)+3) + (y-3)/(2(-1)+3) = 2(x+1)+y-3  \ 
  
  = 2x+y-1
  $

== 4.4 Linear Approximation

#defn[*Linearization and Linear Approximation* \ 

The *linearization* of $f$ at $(a, b)$ is the funciton $ L_((a, b)) (x, y) = f_x (a, b)(x-a) + f_y (a, b)(y-b) + f(a, b) $

The *linearization* is a function.

The tangent plane is when we have $z = L_((a, b)) (x, y)$ as a surface


*Linear Approximation* is when $(x, y)$ is close to $(a, b)$ we can say $ f(x, y) approx L_((a, b))(x, y) $
]

Example:

Esimate $sqrt((0.95)^3 + (1.98)^3)$

Let $f(x, y) = sqrt(x^3+y^3) ==> f(0.95, 1.98) = sqrt((0.95)^3 + (1.98)^3) $

$approx L_((1, 2)) (0.95, 1.98) = frac(3(1)^2, 2((1)^3+(2)^3)^(1/2)) (x-1) + frac(3(2)^2, 2((1)^3+(2)^3)^(1/2)) (y-2) + sqrt(1^3+2^3)  \

= 1/2(x-1) + 2(y-2) + 3 = 1/2 (-0.05) + 2(-0.02) + 3 = 2.935 approx sqrt((0.95)^3 + (1.98)^3) $

#defn[*Increment for of Linear Approximation* \ 

Often we are itnerested in estiamting the *change* in some quantity. We can rewrite the lienar approximation in *increment form*:

$ Delta f approx f_x (a, b)Delta x+ f_y (a, b)Delta y $

for $Delta f =f(x, y)-f(a, b), Delta x = x-a, Delta y = y-b$
]

Example:

Determine the volume of a cone $V(r, h) = frac(pi r^2 h, 3)$

$Delta V approx V_r (r, h) Delta r +V_h (r, h) Delta h = frac(2 pi r h, 3) Delta r + frac(pi r^2 , 3) Delta h$

Consider $r_i = 2, h_i = 10$, $r$ increases by 0.1, $h$ increases by 0.2

$Delta V approx (4pi)/3 (1) + (4pi)/3 (0.2) = (8pi)/5 "cm"^3$

\

== 4.5 Linear Approximation with Higher Dimensions

\

Let $vec(x) = (x, y, z), vec(a) = (a, b, c)$. We define the linearization of $f(vec(x))$ at $vec(a)$ as

$ L_(vec(a)) (vec(x)) &= f_x (vec(a)) (x-a) + f_y (vec(a)) (y-b) + f_z (vec(a)) (z-c) + f(vec(a))  \

 &= (f_x (vec(a)), f_y (vec(a)), f_z (vec(a)) ) dot (x-a, y-b, z-c) \ 

 &= grad f(vec(a)) dot (vec(x) - vec(a)) + f(vec(a))
$


#defn[*Gradient Vector* \ 

If the partial derivatives of $f(x, y, z)$ are defined at $vec(a) in RR^3$,

then the *gradeient vector* of $f "at" vec(a)$ is 

$ grad f(vec(a)) = (f_x (vec(a)), f_y (vec(a)), f_z (vec(a))) $

]

Example:

Let $f(x, y, z) = x^2 + z^3sin y$. Find the gradient vector of $f$ and the linearization of $f$ at $vec(a) = (2, pi, 1)$

$L_(vec(a)) (vec(x)) approx grad f(vec(a)) dot (vec(x)-vec(a)) + f(vec(a)) &= (4, -1, 0) dot (x-2, y-pi, z-1)  + 4  \ 

&= 4(x-2) -1(y-pi) +4 = 4x -y -4+pi
$

#defn[*Generalizaiton to $RR^n$* \

Let $vec(x) = (x_1, x_2, ..., x_n) in RR^n$ and $vec(a) in RR^n$

$vec(x)-vec(a) = (x_1-a_1, x_2 - a_2, ..., x_n-a_n)$ and define $grad f(vec(a)) = (D_1 f(vec(a)_1), D_2 f(vec(a)_2), ..., D_n f(vec(a)_n))$

Then $ f(vec(x)) approx f(vec(a)) = grad f(vec(a)) (vec(x)-vec(a)) $
]
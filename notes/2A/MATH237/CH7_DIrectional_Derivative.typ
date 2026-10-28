#import "../../../preamble.typ": *
#show: conf
#import "@preview/diverential:0.2.0": *
#import "@preview/physica:0.9.8": *
#let strut(h) = box(height: h, width: 0pt)
#let Title = "CH 7 — Directional Derivatives and Gradiant Vectors"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== 7.1 Directional Derivatives
How do we calcualte the rate of change of $f$ in the directioin of some unit vector say $hat(u)$?

If we start at $(a, b)$ and move in the direction of $hat(u)$, we walk along the line defined by $ (x, y) = (a, b)+ s hat(u) quad  s in RR $



#defn[*Directional Derivative* \

A *directional derivative* of $f(x, y)$ at a point $(a, b)$ in the direction of the unit vector $hat(u) = (u_1, u_2)$ is defined by 

$ D_hat(u) f(a, b) = eval(dvs(f(a+s u_1, b + s u_2), s), s = 0) $

provided that the derivative exists.
]



#thm[*Directional Derivative and Unit Vector* \ 

$ D_hat(i) f = f_x \ D_hat(j)f = f_y $ for $hat(u) = hat(i) = mat(1;0) "and" hat(u) = hat(j) = mat(0; 1)$
]

#thm[*Gradiant and Directional Derivatives* \

Let $g'(s) = f(a+s u_1, b+s u_2)$, then $ g'(s) = pdv(z, x)dv(x, s) + pdv(z, y) dv(y, s) = f_x (a+s u_1, b+ s u_2) u_1+ f_y (a+s u_1, b+ s u_2) u_2 $

Therefore $ g'(0) = D_hat(u) f(a, b) = f_x (a, b)u_1 + f_y (a, b) u_2 = grad f(a, b) dot hat(u) $ if $f$ is differentiable and $hat(u)$ must be a unit vector.
]

Example:

1. Find the directional derivative of $f(x, y) =x^2-y^2$ at $(1, 2)$ in the direction of $hat(u) = 1/sqrt(2) (1, 1)$

  $D_hat(u) f(1, 2) &= eval(dvs(f(1+s/sqrt(2), 2 + s/sqrt(2)), s), s = 0) = eval(dvs([(1+s/sqrt(2))^2 - (2+s/sqrt(2))^2], s), s = 0)   \

  &= eval(dvs([1+sqrt(s) + s^2/2 - 4 - 2sqrt(2) s -s^2/2], s), s = 0) = eval(dvs([-3 -sqrt(2)s], s), s = 0) = eval(-sqrt(2), s = 0) = -sqrt(2)$

\
2. Find the directional derivaive of $f(x, y) = x^3 + 3y^2$ at the point $(-1, 2)$ in the direction of $vec(u) = mat(3;4)$

  $f_x = 3x^2, f_y = 6y$, continuous, thus $f$ is differentiable

  $hat(u) = 1/sqrt(3^2+4^2) = mat(3/5; 4/5)$

  $D_hat(u) f(-1, 2) = grad f(-1, 2) dot hat(u) = (3, 12) dot (3/5, 4/5) = 57/5$
  
\
== 7.2 Greatest Rate of Change
\
QUESTION: What direction maximize $D_hat(u) f(a, b) = grad f(a, b) dot hat(u)$?

Recall: $vec(u) dot vec(v) = ||vec(u)||||vec(v)|| cos theta$ where $theta$ is the angle between $vec(u) "and" vec(v)$

Then $D_(hat(u)) f(a, b) = || grad f(a, b)|| ||vec(u)|| cos theta = ||grad f(a, b)|| cos theta$

To maximize, we want $theta = 0, hat(u) "points in the same direction" grad f(a, b)$, which is the direction of the steepest ascent

#thm[*Steepest Rate of Ascent*

If $f(x, y)$ is differentiable at $(a, b)$ and $grad f(a, b) != (0, 0)$, then the largest value of $ D_hat(u) f(a, b)  = ||grad f(a, b)|| $ and it occurs when $hat(u) "points in the same direction as" grad f(a, b)$
]

\
Question: Which direction minimizes $D_hat(u) f(a, b)$?

ANS: $- grad f(a, b)$ is the direction of steepest descent.

\
Question: Which direction should we travel if we want to stay at the same height?

ANS: $D_hat(u) f(a, b) = ||grad f(a, b)|| cos theta = 0 ==> theta  = pi/2$, that is orthogonal to the gradiant vector.

\
#thm[*Gradiant Vector and Level Curve* \ 
If $f(x, y) in C^1$(guarantees a unique level curve through $(a, b)$) in some neigbourhood of $(a, b)$ and $grad f(a, b) != (0, 0)$, then $grad f(a, b)$ is orthogonal to the level curve which passes through $(a, b)$
]
#align(center)[#image("../../../pictures/yr2/cal3ch7_1.png", width:6cm)]

== 7.3 Gradiant Vector in 3D

If $f$ is differentiable, then we can define the directional derivative of $f(x, y, z)$ as $ D_hat(u) f(a, b, c) = grad f(a, b, c) dot hat(u) $

When $hat(u)$ points in the same direction as $grad f(a, b, c)$, it is the steepest ascent

$D_hat(u) (a, b, c) = 0$ when $hat(u)$ is orthogonal to the gradiant vector. The gradiant vector is orthogonal to the *level surface* $f(x, y, z)$ passing through $(a, b, c)$

#defn[*Level surfaces* \

The *level surfaces* of $f(x, y, z)$ are defined by $ f(x, y, z) = k,quad  k in "ran"f $

]

Note: we can defne surfaces in two ways: $z = f(x, y)$(explicitly) and $f(x, y, z) = k$(implicitly).

Notice that if $z = f(x, y)$ can be written in form $g(x, y, z) = z-f(x, y) = 0 ==> g(x, y, z) = 0$

Examples:

1. Describe the level surfaces of $f(x, y, z) = x+2y+3z $

  Level surface: $x+2y+3z = k, quad k in RR$

  A family of parallel planes with normal vector $mat(1;2;3)$

2. Describe the level surfaces of $f(x, y, z) = x^2+y^2+z^2$

  Level surfaces: $x^2+y^2+z^2 = k, quad k in RR_(>=0)$

  A family of a concentric spherical shells of radius $sqrt(k)$

\

#thm[*Gradiant Vectors and Level surfaces*\

  If $f (x, y, z) ∈ C^1$ in a neighborhood of $(a, b, c) $and $∇ f (a, b, c)dot (0, 0, 0)$, then
$∇ f (a, b, c)$ is orthogonal to the level surface f$ (x, y, z)= k$ through $(a, b, c)$.
]

\
Consider a surface defined by $f(x, y, z) = k, quad k in RR$

So $grad f(a, b, c)$ is orthogonal to the tangent plane of $f(x, y, z) = k$ at $(a, b, c)$ to find the equation to the tangent plane.

The vector $vec(x)-vec(a) = (x, y, z) - (a, b, c)$ lies on the tangent plane $ grad f(a, b, c) dot (vec(x)-vec(a))  =0 $ 

#info[*Equation to the Tangent plane*
$ f_x (vec(a))(x-a)+f_y (vec(a))(y-b)+f_z (vec(a))(z-c) $]

Examples: 

1. Find the equation of the tangent plane to $z =e^x y^2+1$ at $(0, 2, 5)$

  $g(x, y, z) = z-e^x y^2 = 1$

  $ grad g(0, 2, 5) =(-e^(0) (2)^2, -2(2) e^(0), 1) = (-4, -4, 1)$

  $grad g(0, 2, 5) dot (0, 2, 5) = (-4, -4, 1) dot (x-0, y-2, z-5) =  -4 x -4(y-2)+z-5 = 0$

  $therefore z = 5+4x+4(y-2) $

2. Using linearization to solve for the same equation $f(x, y) = e^x y^2+1$

 $f_x = e^x y^2, f_y = 2y e^x$

 $z = f(0, 2) + f_x (0, 2)(x-0) + f_y (0, 2)(y-2) = 5
 +4x+4(y-2)$

 We obtain the same result as using the gradiant vector

3. Consider two surfaces, $z = 0$ and $x^2+y^2+z^2=1$. Find a tangent vector to the curve of intersection at $(0, 1, 0)$

  $==>x^2+y^2+0^2 = 1 ==>x^2+y^2 = 1$

  Let $f(x, y, z) = x^2+y^2+z^2$ and $g(x, y, z) = z$

  Since $c$ lies on both surfaces, $vec(t)$ is orthogonal to both $grad f$ and $grad g$
  
  $vec(t) = grad f times grad g = mat(0; 2;0) times mat(0; 0; 1) = mat(2; 0; 0) $

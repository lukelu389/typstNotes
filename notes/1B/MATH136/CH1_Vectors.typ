#import "../../../preamble.typ": *
#show: conf

#let Title = "CH 1 — Vectors in Euclidean Space"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== Vector Addition and Scalar Multiplication
\
#info[*Vector* \

The set $RR^n$ is defined as ${accent(x, arrow) = mat(x_1; ...; x_n) |  x_1, ..., x_n in RR}$

\
A *vector* is an element $accent(x, arrow) = mat(x_1; ...; x_n)$ of $RR^n$

\
The row notation of $vec(v) = mat(v_1; v_2; ...; v_n)$ is $vec(v)=[v_1 space v_2 space v_3]^T$
]
\
#info[*Equality* \

We say that vectors $vec(w) = mat(u_1; u_2; ...; u_n) in RR^m$ and $vec(v)=mat(v_1; v_2; ...; v_n)$ in $RR^n$ are *equal* 

if $n = m "and" u_i = v_i forall space i = 1, 2, ..., n.$ 

We denote it: $vec(w) = vec(v)$ 
]

#info[*Addition and Properties*\
\

Let $vec(w) = mat(u_1; u_2; ...; u_n), vec(v) = mat(v_1; v_2; ...; v_n), vec(w) = mat(w_1; w_2; ...; w_n) in RR^n$. \

\

Then $vec(w)+vec(v) = mat(u_1; u_2; ...; u_n) + mat(v_1; v_2; ...; v_n) = mat(u_1+v_1; u_2+v_2; ...; u_n+v_n)$


1. $vec(w)+vec(v) = vec(v) + vec(w)$
2. $vec(w)+vec(v)+vec(w) = vec(w)+(vec(v)+vec(w))$
3. There is a zero *vector*, $accent(0, arrow)= [0 space 0 space 0 space ...  space 0]^T in RR^n$
4. $vec(v) + accent(0, arrow) = vec(v)$
5. $vec(v) + (- vec(v)) = 0$
]


#info[*Additive Inverse*\

Let $vec(w) = mat(u_1; u_2; ...; u_n), vec(v) = mat(v_1; v_2; ... ;v_n) in RR^n$. The additive inverse of $vec(w)$ denoted $-vec(w)$ is defined as $ -vec(w)=mat(-u_1; -u_2; ...; -u_n) $

$ vec(w) - vec(w) = vec(w) + (-vec(w)) = accent(0, arrow) $

$ vec(v)-vec(w) = vec(v) + (-vec(w)) = mat(v_1-u_1; v_2-u_2; ...; v_n-u_n) $
]

#info[*Scalar Multiplication*\

Let $vec(v) = mat(v_1; v_2; ... ;v_n), vec(w) in RR^n, c, d in RR.$ Then the scalar product $c vec(v) = mat(c v_1; c v_2; ...; c v_n) $

1. $(c+d) vec(v) = c vec(v) + d vec(v)$
2. $c (vec(w) + vec(v)) = c vec(w) + c vec(v)$
3. $0 vec(w) = accent(0, arrow)$
4. If $c vec(v) = accent(0, arrow)$ then $c = 0 or vec(v) = 0$
5. $c(d vec(v)) = (c d) vec(v)$
]

#info[*Linear Combination*\

For $vec(v_1), ..., vec(v_k) in RR^n$, and $c_1, ..., c_k in RR$ we call the expression $ c_1 vec(v_1) + c_2 vec(v_2) + ... + c_k vec(v_k) $ a *linear combination* of $vec(v_1), ..., vec(v_k)$.
]

Examples:\

1. Let $vec(u) = mat(2; 7), vec(v) = mat(-1; 3)$ then $2 vec(u) - 3 vec(v) = mat(4; 14) -+mat(3; -9) = mat(7; 5)$

2. Let $vec(u)= mat(1; 1), vec(v) = mat(2; 0)$. Is $vec(x) = mat(3; 2)$ a linear combination of $vec(u) "and" vec(v)$?

  We set $vec(x) = c_1 vec(u) + c_2 vec(v)$ and try to solve for $c_1, c_2$

  That is $mat(3; 2) = mat(c_1 + 2 c_2; c_1)$, we obtain $c_1 = 2, c_2 = 1/2$. So $vec(x)$ is a linear combination of $vec(u), vec(v)$

== Bases

#info[*Span*\

Let $cal(B) = {vec(v_1), ..., vec(v_k)}$ be a set of vectors in $RR^n$. We define the *span* of $cal(B)$ by $ "Span" cal(B) = {c_1 vec(v_1) + c_2 vec(v_2) + ... + c_k vec(v_k) | c_1, c_2, ... c_l in RR} $ We say that the set Span $cal(B)$ is spanned by $cal(B)$ adn that $cal(B)$ is a spanning set for Span $cal(B)$

Span might not cover the entire plane if

  - Vectors are linear dependent to each other
  - One of them is $vec(0)$
\

*Theorem*\

Let $vec(v_1), ..., vec(v_k) in RR^n$. Some vector $vec(v_i), 1<=i<=k,$ can be written as a linear combination of $vec(v_1), ..., vec(v_(i-1)), ..., vec(v_k)$ if and only if $ "Span"{vec(v_1), ..., vec(v_k)} = "Span"{vec(v_1), ..., vec(v_(i-1)), ..., vec(v_k)}$ 
]

#proof[]


Example:

Consider $vec(v_1) = mat(1;0), vec(v_2) = mat(0;1)$ 

Describe Span $vec(v_1), vec(v_2)$ geometrically.

$"Span" {vec(v_1), vec(v_2)} = "Span" {mat(1; 0), mat(0; 1)} = {c_1 mat(1; 0) + c_2 mat(1; 0) | c_1, c_2 in RR} = {mat(c_1; c_2) | c_1, c_2 in RR} = RR^2$  
\
\
#info[*Linear Dependence/Independence*\

A set of vectors ${vec(v_1), ..., vec(v_k)} in RR^n$ is said to be *linearly dependent* if there exist coefficients $c_1, ..., c_k$ not all zero such that $ vec(0) = c_1 vec(v_1) + ... + c_k vec(v_k) $

A set of vectors ${vec(v_1), ..., vec(v_k)} in RR^n$ is said to be *linearly Independent* if the only solution to $c_1, ..., c_k$ not all zero such that $ vec(0) = c_1 vec(v_1) + ... + c_k vec(v_k) $ is $c_1 = c_2 = ... = c_k =0$ (called *trivial solution*)
]

Examples:

1. Let $vec(u), vec(v) in RR^n$. Prove that ${vec(u), vec(v)}$ is linearly dependent $<==>$ at least one of $vec(u), vec(v)$ is a scalar multiple of the other.

\
\
\

  #proof[
  Let $vec(u), vec(v) in RR^n$

  1. Assume ${vec(u), vec(v)}$ is linearly dependent. Then $exists c_1, c_2 in RR$, not both zero s.t. $ c_1 vec(u) + c_2 vec(v) = vec(0) $
   WLOG, assume $c_1 !=0$ Then, $c_1 vec(u) = - c_2 vec(v) ==> vec(u) = - c_2/c_2 vec(v)$. Thus $vec(u)$ is a scalar multiple of $vec(v)$

  2. Assume WLOG $vec(u)$ is a scalar multiple of $vec(v)$. Then $exists a in RR$ s.t. $ vec(u) = a vec(v) ==> 1 vec(u)-a vec(v) = vec(0) $ Since $1!= 0, {vec(u), vec(v)}$ is linearly dependent.

 #align(right)[$square$] 

]

2. Is the set ${mat(1; 2; 0), mat(1; -1; 1). mat(2; 1; 1)}$ linearly independent? 

  \

  Consider the equation $c_1 mat(1; 2; 0) + c_2 mat(1; -1; 1)+ c_3 mat(2; 1; 1) = mat(0; 0; 0)$
  
  Which gives $cases(c_1 + c_2 + 2c_3 = 0, 2 c_1 -c_2+c_3 = 0, c_2+c_3 = 0)$
  \

  $ ==> c_2 = c_1 = -c_3$\. Thus we get a solution for any $c_3$. Pick $c_3 = -1 ==> c_2 = c_1 = 1$.

  Thus the set is linearly dependednt.


#info[*Linear Dependence Theorem*\
A set of vectors ${vec(v_1), ..., vec(v_k) in RR^n}$ is linearly dependent if and only if $ vec(v_i) in "Span" {vec(v_1), ..., vec(v)_(i-1), vec(v)_(i+1), ..., vec(v_k)} "for some" i, 1<=i<=k $
]

#info[*Zero Vector and Linear Dependence*\
If a set of vectors ${vec(v_1), ..., vec(v_k)}$ contains the zero vecot, then it is linearly dependent.

Proof: 

Let $vec(v_i) = vec(0)$

$ 0 vec(v_1) + ... + 0 vec(v)_(i-1) + vec(v)_i + 0 vec(v)_(i+1) + 0 vec(v_k) = vec(0) $

#align(right)[$square$]
]


CUTOFF


#info[*Standard Basis*\

In $RR^n$, let $accent(e_i, arrow)$ be the vector whose $i^("th")$ component is 1 with all other components 0. The set $Epsilon = {accent(e_1, arrow), accent(e_2, arrow), ..., accent(e_n, arrow)}$ is called the *standard basis for* $RR^n$

(i.e. $RR^3 "is" {accent(e_1, arrow), accent(e_2, arrow), accent(e_3, arrow)} = {mat(1; 0; 0), mat(0; 1; 0), mat(0; 0; 1)}$)

If $vec(v) = mat(v_1; v_2; ...; v_n) = v_1 accent(e_1, arrow) + v_2 accent(e_2, arrow) + ... + v_n accent(e_n, arrow)$ then we call $v_1, v_2, ..., v_n$ the *components of* $vec(v)$
]


== Dot Product

#info[*Dot Product*\

Let $vec(w) = mat(u_1; u_2; ...; u_n)$, $vec(v) = mat(v_1; v_2; ...; v_n)$, $vec(w) = mat(w_1; w_2; ...; w_n)$ be vectors in $RR^n$. We defined their *dot product* by 

$ vec(w) dot vec(v) = u_1 v_1 + u_2 v_2 + ... + u_n v_n $

1. $vec(w) dot vec(v) = vec(v) dot vec(w)$

2. $(vec(w) + vec(v)) dot vec(w) = vec(w) dot vec(w) + vec(v) dot vec(w)$

3. $(c vec(w)) dot vec(v) = c (vec(w) dot vec(v))$

4. $vec(w) dot vec(w) >= 0,$ with $vec(w) dot vec(w) = 0 <==> vec(w) = 0$

]

#info[*Vector Unit Basics*

Let $vec(v), vec(w) in RR^n$

1. The *length* of vector $vec(w) "is" ||vec(w)|| = sqrt(vec(w) dot vec(w))$

2. If $c in RR, vec(w) in RR^n$, then $||vec(w)|| = |c| ||vec(w)||$  

3. $vec(v)$ is a *unit vector* if $||vec(v)|| = 1$ 

4. *Normalization* is when some $vec(v)$ is a non-zero vector, $ accent(v, hat) = frac(vec(v) ,||vec(v)||) $ in the direction of $vec(v) $ by scaling $vec(v)$

5. With $vec(v) , vec(v) $ non-zero vectors. The angle $theta, 0 <= theta<=pi$ between $vec(v)$ is such that $ vec(w) dot vec(v) =||vec(w)||||vec(v)|| cos theta "that is" theta = arccos((vec(w) dot vec(v)) / (||vec(w)||||vec(v)|| )) $

6. $vec(w), vec(v)$ are *orthogonal/perpendicular* if $vec(w) dot vec(v) = 0$
]

== Projection

#info[*Projection*\

Let $vec(v), vec(w) in RR^n$ with $vec(w) !=0$. 

1. The *projection* of $vec(v)$ onto $vec(w)$ is defined by $ proj_vec(w) (vec(v)) = frac(vec(v) dot vec(w), ||vec(w)||^2) vec(w) = frac(vec(v) dot vec(w), vec(w) dot vec(w)) vec(w) $

 We also refer to this as the *projection of $vec(v)$ in the $vec(w)$ direction*

 Illustration of $proj_vec(w) (vec(v))$:
 #align(center)[#image("../../../pictures/lineara1.png")]


2. We refer to the quantity $ ||vec(v)|| cos theta = vec(v) dot accent(w, hat) $ as the *component* (or scalar component) *of $vec(v)$ along $vec(w)$*

3. The *perpendicular* of $vec(v)$ onto $vec(w)$ is defined by $"perp"_vec(w) (vec(v)) = vec(v) - proj_vec(w) (vec(v))$

4. The projection and the perpendicular of a vector $vec(v)$ onto $vec(w)$ are orthogonal; that is $ "perp"_vec(w) (vec(v)) dot proj_vec(w) (vec(v)) = 0 $
]

== Vectors in $CC^n$

#info[*Vectors in $CC^n$*\

The set $CC^n$ is defined as ${accent(z, arrow) = mat(z_1; ...; z_n): z_1, ..., z_n in CC}$

The *vector* is an element $accent(z, arrow) = mat(z_1; ...; z_n) "of" CC^n$

In $CC^n$, let $accent(e_i, arrow)$ be the vector whose $i^("th")$ component is 1 with all other components 0. The set ${accent(e_1, arrow), accent(e_2, arrow), ..., accent(e_n, arrow)}$ is called the *standard basis for* $CC^n$
]

== Standard Inner Product in $CC^n$

#info[*Standard inner product*\

Let $c in CC "and" vec(u), vec(v), vec(w) in CC^n$


The *standard inner product* of $vec(v) = mat(v_1; v_2; ...; v_n), vec(w) = mat(w_1; w_2; ...; w_n)$ is $ ip(vec(v), vec(w)) = v_1 overline(w_1) + v_2 overline(w_2) + ... + v_n overline(w_n) $

1. $ip(vec(u), vec(w)) = overline(ip(vec(v), vec(w)))$

2. $ip(vec(u)+vec(v), vec(w)) = ip(vec(u), vec(w)) + ip(vec(v), vec(w))$

3. $ip(c vec(u), vec(v)) = c ip(vec(u), vec(v))$

4. $ip(vec(v), vec(v)) >= 0$, with $ip(vec(v), vec(v)) = 0$ if and only if $vec(v) = vec(0)$

5. The length: $||vec(v)|| = sqrt(ip(vec(v), vec(v)))$

6. $vec(w), vec(v)$ are *orthogonal/perpendicular* if $ip(vec(w), vec(v)) = 0$

7. With $vec(w)!=0$. The *projection of $vec(v)$ onto $vec(w)$* is defined by $ proj_vec(w) (vec(v)) = frac(ip(vec(v), vec(w)), ||vec(w)||^2) = ip(vec(v), vec(w)) accent(w, hat) $
]

== The Cross Product in $RR^3$

#info[*Cross Products*
Let $vec(u) = mat(u_1; u_2; u_3), vec(v) = mat(v_1;v_2;v_3) in RR^3$. 

The *cross product* of $vec(u), vec(v)$ is defined to be the vector in $RR^3$ given by $ vec(u) times vec(v) = mat(u_2 v_3 - u_3 v _2; -(u_1; v_3 - u_3 v_1); u_1 v_2 - u_2 v_1) $

Let $vec(z) = vec(u) times vec(v)$

1. $vec(z) dot vec(u) = vec(z) dot vec(v) = 0$

2. $vec(v) times vec(u) = -vec(z) = - vec(u) times vec(v)$

3. If $vec(u) != vec(0)$ and $vec(v) != vec(0)$, then $||vec(u) times vec(v)|| = ||vec(u)||||vec(v)|| sin theta$ where $theta$ is the angle between $vec(u)$ and $vec(v)$ 
]

#info[*Linearity of the Cross Product*

Let $c in RR$ and $vec(u), vec(v), vec(w) in RR^3$, then 

1. $(vec(u)+vec(v)) vec(w) = (vec(u) times vec(w)) + (vec(v) times vec(w))$

2. $(c vec(u)) times vec(v) = c(vec(u) times vec(v))$

3. $vec(u) times (vec(v) + vec(w)) = (vec(u) times vec(v)) + (vec(u) times vec(w))$

4. $vec(u) times c(vec(v)) = c(vec(u) times vec(v))$
]
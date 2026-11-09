#import "../../../preamble.typ": *
#show: conf
#import "@preview/diverential:0.2.0": *
#import "@preview/physica:0.9.8": *
#let strut(h) = box(height: h, width: 0pt)
#let Title = "CH 4 - Inner Product Spaces"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

We defined abstract vector spaces to model $RR^n$.

So far, the focus has been on algebra. Geometry is rarely discussed. 

In $RR^n$, we can talk about lengths, distance, and angles via DOT PRODUCT 

Recall that in $RR^n, vec(x) dot vec(y) = mat(x_1; ...; x_n) dot mat(y_1; ...; y_n) = x_1 y_1 + ... + x_n y_n$

*Observations*:

1. $vec(x) dot vec(x) = x_1^2 + ...+ x_n^2 = ||vec(x)||^2$

2. $"dist"(x, y) = ||vec(y)-vec(x)|| = sqrt((vec(x)-vec(y)) dot (vec(x)-vec(y)))$


3. $vec(x) dot vec(y) = ||x||||y|| cos theta ==> theta = arccos frac(vec(x) dot vec(y), ||vec(x)||||vec(y)||)$

We can view dot product as $f:V times V ->RR, f(x, y) = x dot y in RR$ that satisfies

1. $f(x, y) = f(y, x)$, symmetry

2. $f(c x + z, y) = c f(x, y) + f(z, y)$, linearity in the first argument(second argument is same by symmetry)

3. $f(x, x) >=0 space forall x$, $f(x, x) = 0 <==> x = 0$, positive-definite

4. $frac(f(x, y), ||x||||y||) in [-1, 1]$, can be obtained from the above 3 properties.
#defn[*Inner Product*  \

Let $V$ be a vector space over $FF$. An *inner product* on $V$ is a function

$ chevron.l space , space chevron.r:V times V -> FF $ satisfying:

1. Symmetry: $chevron.l vec(x), vec(y) chevron.r = overline(ip(vec(y), vec(x)))$

2. Linearity in arguments: $chevron a vec(x)+y, vec(z) chevron.r = a chevron.l vec(x), vec(z) chevron.r +chevron.l vec(y),vec(z) chevron.r$

3. Positive-definite: $chevron.l vec(x), vec(x) chevron.r >= 0 "and" chevron.l vec(x), vec(x) chevron.r = 0 <==> vec(x) = vec(0)$

]

Examples

1. $V = RR^n, chevron.l vec(x), vec(y) chevron.r = vec(x) dot vec(y)$ is an inner product

2. $V = P_2 (RR), ip(a_0+a_1 x+a_2x^2, b_0 + b_1 x+b_2 x^2) = mat(a_0; a_1; a_2) dot mat(b_0; b_1; b_2) = a_0 b_0 +a_1 b_1 + a_2 b_2$

3. $[L^2 "inner product"]  V = P_n (RR)$

  $ip(p(x), q(x)) = integral_0^1 p(x)q(x) dif x$

  Claim: the above is an inner product on $P_n(RR)$

  1. Symmetry: $ip(p, q) = integral_0^1 p(x)q(x) dif x = integral_0^1 q(x)p)(x) dif x = ip(q, p) $

  2. Linearity $ip(a p(x)+q(x), r(x)) =  integral_0^1 (a p(x)+q(x))r(x) dif x =  a integral_0^1 p(x)r(x) dif x +  integral_0^1 q(x)r(x) dif x = a ip(p(x), r(x)) + ip(q(x), r(x)) $

  3. Absolute-definite $ip(p(x), p(x)) =  integral_0^1 p(x)p(x) dif x =  integral_0^1 p^2(x) dif x >=0$

    If $ip(p(x), p(x)) = 0, "then"  integral_0^1 p^2(x) dif x = 0 ==> p(x)=0$

4. $V = M_(2 times 2) (RR)$

  $ip(mat(a, b;c, d), mat(x, y; z, w)) = a x+b y+ c z+ d w$

  Let $A = mat(a, b; c, d), B = mat(x, y; z, w)$

  $ip(A, B) = "tr"(B^T A) quad ("Frobenius Inner Product on" M_(n times n) (RR) )$

  Special case, $M_(n times 1) = RR^n$

  $ip(vec(x), vec(y))_F = "tr"(vec(y)^T vec(x)) = "tr"([x_1 y_1 + ... + x_n y_n]) = x_1 y_1 + ...+ x_n y_n = vec(x) dot vec(y)$



*Propositions of Inner Products*

1. By symmetry, we have linearity in second argument in $RR^n$: $ip(vec(x), a vec(y)+vec(z)) = a ip(vec(x), vec(y)) + ip(vec(x), vec(z)) $

2. $ip(vec(x), vec(0)) = ip(vec(0), vec(v)) = 0$

3. Every finite-dimensional vector space $V$ has an inner product

4. Every non-zero vector space $V$ has infinitely many inner product.

5. $V = CC^n, ip(x, y) = x_1 dot overline(y)_1 + ... + x_n dot overline(y)_n$

6. The second arguments are conjugate linear $ip(vec(x), a vec(y)+vec(z)) = overline(a) ip(vec(x), vec(y)) = + ip(vec(x), vec(z))$


Example:

Intuitively, $ip(vec(x), vec(x)) = mat(i; 0; ...; 0) dot mat(i; 0; ...; 0) = i^2 +0^2+ ... +0^2 = -1$

We define $ip(mat(z_1; ...; z_n), mat(w_1; ...; w_n)) = z_1 overline(w)_1 + z_2 overline(w)_2 + ... +z_n overline(w)_n $

Then, $ip(vec(x), vec(x)) = mat(i; 0; ...; 0) dot mat(i; 0; ...; 0) = i dot overline(i) + ... + 0 dot overline(0)= -(-1) = 1$ satisfies absolute-definite

#proof[
  2. $ip(vec(x), vec(0)) = ip(vec(x), vec(0)+vec(0)) = ip(vec(x), vec(0)) + ip(vec(x), vec(0)) - ip(vec(x),vec(0)) = ip(vec(x), vec(0))  - ip(vec(x), vec(0))= 0$

  3. $V tilde.equiv RR^n$

    $ip(x, y) = [x]_B dot [y]_B $ is an inner product

  4. There exists an inner product $chevron.l , chevron.r$

    Consider $c chevron.l , chevron.r, space c in RR_(>0)$

    There are infinitely many inner product
]

\
\
\
\
Recall:

1. $vec(x) dot vec(x) = x_1^2 + ...+ x_n^2 = ||vec(x)||^2$

2. $"dist"(x, y) = ||vec(y)-vec(x)|| = sqrt((vec(x)-vec(y)) dot (vec(x)-vec(y)))$


3. $vec(x) dot vec(y) = ||x||||y|| cos theta ==> theta = arccos frac(vec(x) dot vec(y), ||vec(x)||||vec(y)||)$


#defn[*Norms, Distance, Angles* \

Let $V$ be an inner product space(a vector space with a fixed choice of inner product)

The *norm* of $vec(x) in V$ is $||vec(x)|| =  sqrt(ip(vec(x), vec(x)))$ is a non-negative real number

The *distance* between $vec(x), vec(y) in V$ is $"dist"(vec(x), vec(y)) = sqrt(ip(vec(x), vec(y)))$ is non-negative real number

]
\
*IMPORTANT: DO NOT FORGET THE SQUARE ROOT*

Examples:

1. If $V = RR^n$, $chevron.l, chevron.r$ be dot product. These definitions are the familiar ones from Euclidean Geomtery.

2. $V = M_(2 times 2)(RR)$, $chevron.l, chevron.r$ be the Frobenius inner product

  $||mat(1, 2; 3, 4)|| = sqrt(ip(A, A)) = sqrt(1^2+2^2+3^2+4^2) = sqrt(30)$

3. $V = P_2 (RR), ip(p, q) = integral_0^1 p(x)q(x) dif x$

  $"dist"(1-x^2, 2+3x+2x^2) &=sqrt(ip(-x^2, 2+3x+2x^2)) \
  
  &= sqrt(integral_0^1 (1-x^2)(2+3x+2x^2) dif x) =
sqrt(153/ 10)$

#thm[*Properties of Norm* \ 

Let $V$ be an inner product space

1. $||vec(x)|| >=0$ and $||vec(x)|| = 0 <==> vec(x) = vec(0) quad$ (Positive-definite)

2. $||c vec(x)|| = |c| ||vec(x)|| quad $ (Homogeneity)

3. $||vec(x)+vec(y)|| <=||vec(x)|| +||vec(y)|| quad$ (Triangle Inequality)
 
]

#proof[
  2. $||c vec(x)|| = sqrt(ip(c vec(x), c vec(x))) = sqrt(c overline(c) ip(vec(x), vec(x))) = sqrt(|c|^2 ip(vec(x), vec(x)))  = |c| sqrt(ip(vec(x), vec(x))) = |c| ||vec(x)||, quad c in FF$

  3. $ ||vec(x)+vec(y)||^2 &= ip(vec(x)+vec(y), vec(x)+vec(y)) = ip(vec(x), vec(x)) + ip(vec(x), vec(y)) + ip(vec(y), vec(x)) + ip(vec(y), vec(y))  \

  &= ||vec(x)||^2 + ip(vec(x), vec(y))+ overline(ip(vec(x), vec(y))) + ||vec(y)||^2 \ 
   
   &= ||vec(x)||^2+2 "Re"(ip(vec(x), vec(y))) + ||vec(y)||^2\

   &<= ||vec(x)||^2 + 2|ip(vec(x), vec(y))| + ||vec(y)||^2 = ||vec(x)||^2 + 2||vec(x)|| ||vec(y)|| + ||vec(y)||^2   = (||vec(x)||+||vec(y)||)^2 \

   \

  ==>
  ||vec(x)+vec(y)|| <=||vec(x)+vec(y)||
   
  $
]
#align(right)[$square$]


 #thm[*Cauchy-Schwarz Inequality* \ 

Let $V$ be an inner product space. Then
$ |ip(vec(v), vec(w))| <= ||vec(v)||||vec(w)||, space forall vec(v), vec(w) in V $

with equality if and only if $vec(v)$ and $vec(w)$ are scalar multiples of each other
]

Basic idea: if $chevron.l, chevron.r$ is dot product on $RR^n <=1$

$|ip(x, y)| = |x dot y| = ||x|| ||y|| |cos theta| <=||x|| ||y||$

#defn[ \

If $x, y in V$ are non-zero, let the angle between them to be $theta = arccos(ip(x, y)/(||x||||y||))$

$ ip(x, y)/(||x||||y||) <=1 $ by Cauchy-Schwarz

]

Question: when $theta = 90$?

Ans: $ip(x, y)/(||x||||y||) = cos 90 = 0 ==> ip(x, y) = 0$

#defn[*Orthogonal in Inner Product Space* \

Let $V$ be an inner product space. We say $vec(x), vec(y) in V$ are orthogonal, denoted $ vec(x) perp vec(y) <==> ip(vec(x), vec(y)) = 0 $
]

Examples:

1. $V in RR^2, chevron.l, chevron.r = "dot product"$. $e_1 perp e_2 <==> ip(mat(1; 0), mat(0;1)) = 0$

2. $V = P_2 (RR), ip(p, q) = integral_0^1 p(x)q(x) dif x$

  $p = 1, q = x$ are not orthogonal b/c  $ip(p, q) = ip(1, x) = integral_0^1 x dif x = 1/2 !=0$

  If we define $ip(p, q) = integral_(-1)^1 p q dif x$

  Then $1 perp x <==> ip(1, x) = integral_(-1)^1 x dif x = 0$

#thm[*Pythagorean Theorem* \

Let $V$ be an inner product space.

If $ x perp y ==> ||vec(x)+vec(y)||^2 = ||vec(x)||^2 + ||vec(y)||^2 $
]

#proof[

By definition, $||x+y||^2 =ip(x+y, x+y) = ip(x, x) + ip(x, y)+ip(y, x)+ip(y, y) = ip(x, x)+ 0+ 0 +ip(y, y) = ||x||^2 +||y||^2$ since $x perp y$
]

#align(right)[$square$]

#defn[*Generalized Orthogonal set and Pythagorean Theorem* \

We say $S = {v_1, ..., v_k}$ is an orthogonal set if $v_i perp v_j, forall i!=j$


If $S = {v_1, ..., v_k}$ is orthogonal, then $||(v_1+...)+v_k||^2 = ||v_1||^2+ ... + ||v_k||^2 $
]

*IMPORTANT*: Suppose $S = {v_1, ..., v_k}$ is orthogonal and $v_i != vec(0)$, then $S$ is linearly independent.

#proof[
Consider the equation $c_1 v_1 + ... + c_k v_k= 0, v_i in S$

Take the equation and take the inner product on both sides by $v_i$

$ ip(c_1 v_1 + ... + c_k v_k, v_i ) &= ip(0, v_i) \

c_1 ip(v_1, v_i) + ... + c_i ip(v_i,v_i)+ ... + c_k ip(v_k, v_i )&= 0 \

c_i ip(v_i, v_i) &= 0
$

$v_i !=0 ==>ip(v_i, v_i) != 0 ==> c_i = 0$, so $S$ is linearly independent
]
#align(right)[$square$]

#defn[*Orthogonal Basis* \ 

An *orthogonal basis* for $V$ is a basis that is an orthogonal set.
]

*IMPORTANT*: Coordinates with orthogonal are very easy to find

Examples:

1. Let $V = RR^2; chevron.r, chevron.l = "dot product", S = {e_1, e_2}$ is an orthogonal basis

2. $B = {v_1 =mat(1;1), v_2 mat(-1; 1)}$ is an orthogonal basis.

 Let $x = mat(a; b) in RR^2$. 

  $c_1, c_2 in RR$ so that $x = c_1 mat(1;1)+ c_2 mat(-1; 1)$

  Take inner product on both sides with $v_1$

  $ip(x, v_1) = ip(c_1 v_1+c_2 v_2, v_1) = c ip(v_1, v_1) + c_2 (0) ==>c_1 = ip(x, v_1)/ip(v_1, v_1) = frac(mat(a;b) dot mat(1;1), mat(1; 1) dot mat(1;1)) = (a+b)/2$

  Similarily for $v_2 ==> c_2 = ip(x, v_2)/ip(v_2, v_2) = frac(mat(a;b) dot mat(-1;1), mat(-1; 1) dot mat(-1;1)) = -(a+b)/2 $ 

  Verify: $mat(a; b) = (a+b)/2 mat(1; 1) -(a+b)/2 mat(-1; 1) $


\
#defn[*Projection* \

Let $vec(v), vec(w) in V, vec(w) != 0$. The *projection of $vec(v)$ onto $vec(w)$* is the vector $ "proj"_(vec(w)) vec(v) = frac(ip(vec(v), vec(w)), ip(vec(w), vec(w))) vec(w) $

]
#thm[*Coordinates with Orthogonal Basis* \ 

Suppose $B = {v_1, ..., v_n}$ is an orthogonal basis for $V$. Then for all $x in V$, $ x = sum_(i=1)^n frac(ip(x, v_i), ip(v_i, v_i)) v_i = sum_(i=1)^n "proj"_(vec(v)_i) vec(x) $

*WARN*: This fails if $B$ is not orthogonal
]

Bad example: 

$B = {v_1 = mat(1;1), v_2 = mat(1;2)}$ is a basis but not orthogonal

Take $x = mat(3;4)$

$"proj"_(v_1) x + "proj"_(v_2) x = ip(x, v_1)/ip(v_1, v_1) v_1 + ip(x, v_2)/ip(v_2, v_2) v_2 = mat(7/2+11/5; 7/2+22/5) != x $


#defn[*Perpendicular* \

Let $vec(w)!=vec(0), vec(v)$ be arbitrary. The perpendicular of $vec(v)$ to $vec(w)$ is $ "perp"_(vec(w)) vec(v) = vec(v)-"proj"_(vec(w)) vec(v) $

1. $v = "proj"_(vec(w)) vec(v) + "perp"_(vec(w)) vec(v)$

2. $"proj"_(vec(w)) vec(v) perp  "perp"_(vec(w)) vec(v)$

3. $"proj"_(vec(w)) vec(v) in "span"{vec(w)}$

]

Question: Let $V$ be an inner product space. Does $V$ have an orthogonal basis?

Ans: Yes

If $"dim" V = 0, B = emptyset$ is orthogonal

If $"dim" V = 1, B = {v}$ is orthogonal

If $"dim" V = 2, B = {v_1, v_2}$, we can always fix $B$ to ba an orthogonal basis to $C = {w_1, w_2}$, take $w_1 = v_1, "then" w_2 = "perp"_(v_2) v_1$.


Additionally, $w_1 perp w_2, "span"{v_1, v_2} = "span"{w_1, w_2}$

#proof[
  It is sufficient to show that $v_1, v_2 in "span"{w_1, w_2}$

  $v_1 = w_1, v_2 = v - frac(ip(v_2,w_1), ip(w_1, w_1)) w_1$

  Similarily $w_1 = v_1, w_2 = v_2 - frac(ip(v_2,w_1), ip(w_1, w_1)) v_1 $
]

If $"dim" V = 3$?


$"dim" V = 3$

We have $B = {v_1, v_2, v_3}$, take $cases(w_1 = v_1, w_2 = v_2-"proj"_(v_1) (v_2), w_3 =v_3 - "proj"_(v_1)(v_3) - proj_(w_2)(v_3) = v_3-"proj"_W (v_3) "where" W = "span"{w_1, w_2} )
$

Claim:
1. ${w_1, w_2, w_3}$ is an orthogonal set

2. $"span"{w_1, w_2, w_3} = "span"{w_1, w_2, w_3} = V$

Therefore, ${w_1, w_2, w_3}$ is an orthobasis for $V$

#proof[
  1. We want $ip(w_i, w_j) = 0 quad forall i !=j$

    We know that $ip(w_1, w_2) = 0$

    $w_3 = v_3 - alpha w_1 - beta w_2$

    $ip(w_3, w_1) = ip(v_3, v_1) - alpha ip(v_1, v_1) - beta ip(v_2, v_1) = ip(v_3, v_1) - frac(ip(w_3, w_1), ip(w_1, w_1)) ip(w_1, w_1)=0$

     $ip(w_3, w_2) = ip(v_3, v_2) - alpha ip(v_2, v_1) - beta ip(v_2, v_2) = ip(v_3, v_1) - frac(ip(w_3, w_2), ip(w_2, w_2)) ip(w_2, w_2)=0$

]

#defn[*Gram-Schmidt Process* \

Suppose ${v_1, v_2, ..., v_n}$ is a basis for inner product space $V$.

Define recursively ${w_1, w_2, ..., w_n}$ by 

$ w_1 &= v_1  \

w_2 &= v_2 - "proj"_(w_1) (v_2) \

w_3 &= v_3 - "proj"_(w_1) (v_3) - "proj"_(w_2) (v_3) \

... \

w_n &= v_n - "proj"_(w_1) (v_n) - "proj"_(w_2) (v_n) - ... - "proj"_(w_(n-1)) (v_n)
$


Then ${w_1, w_2, ..., w_n}$ is an orthobasis for $V$

*WARN: $w_i = v_i - sum_(j=1)^i "proj"_(w_j) (v_i)$, the subscript is $w$ not $v$*

After each step, we can scale the vector by a scalar to eliminate fractions.

]

Example:

Find an orthobasis for $V = "span"{mat(1;1;0;1), mat(1;2;0;0), mat(-1;1;0;2)}subset.eq RR^4, chevron.l, chevron.r = "dot product"$

$w_1 = v_1 = mat(1;1;0;1)$

$w_2 = v_2 - "proj"_(w_1) (v_2) = mat(0;1; 0;-1), mat(1;1;0;1) dot mat(0;1;0;-1) = 0$

$w_3 = v_3 - "proj"_(w_1) (v_3) - "proj"_(w_2) (v_3) = 5/6 mat(-2;1;0;1), 5/6 mat(-2;1;0;1) dot mat(1;1;0;1) = 5/6 mat(-2;1;0;1) dot mat(0;1;0;-1)=0$

$C = {mat(1;1;0;1), mat(0;1;0;-1), mat(-2;1;0;1)}$ is an orthobasis

*Note* that 

1. Gram-Schmidt depends on the order of $v_1, ..., v_n$. A different ordering will produce different orthobasis

2. If there is a linear dependence relationship in $v_1,..., v_n$. Then Gram-Schmidt will have the vector as $w_i = 0$

#defn[*Orthonormal Basis* \

An *orthonormal basis* for $V$ is an orthogonal basis $B = {v_1, ..., v_n}$ for $V space forall ||v_i|| = 1$
]

#info[*Normalize Vector* \ 

Let $vec(v)$ be a vector, a normalized $vec(v)$ is $ hat(v) = frac(vec(v), ||vec(v)||) $
]

Example:

1. $C = {mat(1;1;0;1), mat(0;1;0;-1), mat(-2;1;0;1)}$ is orthogonal, we can normalize it 

  $hat(C) = {1/sqrt(3) mat(1;1;0;1), 1/sqrt(2) mat(0;1;0;-1), 1/sqrt(6) mat(-2;1;0;1)}$

2. Find an orthonormal basis for $P_2(RR)$ with $ip(p, q) = integral_0^1 p(x)q(x) dif x$

#thm[*Orthogonal Decomposition Theorem* \ 

Let $W$ be a subspace of the inner product space $V$. Let $vec(v) in V$. Then $exists "unique" vec(p) in W$ and $vec(r) perp W, "that is" ip(vec(r), vec(w)) = 0, forall vec(w)in W$ s.t. $ vec(v) = vec(p)+vec(r) $

Alternatively,

If $W subset.eq V$ is a subpsace and if $vec(v) in V$, then $ vec(v) = "proj"_W vec(v) + "proj"_(W^perp) vec(v) $ 
] 

#defn[*Projection on Subspace* \ 
Let $ vec(v) = vec(p)+vec(r)$ be as in the above theorem. 

Then call $vec(p)$ the *projection* of $vec(v)$ onto $W$: $vec(p) = "proj"_W vec(v)$

Then call $vec(r)$ the *perpendicular* of $vec(v)$ onto $W$: $vec(r) = "perp"_W vec(v)$

The theorem says $vec(v) = "proj"_W vec(v) + "perp"_W vec(v)$

]

Example:

1. The Orthogonal Decomposition Theorem looks like  $vec(v) = "proj"_vec(w) vec(v) + "perp"_vec(w) vec(v), "where" vec(w) !=0$

  If we let $W = "span"{vec(w)}$, then we need to get  $"proj"_W vec(v) = "proj"_vec(w) vec(v) "and"  "perp"_W vec(v) = "perp"_vec(w) vec(v)$

2. Take $V = RR^3$. $W = "xy-plane" = {mat(x;y;0): x, y in RR} = "span"{e_1, e_21}$

  Let $vec(v) = mat(a;b;c) in V$, then it is clear that $"proj"_W mat(a;b;c) = mat(a;b;0), "perp"_W mat(a;b;c) = mat(0;0;7)$


*Observation*: ${e_1, e_2,e_3}$ is an orthonormal basis for $RR^3$

  $==> vec(v) = "proj"_e_1 vec(v) + "proj"_e_2 vec(v) + "proj"_(e_2) vec(v) = ip(v_1, e_1)/ip(e_1, e_1) e_1 +ip(v_1, e_2)/ip(e_2, e_2) e_2 +ip(v_1, e_3)/ip(e_3, e_3) e_3 = mat(a;0;0) +mat(0;b;0) + mat(0;0;c)$

*Question*: what is $W = {mat(x;y;z):2x-y=x=0}$?

Idea: 
1. Find the basis for $W$
2. Apply Gram-Schmidt to the basis.
3. Extend to the basis for $V$ 
4. Apply Gram-Schmidt again
 
*ANS*: 

1. Basis be ${mat(1;2;0), mat(1;0;2)}$ by inspection

2. The basis is ${mat(1;2;0), mat(2;-1;5)}$

3. ${mat(1;2;0), mat(2;-1;5), mat(1;0;0)}$ by extending the standard basis 

4. Orthonormal basis ${mat(1;2;0), mat(2;-1;5), mat(-2;1;1)}$

Let ${w_1, w_2, n} =  {mat(1;2;0), mat(2;-1;5), mat(-2;1;1)}$

$vec(v)= mat(1;2;3)$

$vec(p) = "proj"_vec(w)_1 vec(v) +"proj"_vec(w)_2 vec(v) = 1/2 mat(4;3;5)$

$vec(r) = "proj"_vec(n) vec(v) = 1/2 mat(-2;1;1)$

#thm[*Lemma*

Let $W$ be a subspace, then $exists$ an orthogonal basis of $V$ of the form ${w_1, ..., w_k, n_1, ..., n_l}$ where ${w_1, ..., w_k}$ is an orthobasis of $W$ and $n_1, ..., n_l perp W$]
#proof[
Lemma


Let ${v_1, ..., v_k}$ be a basis for $W$ extend to a basis for $V = {v_1, ..., v_k, y_1, ..., y_l}$.

Apply Gram-Schmidt to the basis to get the orthobasis ${w_1, ..., w_k, n_1, ..., n_l}$. Then we know $"span"{w_1, ..., w_k}= "span"{v_1, ..., v_k} = W$

$therefore {w_1, ..., w_k}$ is an orthobasis for $W$

Because linear independent as the outcome of Gram-Schmidt is already linearly independent since they are orthogonal and non-zero

It suffices to show that $n_i perp w_j, forall i, j$ because $w_j "span" W, "b/c" {w_1, ..., w_n, n_1, ..., n_l}$ is an orthogonal set

]
#align(right)[$square$]


#proof[
Orthogonal Decomposition Theorem

Existence: 

Choose an orthobasis ${w_1, ..., w_k, n_1, ..., n_l}$ like the lemma. 

Given $vec(v)_i$, we can write $vec(v) = sum_(i=1)^k "proj"_w_i v (in W) + sum_(j=1)^l "proj"_n_i v (in W^perp)$

This is a formula for $"proj"_W vec(v) + "perp"_W vec(v)$

Uniqueness: 

Let $v = p+r = tilde(p)+tilde(r)$ where $p, tilde(p) in W "and" r, tilde(r) in W^perp$

$==> p+r = tilde(p)+tilde(r) ==> p-tilde(p) (in W) = r-tilde(r) (in W^(perp)) \


==> p - tilde(p) perp p - tilde(p) ==> ip(p - tilde(p), p - tilde(p)) = 0 <==> p - tilde(p) = 0 <==> p = tilde(p)\

==>r-tilde(r) perp r-tilde(r) ==> ip(r-tilde(r), r-tilde(r)) = 0 <==> r-tilde(r) = 0 <==> r=tilde(r)$ by positive definite.



]
#align(right)[$square$]

#defn[*Proposition*

Let $V$ be an inner product space and $W subset.eq V$ be a subspace.
1. $W^(perp) in V$

2. $W union W^(perp) = {vec(0)}$ by positive definite

3. $"dim"W + "dim"W^perp = "dim" V$
]

Examples:

1. $S = {vec(0)}, S^(perp)  = {vec(v) in V: vec(v) perp vec(0)} = V$

2. $S = V, S^perp = {vec(v) in V: vec(v) perp V} = vec(0)$ by positive definite

3. $W = {mat(x;y;z): 2x-y+5z=0} subset.eq RR^3$ with dot product

  $W^perp = "span"{mat(2;-1;5)}$

4. $W = "span"{mat(1, 1;1, 1), mat(1, 1; 0, 0)} in M_(2 times 2)(RR)$ with Frobenius inner product

  It suffices to find all $A in V$ s.t. $ip(A, mat(1, 1;1 , 1)) = 0$ and $ip(A, mat(1, 1; 0, 0)) = 0$

  Let A = $mat(a, b; c, d)$

  $ip(A, B) = a+b+c+d = 0, ip(A, C)= a+b = 0$

  $c = -d, a = -b ==> A = mat(-b, b; -d, d) = b mat(-1, 1; 0, 0)+ d mat(0, 0; -1, 1)$

  $W^perp = "span"{mat(-1, 1; 0, 0), mat(0, 0; -1, 1)}$

#thm[*Shortest Distance Theorem* \ 

Let $W subset.eq V$ is a subspace. Let $vec(v) in V$ have orghogonal decomposition 
$ vec(v) &= vec(p)+vec(r) \

  vec(p) &= "proj"_(W) vec(v) \

  vec(r) &= "proj"_(W^perp) vec(v)
$

Then $vec(p)$ is the vector in $W$ closest to $vec(v)$, i.e. $ "dist"(vec(v), vec(p)) &<= "dist"(vec(v), vec(w)) space forall vec(w) in W \

||vec(v)-vec(p)|| &<= ||vec(v)-vec(w)||
$]


#proof[
Shortest Distance Theorem

Consider a right triangle and let $v, p, w$ be vertices. 

Then $||v-w||^2 = ||v-p+p-w||^2 = ||(v-p)+ (p-w)||$ where $(v-p) perp (p-w)$

$==> ||v-p||^2 + ||p-w||^2 >= ||v-p||^2$
]
#align(right)[$square$]

\
*Polynomial Approximation*

Example:

Let $V = {"be continuous functions" f:[-1, 1]->RR^2}$

$W = "span"{1, x, x^2, ..., x^N}$

Let $f in V$. Find a polynomial of degree at most $N$ that best approximates $f$.

We want $p in W$ that is closest to $f = e^x$ and $p = "proj"_W_N f$

We need to choose the inner product: $ip(f, g) = integral_(-1)^1 f g $

We need an orthobasis, that is apply Gram-Schmidt to $W :{1, x, x^2, ..., x^N} ==> {1, x, 3x^2-1, ...}$

$"proj"_(W_1) (e^x) = "proj"_(w_0) e^x + "proj"_(w_1) e^x  approx 1.175+1.104x$

$"proj"_(W_2) (e^x) = "proj"_(w_0) e^x + "proj"_(w_1) e^x + "proj"_(w_2) e^x approx 0.996+1.104x+0.537x^2$

$"proj"_(W_3) (e^x) = "proj"_(w_0) e^x + "proj"_(w_1) e^x + "proj"_(w_2) e^x+ "proj"_(w_3) e^x e^x approx 0.996+0.998x+0.537x^2+0.176x^3$



*TEST2 CUTOFF*


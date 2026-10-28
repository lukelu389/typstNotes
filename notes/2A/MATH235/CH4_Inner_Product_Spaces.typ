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


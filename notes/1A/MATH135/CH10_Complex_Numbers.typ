#import "../../../preamble.typ": *
#import "@preview/peano:0.2.1": *


#let Title = "CH 10 - Complex Numbers"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== Standard Form
\
#info[*Definition of Complex Numbers*\

A *complex number* $z$ in *standard form* is an expression of the form $z = x + y i$ \
where $x, y in RR$. 

The real number $x$ is called the *real part* of $z$, and is written $Re(x)$. 

The real number $y$ is called the *imaginary part* of $z$, and is written $Im(z)$.

 The set of complex numbers is $ CC = {x+y i: x, y in RR} $

The complex number $z = x + y i$ and $w = u + v i space$ are equal $(z=w)$ if and only if $x = u, y = v$

A complex number $z$ is said to be purely real if $y=0$ (i.e. $1 = 1+0i$)

A complex number $z$ is said to be purely imaginary if $x=0$ (i.e. $i = 0 + 1i$)

0 is purely real and purely imaginary (i.e. $0 = 0 + 0i$)
]


#info[*Complex Arithmetics*\
Let $z = a + b i$ and $ w = c + d i$ be complex numbers.
Then the \

Addition is defined as $ z + w = (a+c) + (b+d)i $
Multiplication is defined as $ z w = (a c - b d) + (a d + b c)i $
]

Examples:\

Let $z = 2 + 3 i, w = -1 + 7 i$

1. $z + w = (2-1) + (3+7)i = 1 + 10i$

2. $z w = (-2-21) + (14-3)i = -23 + 1 1 i$

3. $i^2 = i i = (0 + 1i) dot (0+1i) = (0-1) + (0+0)i = -1$
$therefore i^2 = -1 $

From (3), we can derive a easier way of multiplication 
#tip[Multiplication trick\

$ (a + b i) (c+d i) = a c + a d i + b c i + b d i^2 = (a c - b d) + (a d + b c)i $
]

Properties of Complex Arithmetics

1. $z + 0 = 0 + z = z$
2. $z 0 = 0 z = 0$
3. $z + (-1)z = (-1)z + z = 0$
4. $z 1 = 1z = z$



#info[*Multiplicative Inverse*\

For all complex numbers $z$, the multiplicative inverse of $z$ exists if and only if $z !=0$. Moreover, for $a + b i != 0$, the multiplicative inverse is unique given by $ z^(-1) = frac(a, a^2+b^2) - frac(b, a^2+b^2)i = frac(a-b i, a^2 + b^2) $

]

Examples:\


1. $frac((1-2i) - (3+4i), (5-6i)) = [(1-2i)-(3+4i)] dot (5-6i)^(-1) = (-2-6i) dot 1/(25+36) dot (5+6i) $\

$= 1/61 dot (-10 -30i -12i +36) = (26-42i)/61 = 26/61 - 42/61 i$ \


2. $i^2025 = (i^4)^506 dot i = (-1)^506 dot i = i$



#tip[*$i^n$ Solutions*\

$i^n  = cases(1 \, n equiv 0 space (mod 4), i \, n equiv 1 space (mod 4), -1 \, n equiv 2 space (mod 4), -i \, n equiv 3 space (mod 4))$
]

#info[*Properties of Complex Arithmetics*\

In complex arithmetic, the following properties are vlaid for $u, v, z in CC$

1. Associativity of addition: $(u + v) + z = u + (v + z)$
2. Communtativity of addition: $u+v = v+u$
3. Additive identity: $0 = 0+0i$ has the property that $z+0=z$
4. Additive inverses: If $ z= a+b i$, then there exists an additive inverse of $z$, written $-z$, with the property that $z + (-z) = 0$. The additive inverse of $z = a+b i$ is $-z = -a-b i$
5. Associativity of multiplication: $(u v) z = u (v z)$
6. Communtativity of multiplication: $ u v = v u$
7. Multiplicative identity: $ 1= 1+0i$ has property that $z 1 = z$
8. Multiplicative inverses: If $z = a + b i !=0$, then there exists a multiplicative inverse of $z$, written $z^(-1)$, with the property that $z z^(-1) = 1$. The multiplicative inverse of $z = a + b i != 0$ is $z^(-1) = frac(a-b i, a^2+b^2)$
9. Distributivity: $z (u+v) = z u + z v$
]
\
\
Example:\

Proof of PCA Part 5: $(u v) z = u (v z) space forall u, v, z in CC$

Let $u = a+b i, v = c+d i, z = x+y i$ where $a, b, c, d, x, y in RR$ so that $u, v, z in CC$\

$(u v) z = [(a+b i)(c+d i)] (x+y i) = (a c - b d + (a d + b c)i)(x + y i) =$\

$= ((a c - b d)x - (a d + b c)y) + ((a c - b d)y + (a d + b c)x)i $

$= (a x c - b d x - a d y - b c y) + (a c y - b d y + a d x + b c x)i$

$u(v z) = (a+b i)[(c+d i)(x + y i)] = (a+b i)(c x - d y) + (c y + d x)i$\

$ = (a(c x- d y) - b(c y + d x)) + (a (c y + d x) + b (c x - d y))i$\

$= (a c x - a d y - b c y - b d x) + (a c y + a d x + b c x - b d y) i$

Thus $(u v) z = u(v z) = (a x c - b d x - a d y - b c y) + (a c y - b d y + a d x + b c x)i $

#align(right)[$square$]

#info[Other Arithmetic of Complex Numbers\
For $z in CC$


1. $z^0 = 1$
2. $z^1 = z$
3. $z^(k+1) = z^k z space forall k in NN$
4. $(z^n)^m = z^(n m)$ and $z^n z^m = z^(n+m) space forall n, m in NN union {0}$

For $n in.not NN union {0}$ will be discussed in later lectures
]

Examples:\

Find a real solution to $6z^3 + (1+3 sqrt(2)i)z^2 - (11-2sqrt(2))i - 6 = 0$

Let $z = x in RR$, that is $ z = x + 0i$

$==> 6x^3 + (1+3sqrt(2)i)x^2 - (11-sqrt(2)i)x - 6 = 0$

$==> (6x^3+x^2-11x-6) + (3sqrt(2)x^2 + 2 sqrt(2)x)i = 0 + 0i$\

$==> (6x^3+x^2-11x-6) = 0$ and $3sqrt(2)x^2 + 2 sqrt(2)x = 0$

$x = 0$ or $x = -2/3$ for the imaginary part.

However, $x=0$ does not satisfy the real part.

$therefore x = -2/3 ==> z = -2/3+0i$

== Conjugate and Modulus
\
#info[*Complex Conjugate*\
The complex *conjugate* of a complext number $z=x+y i$ written $overline(z)$ is the complex number $ overline(z) = x - y i $
]

#info[*Properties of Conjugate*\

For the complex conjugate, the following properties hold $forall z, w in CC$

1. $overline((overline(z))) = z$

2. $overline(z+w) = overline(z)+overline(w)$

3. $z+overline(z) = 2 Re(z)$ and $z-overline(z) = 2 Im(z)i$

4. $overline(z w) = overline(z) dot overline(w)$

5. If $z!=0, overline((z^(-1))) = (overline(z))^(-1)$

6. If $w!=0, overline((z/w)) = overline(z)/overline(w)$
]

#proof[
Part 3 \

$z+overline(z) = 2 Re(z)$ and $z-overline(z) = 2 Im(z)i$

Let $z = x+y i $

$ z + overline(z) = (x+y i) + (x - y i) = 2 x + 0 i = 2 Re(z)$

$z - overline(z) = (x+y i) - (x - y i) = 0 x + 2 i = 2 Im(z)$

Part 4 \

$overline(z w) = overline(z) dot overline(w)$

Let $z = x + y i, w = a + b i$\

$overline(z w) = overline((x+y i)(a+b i)) = overline((x a-y b) +(x b + y a) i) = (x a-y b)  - (x b + y a) i$

$overline(z) overline(w) = overline(x+y i) overline(a + b i) = (x-y i) (a- b i) = (x a - (-y)(-b)) + (x(-b)+(-y)a) i \
=  (x a-y b)  - (x b + y a) i$

Thus $overline(z w) = overline(z) dot overline(w)$

]
#align(right)[$square$]
Examples:

1. Prove $z in RR <==> z = overline(z)$

  Let $z = x+y i space forall x, y in RR$ 

  $==>$ 

  Suppose $z in RR$, then $y = 0$, so that $z = x+ 0 i = x in RR$. 

  Then $overline(z) = x - 0i = x$

  $therefore z = overline(z)$

  $<==$

  Suppose $z = overline(z)$, then $x+y i = x - y i$

  This implies $x = x, y = -y$. Thus $y = 0$

  $therefore z = x + 0i = x in RR$

2. Prove that $z$ is purely imaginary $<==> z = - overline(z)$

3. Solve $z^2 = i overline(z)$\
  Let $z = x + y i$. Then $z^2 = (x+y i)^2 = x^2 - y^2 +2x y i$

  and $i overline(z) = i (x-y i)= i x - i^2 y = x i + y$

  Then the equation becomes $x^2 - y^2 +2x y i = x i+y$

  $==> cases(x^2 - y^2 = y, 2x y  = x ) ==> x = 0 and  y = 1/2 ==> cases(x^2 - 1/4 = 1/2, -y^2 = 0) ==> z = {0, -i, plus.minus (sqrt(3)/2) + 1/2 i}$

\

== Modulus of Complex Numbers
\
#info[*Modulus of Complex Number*\

The *modulus* of the complex number $z = x+y i$, written $|z|$, is the non-negative real number $ |z| = sqrt(x^2 + y^2) $
]

#info[*Properties of Modulus*\

For the modulus, the following properties $forall z, w in CC$:

1. $|z| = 0 <==> z = 0$

2. $|overline(z)| = |z|$

3. $overline(z) z = |z|^2$

4. $|z w| = |z||w|$

5. If $z!=0$ then $|z^(-1)| = |z|^(-1)$

Side note: for $z!=0, z^(-1) = overline(z)/ (|z|^2)$\

6. If $w!=0, z/w = z dot overline(w)/(|w|^2)$

7. $|z+w|^2 + |z-w|^2 = 2(|z|^2 +|w|^2)$

8. $overline(sum z_i) = sum overline((z_i))$

9. $overline(product z_i) = product overline((z_i))$

10. $|product z_i| = product (|z_i|)$


]

#proof[
Part 3\

$overline(z) z = |z|^2$\

Let $z = a+b i, forall a, b in RR$

then $overline(z)z = (a-b i)(a+ b i)= (a^2 -(-b)(b)) + (a b + (-b)a)i $

$= a^2+b^2 +0i = (sqrt(a^2+b^2))^2 = |z|^2$
]

#align(right)[$square$]

== The Complex Plane and Polar Form
\
=== Complex Plane

#tip[*Geometric Interpretation and Graphical Properties*\

- $z $ and $ overline(z)$ are reflection of each other over real axis

- Modulus is the distance from the point $z$ to origin

- For addition, it is similar to vector addition that is the parallelogram rule, $z + w $

- For subtraction, consider $z+w - w = z$ and the rest is same for addition
]

#info[*Triangle Inequality*\
For all $z , w in CC$, we have
$ |z+w| <= |z| + |w| $

Note that $|z|$ is the modulus of z, not absolute value
]

#proof[
Let $z = x + y i, w = u + v i$, where $x, y, u, v in RR$
\

$|z+w| = |(x+u)+(y + v)i| = sqrt((x+u)^2 +(y+v)^2)$\


$= sqrt((x-(-u))^2 +(y- (-v))^2) \
\

 ("The Euclidean distance formulat between" (x, y) "and" (-u, -v))$ 

Consider thr triangle ABC constructed from points

$A: (0, 0); space B(x, y) = (z = x + y i); space C:(-u, -v) = (-w = -u - v i)$

Let $l_(A B) = "length of side AB", l_(B C) "and" l_(A C)$ have the similar constructed

From geometric perspective, $l_(B C)<= l_(A B) + l_(A C)$

Note that $l_(A B) = sqrt(x^2 + y^2) = |z|, l_(A C) = sqrt((-u)^2 + (-v)^2) = |w| $

$ l_(B C) = sqrt((x-(-u))^2 + (y-(-v))^2) = |z+w|$

Therefore $|z+w|<= |z|+|w|$

]#align(right)[$square$]

Exercise: \

Let $z!= plus.minus i$. Prove that $z/(1+z^2)$ is real $<==> z in RR$ or $|z=1|$
\


=== Polar Form

#info[*Polar Form*\

A *polar form* of a complex number $z$ is denoted

$ z = r(cos theta +i sin theta) $

where $r >=0$, being the modulus of $z$ and angle $theta in RR$ be an *argument* of $z$

- $theta$ is not unique unless given restriction of $theta in [0, 2pi)$

Notice that in standard form $z = x + y i$

- $x = r cos theta$

- $y = r sin theta$

- $r = |z| = sqrt(x^2+y^2)$

- $theta = arctan(y/x)$

- $overline(z) = r (cos (-theta) + i sin (-theta))$
]

Examples:\

Convert polar form to standard form

1. $z = 3 (cos pi/4 + i sin pi/4) = (3sqrt(2))/2 + (3sqrt(2))/2i$

2. $z = cos 15/6 pi + i sin 15/6 pi = 0+1i = i$

Convert from standard form to polar form

3. $z = sqrt(6) + sqrt(2)i$

  $r = sqrt((sqrt(6))^2 +(sqrt(2))^2) = 2sqrt(2)$

  $theta = arctan(1/sqrt(3)) = pi/6$ is one possibility as the angle is not unique

  $z = 2sqrt(2) (cos pi/6 + i sin pi/6)$

4. $z = -3 sqrt(2)+ 3sqrt(6)i = 6 sqrt(2)(cos 3/2 pi + i sin 3/2pi)$
\
#info[*Polar Multiplication for $CC$*\
For all complex numbers $z_1 = r_1 (cos theta_1 + i sin theta_1), z_2 = r_2 (cos theta_2 + i sin theta_2)$, then their product is $ z_1 z_2 = r_1 r_2 (cos theta (theta_1 + theta_2) + i sin (theta_1 + theta_2)) $
]

#proof[
Let $z_1 = r_1 (cos theta_1 + i sin theta_1), z_2 = r_2 (cos theta_2 + i sin theta_2) in CC$

$z_1 z_2  = r_1 (cos theta_1 + i sin theta_1) (cos theta_2 + i sin theta_2)$

$= r_1 r_2 (cos theta_1 cos theta_2 - sin theta_1 sin theta+2) + i(cos theta_1 sin theta_2 + sin theta_1 cos theta_2)$

$= r_1 r_2 (cos theta (theta_1 + theta_2) + i sin (theta_1 + theta_2))$
]
#align(right)[$square$]

Examples:\

1. Compute $(i+1) i = sqrt(2) (cos pi/4 + i sin pi/4) dot (cos pi/2 + i sin pi/2) =^("By PM"CC) sqrt(2) (cos (3pi)/4 i sin (3pi)/4) $

 $= sqrt(2)(-1/(sqrt(2))+i/sqrt(2)) = -1 + i$

2. Find $(sqrt(6)+sqrt(2)i) (-3sqrt(2)+3sqrt(6)i)$

  $ =2sqrt(2) (cos pi/6 + i sin pi/6) dot 6sqrt(2)(cos (2pi)/3 + i sin (2pi)/3) = 24 (cos (5pi)/6 +i sin (5pi)/6) = 24(-sqrt(3)/2 + i/2)$
  
  $ = -12 sqrt(3)+12 i$
== De Moivre's Theorem

#info[*De Moivre's Theorem (DMT)*\
$forall theta, n in RR$, $ (cos theta + i sin theta)^n = cos n theta + i sin n theta $
]

#info[*Corollary of DMT*\
For all complex number $z = r (cos theta + i sin theta)$ and integer $n$, except $|z|=r=0$ and $n<0$ we have $ z^n = r^n (cos n theta + i sin n theta) $
]

Examples:\

1. $(sqrt(3)-i)^10 = [2 (cos -pi/6 + i sin -pi/6)]^10 = 1024 (cos -(10pi)/6 + i sin -(10pi)/6) = 512 + 512 sqrt(3
)i$


2. Prove that $cos 4 theta = 8 cos^4 theta - 8 cos^2 theta +1$ (Hint: Consider $(cos theta + i sin theta)^4$ expand normally and apply DMT then compare real parts)

3. Prove that $forall n in ZZ$ if $w in CC, |w|=1$ and $theta$ is an argument of $w$, then $-i/2 (w^n-w^(-n) = sin (n theta))$
#info[*Additional Information*\

For notation, we write $"cis"(theta) = cos theta + i sin theta$ notation wise

Also, $"cis"(theta) = e^(i theta)$ that is having the similar properties of exponentials

$e^(i pi) = "cis"(pi)=-1 ==> e^(i pi) + 1=0$ which is the Euler's Formula
]

Examples:

1. How many square roots does 64 has $in CC$?

  ANS: Write $z = "cis"(theta), 64 = 64(1+0i) = 64(cos 0 +i sin 0)$. 
  
  Then $z^2 = r^2 "cis"(2theta) ==> 64 "cis"(0)$ thus $r^2= 64$ and $2 theta = 0 + 2pi k, space forall k in ZZ$.

  $r = 8$ since $r>=0$ being the modulus. $theta = pi k ==>$ 
  only two unique positions in circle

  $therefore r = 8, theta = 0, pi$ we get two solution. that is $z_1 = 8 "cis"(0) = 8, z_2 = 8 "cis"(pi) = -8$

\
\
\
2. How many cube roots does 64 has $in CC$
  
  ANS: $z^3 = 64 ==> r^3 "cis"(3 theta), r^3 = 64, 3 theta = 0 + 2pi k, space forall k in ZZ$

  $==> r =4, theta = (2pi)/3 k = 0, plus.minus (2pi)/3, plus.minus (4pi)/3, plus.minus 2pi$

  Three unique positions: $theta = 0, (2pi)/3, (4pi)/3$

  $therefore z_1 = 4 "cis"(0) = 4, z_2 = 4 "cis"((2pi)/3) = -2 + 2sqrt(3)i, z_3 = 4 "cis"((4pi)/3) = -2 - 2sqrt(3)i$

#info[*Complex $n$-th Root Theorem*\

For a complex number $a$ and positive integer $n$, the complex numbers $z$ that satisfy the equation $ z^n = a $ are called the *complex $n$th root* of $a$


For all complex numbers $a = r (cos theta + i sin theta)$ and natural numbers $n$, the complex $n$-th root of $a$ are given by $ root(n, r) (cos (frac(theta+2k pi, n))+i sin (frac(theta+2k pi, n))), quad k=0, 1, 2, 3, ..., n - 1 $
]

Examples:

1. Find all $z in CC$ that satisfy $z^4 = -27 overline(z)$
  
  Let $z = r "cis"(theta)$ then $overline(z) = r (cos theta -i sin theta) =r(cos(-theta) + i sin(-theta))=r "cis"(-theta)$

  $r^4 "cis"(4theta) = -27 dot r "cis"(-theta)$

  $r = 0 ==> z_1 = 0 "cis"0 = 0$

  for $z!= 0, r!=0 ==> r^3 "cis"(4theta) = - 27 "cis"(-theta) ==> r^3 "cis"(5theta) = 27 "cis"(0) = 27 "cis"(pi) $

  $r = 3, 5theta = pi + 2pi k, space forall k in ZZ$

  $theta = (pi+2pi k)/5 = pi/5, (3pi)/5, pi, (7pi)/5, (9pi)/5$ are unique poisitions on the circle

  $z_2 = 3 "cis"(pi/5), z_3 = 3 "cis"((3pi)/5), z_4 = 3 "cis"(pi),z_5  3 "cis"((7pi)/5), z_6 = 3 "cis"((9pi)/5)$


2. $z^8 = 1$
  
  ANS: $z in {"cis"((k pi)/4), forall k in {0, 1, 2, 3, 4, 5, 6, 7}}$
  

#info[*Quadratic Formula for $CC$*\
For all complex numbers $a, b, c$ with $a!=0$, the solution to $a z^2+ b z + c = 0$ are given by $ z = frac(-b plus.minus w, 2a) $ where $w$ is a solution to $w^2 = b^2 -4 a c$
]

Examples:\

1. $z^2 - 2z + 6 - 12i = 0$\
  ANS: $z = 3+3i, -1-3i$

#info[*Polynomials*\

An expression in form $ a_n x^n + a_(n-1) x^(n-1) + ... + a_2 x^2 + a_1 x + a_0 $

Where $a_i in RR ("or" CC) space forall i in NN union {0} $ 

We denote $RR[x] "or" CC[x]$ be a Polynomials.

The polynomial where $x^n$ has coefficient non-zero, then we say the degree of polynomial is $n$.

Zero polynomial has all coefficients equal to zero with degree undefined.

A constant polynomial is either the zero polynomial or polynomial of degree zero.

Two polynomials are equal if and only if all coefficients are equal
]

#info[*Arithmetic*\

Let $f(x) = sum_(i=0) ^(m) a_i x^i$ and $g(x) = sum_(j=0) ^(n) b_j x^j$

- Addition $ f(x)+g(x) = sum_(k=0) ^(max(m, n)) (a_k + b_k) x^k $

- Multiplication$ f(x)g(x) = sum_(l=0) ^(m+n) (a_l b_(m+n-l)) x^l $
]

Example:

Consider $f(x)=i x^3 + 4x^2- i x+6$ and $g(x) = x-3i$, prove that $g(x)$ is a factor of $f(x)$ and find the complex polynomial $h(x)$ s.t. $f(x)=g(x)h(x)$\

ANS:  $h(x)=(i x^3 + 4x^2 - i x+6) / (x-3i) = i x^2 + x + 2i$


== Roots of Polynomial / Factoring Polynomial

#info[*Factoring Theorem*\

For all polynomial $f(x) in RR[x] ( "or "CC[x])$ and all $c in RR ("or" CC)$, the linear polynomial $x-c$ is a factor of polynomial $f(x)$ if and only if $f(c)=0$ (equivalently, $c$ is a root of the polynomial $f(x)$)

]

Examples:\

1. Determine if $x=1$ is a root of $f(x)=x^3-2x^2+4x-5$

  $f(1) = -2 != 0 ==>$ not a root

2. Proof that there does not exist a real linear factor of $f(x)=x^8+x^3+1$

  Consider interval $x in [0, oo), (-oo, -1], (-1, 0)$ separately

  - $[0, oo): f(0) = 1 >0$ then $f(x) >= 1 space forall x in [0, oo)$

  - $(-oo, -1]: f(x)= x^3 (x^5+1)+1 ==> (<= -1)(<=0) + 1 ==> (>=0) + 1 ==> >= 0$

  - $(-1, 0):$ \
    Notice that $-1< x^3 < 1 space forall x in (-1, 0)$ and $x^8 > 0 space forall x in (-1, 0)$.  \
    So that $x^3 + 1 > 0 space forall x in (-1, 0)$ thus $f(x) >= 0 space forall x in (-1, 0)$


#info[*FUndamental Theorem of Algebra*\
For all complex polynomial $f(z)$ with degree greater than 1, there exists a $z_0 in CC$ s.t. $f(z_0) = 0$
]

#info[*Complex Polynomial of Degree $n$ have $n$ roots*\
For all integers $n>=1$ and all complex polynomials $f(z)$ of degree $n$, there exist complex numbers $c!=0$ and $c_1, c_2, c_3, ..., c_n$ s.t. $ f(z)= c(z-c_1)(z-c_2)...(z-c_n) $

Moreover, the roots of $f(z)$ are $c_1, c_2, c_3, ..., c_n$

For all integers $n>=$ and all real or complex polynomials $f(x)$ degree $n$, the polynoial f(x) has at most $n$ roots
]

Examples:


1. 
  - $x^2+1$ is irreducible in $RR[x]$,
  - Can be reduced in $CC[x]: (x-i)(x+i)$

2. 
  - $x^4+2x^2+1$ is reducible but has no real roots
  - $x^4+2x^2+1$  is reducible and has real roots: $(x-i)^2(x+i)^2$

#info[*Conjugate Roots Theorem*\
 For all olynomials $f(x)$ with real coefficient, if $c in CC$ is a root of $f(x)$, then $overline(c) in CC$ is a root of $f(x)$
 ]

#proof[
Let $f(x)$ be a polynomail with real coefficients.

Suppose $c in CC$ is a root of $f(x)$.

We write $f(x)=a_n x^n + a_(n-1)x^(n-1)+...+a_2x^2+a_1x+a_0$ where $a_n, a_(n-1), ..., a_1,a_0 in RR$.

Since $c$ is a root of $f(x)==>f(c)=0$

$a_n c^n +a_(n-1)c^(n-1)+...+a_2c^2+a_1c+a_0 = 0$

$overline(a_n c^n +a_(n-1)c^(n-1)+...+a_2c^2+a_1c+a_0) = overline(0)$

$overline(a_n c^n) +overline(a_(n-1)c^(n-1))+...+overline(a_2c^2)+overline(a_1c)+overline(a_0) = 0$

$a_n overline(c)^n +a_(n-1)overline(c)^(n-1)+...+a_2overline(c)^2+a_1overline(c)+a_0 = 0$

Therefore $overline(c)$ is a root of $f(x)$
]
\

Example:

Express $x^4-5x^3+16x^2-9x-13$ as a product of irreducible factors given $2-3i$ is a root \
  
  By CJRT, $2+3i$ is also a root, so $(x-2-3i), (x-2+3i)$ are factors of this polynomial

  $(x-2-3i)(x-2+3i) = x^2-4x+13$ is a factor of the polynomial

  $frac(x^4-5x^3+16x^2-9x-13 ,x^2-4x+13) = x^2-x-1 = (x-(frac(1+sqrt(5), 2)))(x-frac(1-sqrt(5), 2))$

  $(x-2-3i)(x-2+3i)(x-(frac(1+sqrt(5), 2)))(x-frac(1-sqrt(5), 2)) in CC[x]$ \

  $ = (x^2-4x+13) (x-frac(1+sqrt(5), 2))(x-frac(1-sqrt(5), 2)) in RR[x]$
  

#info[Lemma\
For all complex number $c, (x-c)(x-overline(c)) in RR[x]$
]

#info[*Real Factors or Real Polynomials*\
For all real polynomial $f(x)$ of positive degree, $f(x)$ can be written as a product of real linear and real quadratic factors
]

Example:

One root of the polynomial $f(x)=3x^5-14x^4+14x^3+32x^2-69x+30$ is $2+i)$. Write $f(x)$ as a product of irreducible polynomials in $RR[x]$ and $CC[x]$

Given $2+i$ is a root $==> (x-(2+i))(x-(2-i))=x^2-4x+5$ is a factor. 

$f(x)=(x^2-4x+5)(3x^3-2x^2-9x+6)=(x^2-4x+5)(3x-2)(x-sqrt(3))(x+sqrt(3)) in RR[x]$

$f(x)=(x-2-i)(x-2+i)(3x-2)(x-sqrt(3))(x+sqrt(3)) in CC[x]$

#import "../../preamble.typ": *

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

#info[Other Arithemtic of Complex Numbers\
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
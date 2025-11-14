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

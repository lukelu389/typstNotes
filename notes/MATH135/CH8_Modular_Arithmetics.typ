#import "../../preamble.typ": *

#let Title = "CH 8 - Modular Arithmetics"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== Basic Modular Arithmetics
\
#info[*Congruence and Modular Expression*\
Let $m$ be a fixed positive integer. For integers $a$ and $b$, we say that $a$ is *congruent* to $b$ *modulo* $m$, and write $ a equiv b space (mod m) $ if and only if $m divides (a-b).$ For integers $a$ and $b$ such that $m divides.not (a-b)$, we write $a equiv.not b space (mod m)$. We refer to $equiv$ as *congruence*, and $m$ as its *modulus*. \
\
$ a equiv b space (mod m) <==> m divides (a-b) <==> exists k in ZZ, a-b = k m <==> exists k in ZZ, a = k m + b $
]

Examples:\

1. $6 equiv 18 space (mod 12): 6-18 = -12, 12 divides -12$\
2. $73 equiv 1 space (mod 2): 13 - 1 = 72, 2 divides 72$\
3. $5 equiv 1 space (mod 4): 5-1 = 4, 4 divides 4$
4. $24 equiv 0 space (mod 24): 24-0 = 24, 24 divides 24$
5. $-5 equiv 7 space (mod 12): -5-7 = -12, 12 divides -12$

\

#info[*Equality Properties*\
1. Reflexivity: $forall a in ZZ, a = a$
2. Symmetry: $forall a, b in ZZ, a = b ==> b = a$
3. Transitivity: $forall a, b, c in ZZ,  a = b and b = c ==> a = c$
]

#info[*Congruence Relations*\
$forall a, b, c in ZZ$
1. $a equiv a space (mod m)$
2. $a equiv b space (mod m) ==> b equiv a space (mod m)$
3. $a equiv b space (mod m) and b equiv c space (mod m) ==> a equiv c space (mod m)$
]

#info[*Modular Arithmetics*\
$forall a_1, a_2, b_1, b_2 in ZZ$ and $ forall n in NN$, if $a_1 equiv b_1 space (mod m)$ and $ a_2 equiv b_2 space (mod m)$ then 
1. $a_1 + a_2 equiv b_1 + b_2 space (mod m)$
2. $a_1 - a_2 equiv b_1 - b_2 space (mod m)$
3. $a_1 a_2 equiv b_1 b_2 space (mod m)$
4. $a_1 + a_2 + ... + a_n equiv b_1 + b_2 + ... + b_n space (mod m)$
5. $a_i equiv b_i ==> a_1  a_2  ...  a_n equiv b_1  b_2  ...  b_n space (mod m)$
6. $forall a, b in ZZ$ if $a equiv b space (mod m)$ then $a^n equiv b^n space (mod m)$
7. $forall a, b, c in ZZ$, if $a c equiv b c space (mod m)$ and $gcd(c, m) = 1$, then $a equiv b space (mod m)$
]
 \
 \
 
#proof[
$forall a_1, a_2, b_1, b_2 in ZZ$ where $a_1 equiv b_1 space (mod m)$ and$ a_2 equiv b_2 space (mod m)$
1. $a_1 + a_2 - b_1 - b_2 = a_1 - b_1 + a_2 - b_2 space (mod m)$.\

 Since $a_1 equiv b_1 space (mod m)$ and $ a_2 equiv b_2$, therefore $m divides (a_1 - b_1)$ and $m divides (a_2 - b_2)$.\

 By DIC $m divides (a_1-b_1 + a_2 - b_2) equiv m divides (a_1+a_2 - (b_1+b_2))$.\

  By definition of Congruence, $a_1 + a_2 equiv b_1 + b_2 space (mod m)$

2. $a_1 - a_2 - b_1 + b_2 = a_1 - b_1 + a_2 - b_2 space (mod m)$.\

 Since $a_1 equiv b_1 space (mod m)$ and $ a_2 equiv b_2 space (mod m)$, therefore $m divides (a_1 - b_1)$ and $m divides (a_2 - b_2)$.\

 By DIC $m divides (a_1-b_1 - a_2 + b_2) equiv m divides (a_1- a_2 - (b_1-b_2))$.\

  By definition of Congruence, $a_1 - a_2 equiv b_1 - b_2 space (mod m)$

3. Since $a_1 equiv b_1 space (mod m)$ and $ a_2 equiv b_2 space (mod m)$, \

 therefore $exists k, l in ZZ$ s.t. $a_1 = k m + b_1; a_2 = l m + b_2$. \

 $a_1 b_1 - b_1 b_2 = (k m + b_1) (l m + b^2) - b_1 b_2 = k l m^2 + k m b_2 + b_1 l m + b_1 l m + b_1 b_2 $\

 $(k l m + k b_2 + b_1 l) dot m ==> m divides (k l m + k b_2 + b_1 l)$. \

 Hence, $a_1 a_2 equiv b_1 b_2 space (mod m)$
]

#align(right)[$square$]

Examples:\

1. Is $5^9 + 62^2000 - 14$ divisible by 7\

  $5^9 + 62^2000 - 14 equiv 0 space (mod 7)$\

  $5^9 + 62^2000 equiv 0 space (mod 7)$ since $14 equiv 0 space (mod 7)$\

  $(5^2)^4 dot 5 + (-1)^2000 equiv 0 space (mod 7)$ since $62 equiv -1 space (mod 7)$ because $ 62- (-1) = 63, 7 divides 63$\

  $4^4 dot 5 +1 equiv 0 space (mod 7)$ since $25 equiv 4 space (mod 7)$\

  $2^2 dot 5 + 1 equiv 0 space (mod 7)$ since $7 divides (16 - 2)$ \

  $21 equiv 0 space (mod 7)$ since $7 divides 21$\

  $therefore 5^9 + 62^2000 -14 equiv 0 space (mod 7)$ since $7 divides 5^9 + 62^2000 -14$, meaning, $5^9 + 62^2000 -14$ is divisible by 7.

2. Illustration of Congruence Divide\
  $3 equiv 27 space (mod 6)$\
  $3 dot 1 equiv 3 dot 9 space (mod 6), 1 equiv.not 9 space (mod 6)$ since $gcd(3, 6)!= 1$\
\

== Congruence and Remaidners
\
#info[*Congruent Iff Same Remainder*\

$forall a, b in ZZ, a equiv b space (mod m)$ if and only if $a$ and $b$ have the same remainder when divided by $m$
]

#info[*Congruent to Remainder*\
$forall a, b in ZZ$ with $0<= b < m, a equiv b space (mod m)$ if and only if $a$ has a remainder $b$ when divided by $m$
]

Examples:\

1. What is the remaidner when $77^100 dot 999 - 6^83$ divided by 4?\
  $77 equiv 1 space (mod 4)$\
  $999 equiv -1 space (mod 4)$\
  $6 equiv 2 space (mod 4)$\
  $equiv 1^100 dot -1 -2^83 space (mod 7)$\
  $equiv -1 -2^82 dot 2 equiv -1-2 (4)^41 equiv -1-2(0) equiv -1 space (mod 4)$\

  By CTR $3 equiv -1 space (mod 4)$, the remainder is 3

  #tip[*Divisibility by 3*\
  For all non-negative integers $a$, $a$ is divisible by 3 if and only if the sum of the digits in the decimal representation of $a$ is divisible by 3
  ]
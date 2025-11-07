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

#info[*Basic Modular Operations*\
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

#proof[
Let $a$ be non-negative integer and expressed as \

$a = d_k 10^k + d_(k-1)10^(d-1)+...+d_1 10 + d_0$ where $0<= d_i<=9$ are the digit $forall i in NN union {0}$

Notice $10 equiv 1 space (mod 3)$\

$a equiv d_k 1^k + d_(k-1)1^(d-1)+...+d_1 1^1+ d_0 space (mod 3)$ \

$a equiv sum_(i=0)^k d_i space (mod 3)$

 Assume $a$ is divisible by 3, then $3 divides (a-0) <==>  a equiv 0 space (mod 3)$.\

Since $a equiv sum_(i=0)^k d_i space (mod 3) <==>^("by CER") sum_(i=0)^k d_i equiv 0 space (mod 3) space$ \


Hence $3 divides  sum_(i=0)^k d_i$
]

#align(right)[$square$]


#tip[*Divisbility by 11*\
For all non-negative integers $a$, $11 divides a$ if and only if $11 divides (S_e - S_o)$ where

- $S_e$ is the sum of all even digits of $a$ in the decimal representation

- $S_o$ is the sum of all odd digits of $a$ in the decimal representation
]
\

#tip[*Mod 7 or 13*\
7. Remove last digit $d$, subtract $2d$, repeat.
13. Remove last digit $d$, add $4d$, repeat. ]

== Linear Congruences

#info[*Definition or Linear Congruences*\
A relation of the form $ a x equiv c space (mod m) $ 
is called a *linear congruence* in the variable $x$. A solution to such linear congruence is an integer $x_0$ s.t. $ a x_0 equiv c space (mod m) $
]

#info[*Linear Congruence Theorem*\
For all integers $a, c$ where $a!=0$, the linear congruence $ a x equiv c space (mod m) $ 
has a solution if and only if $d divides c$, where $d = gcd(a, m)$. Moreover, if $x=x_0$ is one particular solution to this congruence, then the set of all solutions \is given by $ {x in ZZ: x equiv x_0 space (mod m/d)} $

or alternatively $ {x in ZZ: x equiv x_0, x_0+m/d, x_0+2m/d, ..., x_0+(d-1)m/d space (mod m)} $
]
\
\
\
Examples: \

1. $4x equiv 5 space (mod 3)$\
  $gcd(a, m) = gcd(4, 3) = 1, 1 divides 5$ \
  By LCT, there is a solution\
  $4x equiv 5 equiv 2 equiv 8 space (mod 3) ==> 4x = 8 ==> x = 2$\
  and $3 divides (8-5) $\
  By LCT, all solutions are ${x in ZZ, x equiv 2 space (mod 3)}$.


2. $4x equiv 8 space (mod 12)$\
  $gcd(a, m)= gcd(4, 12) = 4, 4 divides 8$\
  By LCT, there is a solution\
  $4x equiv 8 equiv 4(2) space (mod 12) ==> 4x = 8 ==> x = 2$\
  and $4 divides 4 divides (8-8)$\
  By LCT, all solutions are ${x in ZZ, x equiv 2 space (mod 3)}$\
  or ${x in ZZ, x equiv 2, 5, 8, 11 space (mod 12)}$

== Non-linear Congruences

#tip[Non-linear congruences do not have theorems that directly helps solving. The solutiosn
generally are by brute force]\

Examples:\

$x^2  equiv 6 space (mod 10)$\

$#table(
  columns: 11,
  align: center,
  stroke: 0.5pt,
  inset: 6pt,
  [$x space (mod 10)$], [0], [1], [2], [3], [4], [5], [6], [7], [8], [9],
  [$x^2 space (mod 10)$], [0], [1], [2], [9], [6], [5], [6], [9], [4], [1],
  )$\

  Hence $x equiv 4, 6 space (mod 10)$


== Congruence Classes and Modular Arithmetic
\

#info[*Congruence class*\

The *congruence class* modulo $m$ of the integer $a$ is the set of integers $ [a] = {x in ZZ: x equiv a space (mod m)} $
]
#info[*Modular Arithmetic*\

We define $ZZ_m$ to be the set of $m$ congruence classes $ ZZ_m = {[0], [1], [2], ..., [m-1]} $

and we define two operations on $ZZ_m$, *addition* and *multiplication*, as follows: $ [a] + [b] = [a+b)] $
$ [a][b] = [a b] $

When we apply these operations on the set $ZZ_m$, we are doing that is known as *modular arithmetic*
]
#info[*Basic Properties of Congruence Classes*\

For all $[a] in ZZ_m$

1. $[a] +[0] = [a]$\
2. $[a][0] = [0]$\
3. $[a] + [-a] = [0]$
4. $[a][1] = [a]$ 
]

Example:

Construct a table for $ZZ_4$\
  That is $ZZ_4 = {[0], [1], [2], [3]}$\

  Addition table
  #align(center)[
  #table(
    columns: 5, 
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    [$+$], [[0]], [[1]], [[2]], [[3]],
    [[0]], [[0]], [[1]], [[2]], [[3]], 
    [[1]], [[1]], [[2]], [[3]], [[0]],
    [[2]], [[2]], [[3]], [[0]], [[1]],
    [[3]], [[3]], [[0]], [[1]], [[2]])]
  Multiplicaiton table
  #align(center)[
    #table(
      columns: 5, 
      align: center,
      stroke: 0.5pt,
      inset: 6pt,
      [$*$], [[0]], [[1]], [[2]], [[3]],
      [[0]], [[0]], [[0]], [[0]], [[0]], 
      [[1]], [[0]], [[1]], [[2]], [[3]],
      [[2]], [[0]], [[2]], [[0]], [[2]],
      [[3]], [[0]], [[3]], [[2]], [[1]])]

#info[*Modular Arithmetic Theorem*\

For all integers $a$ and $c$, with $a$ non-zero, the equation $ [a][x] = [c] $ in $ZZ_m$ has a solution if and only if $d divides c$, where $d = gcd(a, m)$. Moreover, when $d divides c$, there are $d$ solutions, given by 
$ [x_0], [x_0+m/d], [x_0+2m/d], ... , [x_0+(d-1)m/d] $
where $x = [x_0]$ is one particular solution
]

#info[*Inverse to $ZZ_m$*\

Let $a$ be an integer with $1<=a<= m-1$. The element $[a]$ in $ZZ_m$ has a multiplicative inverse if and only if $gcd(a, m) = 1$. Moreover, when $gcd(a, m) = 1$, the multiplicative inverse is unique. 
]

#info[*Inverse to $ZZ_p$*\

For all prime numbers $p$ and non-zero element $[a]$ $ZZ_p$ the multiplicative inverse $[a]^-1$ exists and is unique
]

Examples:\

In $ZZ_10$, solve the following: \

 1. $[12][x]+[3]=[8] = [2][x]+[3]=[8] ==> [2][x]=[5] ==>^("by MAT") "No solutions"$

 2. $[15][x]+[7]=[12] = [5][x]=[5] ==>^("by MAT") [x]=[1]$\

    Also by MAT, there are 5 solutions: ${[1], [3], [5], [7], [9]}$

#info[*Fermat's Little Theorem*\

For all prime numbers $p$, integers $a$ not divisible by $p$ and $a!=0$, we have $ a^(p-1) equiv 1 space (mod p) $
]

#tip[Additional Corollaries\

1. By F$cal(l)$T, $[a]^(-1) = [a]^(p-2)$
2. For all prime numbers $p$ and integers $a$, we have $ a^p equiv a space (mod p) $
]

Examples:\

1. Find the remainder when $7^92$ is divided by 11\
  In $ZZ_11, [7]^10 = [1] "by F"cal(l)"T"$\

  $7^92 = (7^10)^9 7^2 = [1]^9[7^2] = [49] = [5]$\

  So the reimainder upon dividing $7^92$ by 11 is 5 

2. If $p$ is prime, $p divides.not a$ and $r equiv s space (mod (p-1))$, then $a^r equiv a^s space (mod p)$\

  Let $p$ be prime, $a in ZZ$ with $p divides.not a$\

  Suppose $r equiv s space (mod (p-1)) ==> r-s = k (p-1)$ for some $k in ZZ$\

  $r = k(p-1) + s ==> a^r equiv a^(k (p-1)+s) equiv a^s (a^(p-1))^k equiv^("by F"cal(l)"T") a^s (1)^k equiv a^s space (mod p)$

3. If $r = s + k p$, then $a^r equiv a^(s+k) space (mod p)$

#info[*Chinese Remainder Theorem*\

For all integers $a_1$ and $a_2$, and positive integers $m_1$ and $m_2$, if $gcd(m_1, m_2) = 1$, then the simultaneous linear congruences 
$ n equiv a_1 space (mod m_1) $ $ n equiv a_2 space (mod m_2) $
have a unique solution modulo $m_1 m_2$. Thus, if $n=n_0$ is one particular solution, then the solutions are given by the set of all integers $n$ such that $ n = n_0 space (mod m_1 m_2) $
]

#info[*Generalized CRT*\

For all positive integers $k$ and $m_1, m_2, ..., m_k$ and integers $a_1, a_2, ..., a_k$, if $gcd(m_i, m_j) = 1$ for all $i != j$, then the simultaneous congruences $ n equiv a_1 space (mod m_1) $ $ n equiv a_2 space (mod m_2) $ $ ... $ $ n equiv a_k space (mod m_k) $ have a unique solution modulo $m_1 m_2 ... m_k$. Thus, if $n = n_0$ is one particular solution, then the solutions are given by the set of all integers $n$ s.t. $ n equiv n_0 space (mod m_1 m_2 ... m_k) $
]

Examples:\

1. Find all $x$ s.t. $x equiv 2 space (mod 13)$ and $ x equiv 17 space (mod 29)$ \

  From $x equiv 17 space (mod 29)$, we have $x-17 = 29k$ for some $k in ZZ$. Then $x = 17+29k$\

  So, $17+29k equiv 2 space (mod 13) ==> 4 + 3k equiv 2 space (mod 13)$\

  $3k equiv 11 space (mod 13)$ because 2-4 = -2, which is congruent to 11 (mod 13)\

  $3k-11 =13j$ for some $j in ZZ, ==> 3k-13j = 11 ==> k_0 = 8, j_0 = 1$.\

  $x = 17 + 29 (8) = 249, {x in ZZ: x equiv 249 (mod 377)}$ 

2. Find all $x$ satisfying
  1. $x equiv 5 space (mod 6) $
  2. $x equiv 2 space (mod 7) $
  3. $x equiv 3 space (mod 11) $

  $x equiv 58 space (mod 77) ==> x equiv 443 space (mod 462)$
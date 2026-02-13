#import "../../../preamble.typ": *
#show: conf


#let Title = "CH 3 - Matrices and Linear Mapping"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

#info[*Matrix Definition*\

A $m times n$ *matrix* A is a rectangular array with $m$ rows and $n$ columns. We denote the entry in the $i$-th row and $j$-th column by $a_(i j)$ or $(A)_(i j)$. $ A = mat(a_11, a_12, ..., a_1j , ..., a_1n; a_21, a_22, ..., a_2j , ..., a_2n; ..., ..., ..., ..., ..., ...; a_(i 1), a_(i 2), ..., a_(i j) , ..., a_(j n);
..., ..., ..., ..., ..., ...; a_(m 1), a_(m 2), ..., a_(m j) , ..., a_(m n);) $

Two $m times n$ matrices $A, B$ are equal if $a_(i j) = b_(i j), space forall 1<=i<=m, 1<=j<=n$. 

The set of all $m times n$ matrices with real entries is denoted by $M_(m times n)(RR)$


Let $A, B in M_(m times n)(RR), c in RR$

$ (A+B)_(i j) &= (A)_(i j) + (B)_(i j) \ (c A)_(i j) &= c(A)_(i j) $
]

Example:

$mat(2, 1; 0, 5; 6, -3) + 7 mat(pi, -1; 6, 3; 0, 0) = mat(2+7pi, -6; 42, 26; 6, -3) $

#info[*Matrix Properties* \

If $A, B, C in M_(m times n) (RR), c, d in RR$ then

1. $A+B in M_(m times n)(RR)$

2. $(A+B)+C = A + (B+C)$

3. $A + B = B + A$

4. There exists a matrix $O_(m, n) in M_(m times n)(RR)$, s.t. $A+O_(m, n) = A space forall A$

5. For every $A in M_(m times n) (RR), exists (-A) in M_(m times n)(RR)$ s.t. $A + (-A) = O_(m, n)$

6. $c A = M_(m times n)(RR)$

7. $c(d A) = (c d) A$

8. $(c+d) A = c A+ d A$
9. $c(A+B) = c A + c B$
10. $1 A = A$
]

#info[*Transpose*\

The *transpose* of a $m times n$ matrix A is the $n times m$ matrix $A^T$ whose $i j$-th entry is the $j i$-th entry of A. $ (A^T)_(i j) = (A)_(j i)$

If $A, B in M_(m times n)(RR), c in RR$

1. $(A^T)^T = A$

2. $(A+B)^T = A^T+B^T$

3. $(c A)^T = c A^T$
]

#proof[
$((c A)^T)_(i j) = (c A)_(j i) = c(A)_(j i) = c(A^T)_(i j) = (c A^T)_(i j)$


#align(right)[$square$]
]

*Note*: we can regard vectors in $RR^n$ as matrices in $M_(n times 1)(RR)$

Examples:

1. $A = mat(2, 1; 0, 5; 6, -3)$

  $ A^T = mat(2, 0, 6; 1, 5, -3)$

2. $vec(x) = mat(2; 1; 3)$

  $vec(x)^T = mat(2, 1, 3)$



== Matrix Multiplications

Note that

- $A = mat(vec(a_1)^T; vec(a_2)^T; ...; vec(a_m)^T)$

- $vec(a_i) = vec(x) = mat(a_(i 1); a_(i 2); ...; 1_(i n)) dot mat(x_1; x_2; ...; x_n) = a_(i 1) x_1 + a_(i 2) x_2 + ... + a_(i n) x_ n$

Thus we can the linear system with augmented matrix $[A | vec(b)]$ as $mat(vec(a_1) dot vec(x); vec(a_2) dot vec(x); ...; vec(a_m) dot vec(x)) = mat(b_1;b_2; ...; b_m)$

#info[*Matrix-Vector Multiplication*\

1. Let $A$ be an $m times n$ matrix whose rows are denoted $vec(a)_i^T$ for $1<=i<=m$. For any $vec(x) in RR^n$

 $ A vec(x) = mat(vec(a)_1 dot vec(x); vec(a)_2 dot vec(x); ...; vec(a)_m dot vec(x)) $

2. Let $A = [vec(cal(a))_1, vec(cal(a))_2, ..., vec(cal(a))_n]$ be $m times n$ matrix , $vec(x) = mat(x_1; x_2; ...; x_n) in RR^n$

$ A vec(x) = vec(cal(a))_1 x_1 + vec(cal(a))_2 x_2 + ... + vec(cal(a))_n x_n $

Note that $vec(cal(a))_i$ refers to the $i-$th column of the matrix A

*Properties*

If $A in M_(m times n)(RR), vec(x), vec(y) in RR^n, c in RR$

1. $A (vec(x)+vec(y)) = A vec(x) + A vec(y)$
2. $A (c vec(x)) = c (A vec(x)$

]



Examples: 

1. Let $A = mat(2, 1; 5, 7; 0, -3), vec(x)= mat(3;-1)$ \

  $A vec(x) = mat(mat(2;1) dot mat(3; -1); mat(5;7) dot mat(3;-1); mat(0; -3) dot mat(3; -1)) = mat(5; 8; 3)$

2. Compute E1 in another way: \

  $3 mat(2; 5; 0) -1 mat(1; 7; -3) = mat(5; 8; 3)$

3. Let $A = mat(2, 2, 7; 1, 6, 3; 4, 0, 3; 0, 0, 1), vec(x)= mat(4; 2; -3)$ \


   $A vec(x) = mat(-9;-1; 7; -3)$

#info[*Column Extraction Theorem*\

If $vec(e)_i$ is the $i$-th standard basis and $A=[vec(a_1) space ... space vec(a_n)]$ then $ A vec(e)_i = vec(a)_i $
]

Example:

Let $A$ be the coefficient matrix of the homogeneous linear system $[A | vec(0)]$ or $A vec(x) = vec(0)$


Let $S$ be the solution set. Prove that $S$ is a subspace of $RR^n$


#proof[

1. $vec(x) = vec(0)$ is a solution to $[A | vec(0)]$, $vec(0)in S$

2. For $vec(x), vec(y) in S$, we have $A vec(x) = vec(0), A vec(y) = vec(0)$. Then $A (vec(x) + vec(y)) = A vec(x) + A vec(y) = vec(0) + vec(0) = vec(0) in S$  

3. For $vec(x) in S, c in RR$, $A (c vec(x)) = c (A vec(x)) = c vec(0) = vec(0) in S$

By subspace test, $S$ is a subspace of $RR^n$
  #align(right)[$square$]
]

#info[*Transpose - Dot Product Theorem*\
If $vec(x), vec(y) in RR^n$ $ vec(x)^T vec(y) = vec(x) dot vec(y) $

]


#info[*Matrix-Marix Multiplication*

Let $A$ be a $m times n$ matrix, $B$ be $n times p$ matrix. Then $A B$ is the $m times p$ matrix defined by $ A B = [A vec(b)_1 space A vec(b)_2 space ... space A vec(b)_p] $ where $B = [vec(b)_1 space vec(b)_2 space ... space vec(b)_p], A = [vec(a)_1 space vec(a)_2 space ... space vec(a_p)]$


Consider the $i j$th entry of $A B$, that is the entry of $A B$ in the $i$-th row and $j$-th column, that is, $(A B)_(i j)$

1. The $j$-th column of $A B$ is $A vec(b)_j$, and thus its $i$-th entry will be the $i j$-th entry of $A B$


2. If we write $A = mat(vec(a)_1^T; vec(a)_2^T;...; vec(a)_m^T)$, then $A vec(b)_j = mat(vec(a)_1^T; vec(a)_2^T;...; vec(a)_m^T) vec(b)_j = mat(vec(a)_1 dot vec(b)_1; vec(a)_2 dot vec(b)_2 ;...; vec(a)_m dot vec(b)_j)$

  Then the $i$-th entry of this vector is $(A B)_(i j) = vec(a)_i dot vec(b)_j$


*Properties*

If $A, B, C$ be matrices of the correct size so that the required products are defined, $t in RR$,

1. $A (B+C) = A B+ A C$

2. $(A+B) C = A C + B C$

3. $t (A B) = (t A)(B)= A (t B)$

4. $A (B C) = (A B C)$

5. $(A B)^T = B^T A^T$
\
Note that $A B$ is not $B A$ generally speaking. There might be special cases.
]

\
\
\
\
\
Examples:

1. Let $A = mat(2, 1; 1, -2; 3, 4), B = mat(3, 5, 6; 0, 1, -1)$

  Then $A B = mat(2, 1; 1, -2; 3, 4) mat(3, 5, 6; 0, 1, -1) = mat((2)(3)+(1)(0), (2)(5)+(1)(1), (2)(6)+(1)(-1); (1)(3)+(-2)(0), (1)(5) + (-2)(1), (1)(6)+(-2)(-1); (3)(3)+(4)(0), (3)(5)+(4)(1), (3)(5)+(4)(-1)) = mat(6, 11, 11; 3, 4, 8; 9, 19, 14)$

  $B A = mat(3, 5, 6; 0, 1, -1) mat(2, 1; 1, -2; 3, 4)  = mat((3)(2)+(5)(1)+(6)(3), (3)(1)+(5)(-2)+(6)(4);
(0)(2) + (1)(1) + (-1)(3), (0)(1)+(-1)(-2)+ (1)(4)) = mat(29, 17;-2, -6)$

2. Let$A = mat(5, 1; 2, 6), B = mat(0, 1; -1, 3)$

  Then $A B = mat(5, 1; 2, 6) mat(0, 1; -1, 3) = mat(-1, 8; -6, 20)$

  $B A = mat(0, 1; -1, 3)mat(5, 1; 2, 6) = mat(2, 6; 1, 17)$

#info[*Matrix Equality Theorem*\
If $A$ and $B$ are $m times n$ matrices s.t. $A vec(x) = B vec(x)$ for every $vec(x) in RR^n$, then $A= B$

]

#proof[
  If $A vec(x) = B vec(x), space forall vec(x) in RR^n$, then $A vec(e)_i = B vec(e)_i, space forall 1<=i<=n$.

  By Column Extraction Theorem, $A vec(e)_i = vec(a)_i, B vec(e)_i = vec(b)_i$ where $vec(a)_i = vec(b)_i$, are also the $i$-th column of $A $and $ B$ respectively. Hence $A = B$

  #align(right)[$square$]
]

#info[*Identity Matrix*\
The $n times n$ *identity matrix*, denoted by $I$ or $I_n$, is the matrix s.t. $(I)_(i i) = 1$ for $1<=i<=n, (I)_(i j) = 0, forall i != j$.

$  I = [vec(e)_1 space ... space vec(e)_n] = mat(1, 0, 0, ..., 0; 0, 1, 0, ..., 0;
..., ..., ..., ..., ...; 0, 0, 0, ..., 1)  $

If $I = [vec(e)_1 space ... space vec(e)_n]$, thenfor any $n times n$ matrix $A$: $ A I = A = I A $

]

Example: 

$mat(6, 0; 1, 2) mat(1, 0; 0, 1) = mat(6, 0; 1, 2)$

== Linear Mappngs

#info[*Matrix Mappings*\

If $A$ is an $m times n$ matrix, then we define a function $f: RR^n -> RR^m$ by $f(vec(x)) = A vec(x)$ called a matrix mapping.


Note that we can write $f(x_1, ..., x_n) = (y_1, ..., y_m)$
]


Example:

Let $A = mat(6, 0; 1, 2)$. Then the matrix mapping $f:RR^n -> RR^m$, given by $f(vec(x))= A vec(x)$ can be expressed as

 $f(vec(x))= f(mat(x_1; x_2)) = mat(6, 0; 1, 2)mat(x_1; x_2) = mat(6x_1; x_1+2x_2)$


#info[*Distrbutive Matrix Property*\

If $A$ is an $m times n$ matrix and $f:RR^n-> RR^m$ is defined by $f(vec(x))= A vec(x)$, then $forall vec(x), vec(y)in RR^n$ and $b, c in RR$ we have
$ f(b vec(x)+c vec(y)) = b f(vec(x)) + c f(vec(y)) $

]

#info[*Linear Mapping*\

A function $L:RR^n -> RR^m$ is said to be *linear mapping* if for every $vec(x), vec(y) in RR^n; b, c in RR$ we have $ L(b vec(x))+ c vec(y) = b L(vec(x)) + c L(vec(y)) $

Two linear mappings $L:RR^n -> RR^m$ and $M : RR^n -> RR^m$ are said to be *equal *if $L(vec(x)) = M(vec(x)), space forall vec(x) in RR^n$, that is$ L = M$.

A linear mapping $L:RR^n -> RR^n$ is somtimes called a *linear operator*. This is often done when we wish to stress the fact that the domain and codomain of the linear mapping are thhe same.

If $L:RR^n -> RR^m$ is a linear mapping, then $L(vec(0)) = vec(0)$
]

#tip[*Linear Mapping and Matrix Mapping*\

Every linear mapping can be represented as matrix mapping

Every matrix mapping is a linear mapping
]

Observe: for an arbitrary $vec(x) in RR^n$, we can write $vec(x)= mat(x_1;x_2; ...; x_n) = x_1 vec(e)_1 + x_2 vec(e)_2 + ... + x_n vec(e)_n$.

Let $L:RR^n -> RR^m$ be a linear mapping, then $L(vec(x)) &= x_1 vec(e)_1 + x_2 vec(e)_2 + ... + x_n vec(e)_n \ &= x_1 L(vec(e)_1) + x_2 L(vec(e)_2) + ... + x_n L(vec(e)_n) \ &= [L(vec(e)_1) space L(vec(e)_2) space ... space L(vec(e)_n)] mat(x_1; x_2; ...; x_n) \ &= [L] vec(x)]$ 

Example:

Let $L:RR^2 ->RR^2$ be defined by $L(mat(x_1; x_2)) = mat(x_2; -x_1)$. Is $L$ linear.

  Let $vec(x), vec(y) in RR^n; b, c in RR$. Then $L (b vec(x)+ c(vec(y))) = L (mat(b x_1+c y_1; b x_2 + c y_2)) = mat(b x_2 + c y_2; -b x_1- c y_1 ) = b mat(x_2; -x_1)+ c mat(y_2; -y_1) = b L(vec(x)) + c L(vec(y))$. 

  Hence $L$ is linear.

#info[*Standard Matrix*\

Every linear mapping $L:R^n -> RR^m$ can be represented as a matrix mapping with matrix whose $i$-th column is the image of the $i$-th standard basis vector of $RR^n$ under $L$ for all $1<=i<=n$. That is, $L(vec(x)) = [L] vec(x)$ where $ [L] = [L(vec(e)_1) space ... space L(vec(e)_n)] $

Let $L:RR^n ->RR^m$ e a linear mapping. The amtrix $[L]= [L(vec(e)_1) space ... space L(vec(e)_n)]$ is called the *standard matrix* of $L$. It satisfies $L(vec(x)) = [L]vec(x)$
]
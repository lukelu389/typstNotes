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



== Matrix-Vector Multiplication

Note that

- $A = mat(vec(a_1)^T; vec(a_2)^T; ...; vec(a_m)^T)$

- $vec(a_i) = vec(x) = mat(a_(i 1); a_(i 2); ...; 1_(i n)) dot mat(x_1; x_2; ...; x_n) = a_(i 1) x_1 + a_(i 2) x_2 + ... + a_(i n) x_ n$

Thus we can the linear system with augmented matrix $[A | vec(b)]$ as $mat(vec(a_1) dot vec(x); vec(a_2) dot vec(x); ...; vec(a_m) dot vec(x)) = mat(b_1;b_2; ...; b_m)$

#info[*Matrix-Vector Multiplication*\

1. Let $A$ be an $m times n$ matrix whose rows are denoted $vec(a)_i^T$ for $1<=i<=m$. For any $vec(x) in RR^n$

 $ A vec(x) = mat(vec(a_1) dot vec(x); vec(a_2) dot vec(x); ...; vec(a_m) dot vec(x)) $

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

#info[*Transpose - Dot Product Theorem*\
If $vec(x), vec(y) in RR^n$ $ vec(x)^T vec(y) = vec(x) dot vec(y) $

]
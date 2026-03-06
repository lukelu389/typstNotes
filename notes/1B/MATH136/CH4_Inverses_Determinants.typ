#import "../../../preamble.typ": *
#show: conf


#let Title = "CH 4 - Inverses and Determinants"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")


== Matrix Inverses

Recall that $I = mat(1, 0, ..., 0; 0, 1, ..., 0; ..., ..., ..., ...; 0, 0, ..., 1) = [vec(e)_1 space vec(e)_2 space ... space vec(e)_n]$

Also $A I = I A = A$ for all $m times n$ matrices A

#info[*Left and Right Inverses*\

Let $A$ be a $m times n$ matrix. 

If $B$ is a $n times m$ matrix s.t $A B = I_m$, then $B$ is called a *right inverse* of $A$. 

  $A$ has a right inverse if and only if $"rank" A = m$

If $C$ is a $n times m$ matrix s.t $C A = I_m$, then $C$ is called a *left inverse* of $A$. 

  $A$ has a left inverse if and only if $"rank" A = n$

]


From above, we can obtain $A [vec(b)_1 space ... space vec(b)_n] = I$

$ ==> [A|vec(e_i)], forall i = 1, ..., m$ is consistent 

$==> vec(e_i) in "Col"(A), forall i = 1, ..., m$. 

Thus $"Span"{vec(e)_1, ..., vec(e)_n} subset.eq "Col"(A) = RR^m ==> "rank"(A) = m$

#info[*Rank-Inverse*\

If $A$ is a $m times n$ matrix, then

1. $A$ has a right inverse if and only if rank$(A) = m$
2. $A$ has a left inverse if and only if rank$(A) = n$


For $A$ be $ n times n$, a square matrix, it has both a left and right inverse. Those inverses are identical. 

$A$, a square matrix, is also invertible if and only if $"rank"(A) = n$

]

#info[*Matrix Inverse Invertible*\

Let $A$ be an $n times n$ matrix. If $B$ is a matrix s.t. $A B = I = B A$, then $B$ is called the *inverse* of $A$. We write $B = A^(-1)$ and we say that $A$ is invertible. 

$B$ is unique.
]


#info[*Properties of Invertible Matrices*\

If $A, B$ are invertible matrices and $c in RR$ with $c != 0$, then 

1. $ (c A)^-1 = 1/c A^(-1)$

2. $(A^T)^(-1) = (A^(-1))^T$

3. $(A B)^(-1) = B^(-1) A^(-1)$
]

#proof[

Property 3

$(A B) B^(-1) A^(-1) = A (B B^(-1)) A^(-1) = A I A^(-1) = I A A^(-1) = I I = I$

So $(A B)^(-1) = B^(-1) A^(-1)$ 
]
#align(right)[$square$]

To find the inverse of an invertible matrix, we note that the following $n$ linear systems must be consistent:

$[A | vec(e)_1]$, $[A | vec(e)_2]$, ..., $[A | vec(e)_n]$. 

The solutions to these systems will be the columns of $A^(-1)$

Since $A$ is the same coefficient matrix in each system, it will be the same sequence of elementary row operations to go from $A$ to its RREF in each system.

Thus we can create a multiple augmented matrix: $[A| vec(e)_1 space ... space vec(e)_n] = [A | I]$, then row reduce to $[I | B]$, where $B = A^(-1)$


Example:

$[A | I] = mat(1, 2, 1, 0; 3, 4, 0, 1; augment:#2) ~ mat(1, 2, -2, 1; 0, 1, 3/2, -1/2; augment:#2)$

$A^(-1) = mat(-2, 1; 3/2, -1/2)$

#info[*General Forumla for $M_(2 times 2)$*\

Let $A = mat(a, b; c, d) in M_(2 times 2)(RR)$. Then $A$ is invertible if and only if $a d - b c !=0$. Moreover, if $A$ is invertible $ A^(-1) = frac(1, a d - b c) mat(d, -b; -c , a) $
]

#info[*Invertible Matrix Theorem*\

For any $n times n$ matrix $A$, the following are equivalent:

1. $A$ is invertible

2. The RREF of $A$ is $I$

3. $"rank" A = n$

4. The system of equations $A vec(x) = vec(b)$ is consistent with a unique solution $forall b in RR^n$

5. The nullspace of $A$ is ${vec(0)}$

6. THe columns of $A$ form a basis for $RR^n$

7. The rows of $A$ form a basis for $RR^n$

8. $A^T$ is invertible
]

== Elementary Matrices

#info[*Elementary Matrix*\
  
An $n times n$ matrix $E$ is called an *elementary matrix* if it can be obtained from the $n times n$ identity matrix by performing exactly one elementary row operation.

- If $E$ is an elementary matrix, then $E$ is invertible and $E^(-1)$ is also an elementary matrix

- If $A$ is an $m times n$ matrix and $E$ is the $m times m$ elementary matrix corresponding to the row operation $R_i + c R_j "or" c R_i "or" R_i <-> R_j, i!=j$ respectively, then $E A$ is the matrix obtained from $A$ by performing the row operation $R_i + c R_j "or" c R_i "or" R_i <-> R_j$ respectively on $A$.

 - also $ "rank" (E A) = "rank" A $



]

Examples:

1. $mat(1, 0; 0, 1) ~ 5R_1 mat(1, 0; 0, 5)$

2. $mat(1, 0; 0, 1) ~ R_1 <-> R_2 mat(0, 1; 1, 0)$

3. $mat(1, 0; 0, 1) ~ R_1+ 7R_2 mat(1, 0; 7, 1)$

4. Consider $E = mat(1, 0; 7, 1)$ ia an elementary matrix, corresponding to the row operation $R_2 + 7 R_1$. The elementary matrix correspond to $R_2 - 7 R_1$ is mat(1, 0, -7, 1) is $E^(-1)$

  $mat(1, 0; 7, 1) mat(1, 0; -7, 1) = mat(1, 0; 0, 1) = I$

#proof[

Visual aid:

$E = mat(1, 0, 0, ..., 0; 0, 1, 0, ..., 0; ..., ..., ..., ..., ...; 0, 0, c, ..., 1)$

Row $i$ has $e_(i i) = 1$, $e_(i j) = c$ and everywhere else is $0$


$A = mat(a_(11), a_(12), ..., a_(1 k), ... ,a_(1 n); a_(21), a_(22), ..., a_(2 k), ..., a_(2 n); ..., ..., ..., ..., ... , ...; a_(j 1), a_(j 2), ..., a_(j  k), ..., a_(j n); a_(i 1), a_(i 2), ..., a_(i  k), ..., a_(i n); ..., ..., ..., ..., ..., ...,;a_(m 1), a_(m 2), ..., a_(m  k), ..., a_(m n);)$
]


#info[*Matrix Decomposition*\

If $A$ is a $m times n$ matrix with RREF $R$, then there exists a sequence $E_1, ..., E_k$ of $m times m$ elementary matrices s.t. $E_k ... E_2 E_1 A = R$. In partticular $ A = E_1^(-1) E_2^(-1) ... E_k^(-1) R$

Note that the order of $E_i$ matters

- If $A$ is a $n times n$ invertible matrix, then $A, A^(-1)$ can be written as a product of elementary matrices.

If $E$ is an elementary matrix, its transpose is also an elementary matrix
]

== Determinants

#info[*Determinants*\

Let $A = mat(a, b; c, d)$. The *determinant* of $A$ is $ "det" A = a d - b c $

Let $A = mat(a, b, c; d, e, f; g, h, i)$. The *determinant* of $A$ is $ "det" A &= a "det" mat(e, f; h, i) - d "det" mat(b, c; h, i) + g "det" mat(b, c; e, f) \

&= a(e i- f h) - d (b i - c h) + g(b f - c e)

$

Let $A$ be a $n times n$ matrix with $n>=2$. 

1. The *determinant* of $A$ is defined $ "det" A = sum_(i=1)^n a_(i 1) C_(i 1) $ where the determinant of a $1 times 1$ matrix is defined by $"det"[c] = c$

2. For any $1<=i<=n$ $ "det" A = sum_(k=1)^n a_(i k) C_(i k) $ called thee *cofactor expansion across the i-th row*, 

3. For any $1 <=j<=n$ $ "det" A = sum_(k=1)^n a-(k j) C_(k j) $ called *cofactor expansion across the j-th column*


]
\

Examples:

1. Let $A = mat(1, 2; 3, 4), "det" A = 1 dot 4 - 2dot 3 = -2$

2. Let $A = mat(1, 2, 3; 4, 5, 6; 7, 8, 9)$. 

  $"det" A = 1(-1)^(1+1) "det" A(1, 1) + 4(-1)^(2+1) "det" A(2, 1) + 7 (-1)^(3+1) "det" A(3, 1) = 0$


#info[*Cofactor*\

Let $A$ be a $ n times n$ matrix with $n>=2$. Let $A(i, j)$ e then $(n-1) times (n-1)$ matrix obtained from $A$ by deleting the $i$-th row and $j$-th column. The *cofactor* of $a_(i j)$ is $ C_(i j)(A) = (-1)^(i+j) "det" A(i, j) $
]
\
\
\
\

Examples:

1. Let $A = mat(1, 2, 3; 4, 5, 6; 7, 8, 9)$

  $A(1, 1) = mat(5, 6; 8, 9), A(3, 2) = mat(1, 3; 4, 6)$

  $C_11 = (-1)^(1+1) "det" A(1, 1) = 5 dot 9 - 6 dot 8=-3$

  $C_32 = (-1)^(3+2) "det" A(3, 2) = -(6-12)=6$

2. $A = mat(1, 2, 0; 3, -1, 6; 5, -2, 0)$

  $"det" A = a_13 C_13 + a_23 C_23+a_33 C_33 = 0 + 6 C_23 + 0 =6 (-1)^(2+3)(-2-10)=72$


#info[*Triangular*\

A $m times n$ matrix $U$ is said to be *upper triangular* if $u_(i j) = 0$ whenever $ i>j$. 

A $m times n$ matrix $L$ is said to be *lower triangular* if $l_(i j) = 0$ whenever $ i<j$

]
Example


Let $A = mat(2, 0, 0, 0, 0; 1, -1, 0, 0, 0; 3, 5, 2, 0, 0; 6, 2000, 5, 1, 0; pi, e, 7, -3, 5)$

  $"det" A = 2 (-1)^(1+1) "det" mat(-1, 0, 0, 0; 5, 2, 0, 0; 2000, 5, 1, 0; e, 7, -3, 5 ) = 2 (-1) "det" mat(2, 0, 0; 5, 1, 0; 7, -3, 5) = (2)(-1)(2) "det" mat(1, 0,; -3, 5) = (2)(-1)(2)(5) = -20$
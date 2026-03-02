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

#info[*Invertible Matrix Theorem*]
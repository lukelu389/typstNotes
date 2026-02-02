#import "../../../preamble.typ": *
#show: conf

#let Title = "CH 2 — System of Linear Equations"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

#info[*Basic Terminology* \

1. An equation in $n$ variables $x_1, ..., x_n$ that can be written in the form $ a_1 x_1 + ... + a_n x_n = b $ where $a_1, ..., a_n, b$ are constants is called a *linear equation*. The constants are called the *coefficients*, $b$ is called the *constant term*

2. A set of $m$ linear quations in the same variables $x_1, ..., x_n$ is called a *system of $m$ linear equations in $n$ variables*

3. A vector $vec(s) = mat(s_1; ...; s_n)$ is called a *solution* of a system of $m$ linear equations in $n$ variabels if all $m$ equations are satisfied when we set $x_i = s_i space forall 1<=i<=n$. The set of all solutions of a system of linear equations is called the *solution set* of the system.

4. If a system of linear euations has a least one solution, then it is said to be *consistent*. Otherwise, *inconsistent*
]

#info[*Linear Solutions System*\
If the system of linear equations has two distinct solutions $vec(s) = mat(s_1; ...; s_n), vec(t) = mat(t_1; ...; t_n)$, then for every $c in RR, vec(s) + c(vec(s)-vec(t))$ is a solution, and furthermore these solutions are all distinct.
]

== Solving Systems of Linear Equations
\
Discussion

$cases(2x_1 +3x_2 = 6, x_1-x_2 = 3)$ 

If we swap the order of the equations, the solution set does not change.

We can multiply the first equation by a non-zero scalar and is also an equivalent system.

We can subtract the first equation from the second equation. We get another equivalent system.

#info[*Matrix*\

The *coefficient matrix* for the system of linear equations

$ a_11x_1 + a_12x_2+...+a_(1n)x_n &= b_1 \ 
 a_21x_1 + a_22x_2+...+a_(2n)x_n &= b_m\
        ...... &= ...\
 a_(m 1)x_1 + a_(m 2)2x_2+...+a_(m n)x_n &= b_m\
 $
 is the rectangular array $ mat(a_11, a_12, ..., a_1n; a_21, a_22, ..., a_2n; ..., ..., ..., ...; a_(m 1), a_(m 2), ..., a_(m n)) $

The *augmented matrix* of the system is 

$ mat(a_11, a_12, ..., a_1n, b_1; a_21, a_22, ..., a_2n, b_2; ..., ..., ..., ..., ...; a_(m 1), a_(m 2), ..., a_(m n), b_m ;augment:#(4)) $

Two matrices $A$ and $B$ are said to be *row equivalent* if there exist a finite sequence of elementary row operations that transform $A$ into $B$ denoted $A \~ B$
]

Observe that we can express the linear equations :

- Other than from the augmented matrix by $[vec(a_1), vec(a_2), ..., vec(a_n) | vec(b)]$ where $vec(a_i)$ be the $i$-th column of the augmented matrix

- Other than the coefficient matrix by $A = [a_1, a_2, ..., a_n]$. Thus presenting the augmented matrix by $ [A | vec(b)]$

#info[*Three Elementary Row Operations*\
1. multiplying a row by a non-zero scalar: $c R_i$ 

2. adding a multiple of one row to another: $R_i + c R_j$
3. swapping two rows: $R_i <-> R_j$

Note: when we perform row operations, the operation indicator should be on the same line with the corresponding row, and the rows get changed is the row that come in first of the indicator
]

Example:
1. 
  $ mat(2, 3, 6; 1, -1, 3; augment:#2) quad  R_1 <-> R_2 quad mat(1, -1, 3; 2, 3, 6; augment:#2) quad R_2 - 2R_1 quad mat(1, -1, 3; 0, 5, 0; augment:#2) quad 1/5R_2 quad mat(1, -1, 3; 0, 1, 0; augment:#2) \
  
  quad R_1 + R_2 quad mat(1, 0, 3; 0, 1, 0; augment:#2) $

  Thus $x_1 = 3, x_2= 0$

#info[*Row Equivalence*\

If the augmented matrices $[A_1 | vec(b_1)]$ and $[A_2 | vec(b_2)]$ are row equivalent, the the systems of linear equations associated with each augmented matrix are euivalent.
]

#info[*Reduced Row Echelon Form (RREF)*\

A matrix $R$ is said to be RREF if 

1. All rows containing a non-zero entry are above all rows which only contains zeros.

2. The first non-zero entry in each non-zero row is 1, called a *leading one*

3. The leading one in eachnon-zero row is the right of the leading one in any row above it

4. A leading one is the only non-zero entry in its column

\

- If $A$ is row equivalent to a matrix $R$ in RREF, then we say that $R$ is RREF of $A$


- If $A$ is a matrix, then $A$ has *a unique* RREF $R$

- If $j$-th column does not contain a leading one, then $x_j$ is considered as a free variable where it can be any value.
]

Examples:

1. $mat(1, 2, 0, 6; 0, 1, 2, 3; 0, 0, 0, 0)$ is not in RREF, row 2 has a leading zero where there are non-zero entry in its column

\
2. $mat(1, 0, 2, 0; 0, 1, 1, 0; 0, 0, 0, 1)$  is in RREF, note the second 1 in row to is not a leading 1
\
3. $mat(1, 0, 0, 1; 0, 1, 3, 2; 0, 0, 1, 1)$ is not in REFF, similar to example 1
\
4. Solve the linear system:

  $cases(x_1+2x_2+3x_3 = 5, 2x_1+3x_2-x_3 = 1, 3x_1+5x+2x_3=6) ==> mat(1, 2, 3, 5; 2, 3, -1, 1; 3, 5, 2, 6 ;augment:#3) quad R_2-2R_1 quad mat(1, 2, 3, 5; 0, -1, -7, -9; 3, 5, 2, 6; augment:#3) quad R_3 - 3R_1 quad mat(1, 2, 3, 5; 0, -1, -7, -9; 0, -1, -7, -9; augment:#3)$

  $R_3 - R_2 quad mat(1, 2, 3, 5; 0, -1, -7, -9; 0, 0, 0, 0; augment:#3) quad (-1)R_2 quad mat(1, 2, 3, 5; 0, 1, 7, 9; 0, 0, 0, 0; augment:#3) quad R_1 - 2R_2 quad mat(1, 0, -11, -13; 0, 1, 7, 9; 0, 0, 0, 0; augment:#3)$

  The system the RREF represents is $cases(x_1 -11x_3 = -13, x_2+7x_2 = 9)$ and $x_3$ can be anything, let $t = x_3$.

  $ vec(x) = t mat(1; -7; 0) + mat(-13; 9; 0) space forall t in RR $

5. Solve 

  $cases(x_1 + 2x_2 +3x_3 = 1, 4x_1+5x_2+6x_3 = 2, 7x_1+8x_2+9x_3=3)$
  $ space ==>mat(1, 0, -1, -1/3; 0, 1, 2, 2/3; 0, 0, 0, 0; augment:#3) space  ==>vec(x) = s mat(1, 2, 1) - mat(-1/3; 2/3; 0) space forall s in RR$


6. Solve \
  $cases(x_1+x_2 = 3, 2x_1+2x_2 = 4) space ==> mat(1, 1, 3; 0, 0, -2; augment: #2)$ inconsistent system, no solution

\
#tip[*Gauss-Jordan Elimination* - An algorithm of obtaining RREF of a matrix]


#info[*Homogeneous Systems of Linear Equation*\

A linear equation in $n$ variables is called *homogeneous* if the constant term is zero: $ a_1 x_1 + ... + a_n x_n = 0 $

A systerm of linear equations is said to be a *homogeneous* systerm if the constant terms are all zero. $[A | vec(0)]$.
\

*Homogeneous *systems are always *consistent* at $vec(0) in RR^n$

The solution set of a homogeneous system of $m$ linear equation in $n$ variables is a subspace of $RR^n$

Let system $[A | vec(b)]$ where $vec(b) != vec(0)$, then $[A | vec(0)]$ is the associated homogeneous system.

\
Let $S_b$ be the solution set of the system $[A | vec(b)]$ and let $S_0$ be the solution set of the associated homogeneous system $[A | vec(0)].$ Then if $vec(x_p)$ is any particular solution in $S_b$, $ S_b = {vec(x_p)+ vec(s) | vec(s) in S_0} $

Note: Since all constant terms are all zero, the last column of the augmented matrix will remain zero regardless of elementary row operation applied. It is thus often ignored, that is, we use the coefficient matrix for simplicity.
]

Example:

1. $cases(x_1+x_2=0, 2x_1-x_2 = 0) ==> mat(1, 1, 0; 2, -1, 0; augment:#2) quad R_2 - 2R_1 quad mat(1, 1, 0; 0, -3, 0; augment:#2) quad -1/3 R_2 quad mat(1, 1, 0; 0, 1, 0; augment:#2) quad R_1 - R_2 quad mat(1, 0, 0; 0, 1, 0; augment:#2)$

  $x_1 = x_2 = 0 ==> vec(x) = vec(0)$

\

2. $cases(x_1+2x_2 +3x_3 = 0, 4x_1 + 5x_2+6x_3, 7x_1 + 8x_2 + 9x_3) ==> mat(1, 2, 3; 4, 5, 6; 7, 8, 9) ==> mat(1, 0, -1; 0, 1, 2; 0, 0, 0) ==> x_1 = x_3 = t, x_2 = -2x_3 = -2t $

  $==> vec(x) = t mat(1; -2; 1), forall t in RR$


== Rank
\
#info[*Rank*\

The *rank* of a matrix $A$ is the number of leading ones in the RREF of the matrix and is denoted rank $A$

For any $m times n$ matrix $A$, $ "rank" A <= min(m, n) $
]

#info[*System-Rank Theorem*\

Let $A$ be the coefficient matrix of a system of $m$ linear equations in $n$ unknowns $[A | vec(b)]$

1. The system $[A | vec(b)]$ is inconsistent if and only if rank $A$ < rank $[A | vec(b)]$

2. If the system $[A | vec(b)]$ is consistent, then the system contains ($n-$rank $A$) free variables.
]

== Linear Independence

\
*MIDTERM CUTOFF*
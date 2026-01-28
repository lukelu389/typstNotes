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


If $A$ is row equivalent to a matrix $R$ in RREF, then we say that $R$ is RREF of $A$]
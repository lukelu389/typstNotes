#import "../../../preamble.typ": *
#show: conf
#import "@preview/diverential:0.2.0": *
#import "@preview/physica:0.9.8": *
#let strut(h) = box(height: h, width: 0pt)
#let Title = "CH 5 - Unitary Diagonalization"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

Combines chapter 3 and chapter 4

Example:


Let $A in M_(n times n) (FF)$ or let $L:V->V$ be a linear operator

Can we find an eigenbasis for $L$ that is also orthonormal basis? Or does there exist an invertible matrix $P$ whose column is orthonormal s.t. $ A = P D P^(-1)$ with $D$ be a diagonal matrix?

No, even if $L ("or" A)$ is diagonalizable. It is *IMPOSSIBLE* to find orthogonal eigenbasis for $L$

Columnspace of $P$ forms the eigenbasis for $A$

Example:

$L:RR^2->RR^2, L(mat(x;y)) = mat(x+y;2y), A = mat(1, 1;0, 2)$

We can show that the eigenvalues are $lambda =1, 2$ with eigenspace $E_1 = "span"{mat(1;0)}, E_2 = "span"{mat(1;1)}$

$B = {mat(1;0), mat(1;1)}$ is an eigenbasis, if $P = mat(1, 1;0,1)$, then $A = P mat(1, 0;0, 2) P^(-1)$

Conclusion, $A$ is diagonalizable but they are not orthogonal.


#defn[*Unitarily Diagonalizable*\ 

We say $L$ is *unitarily diagonalizable* if $L$ has an orthonormal basis
]

#thm[*Proposition*

$A in M_(n times n)(FF)$ is unitarily diagonalizable $<==> exists P$ with orthonormal columns s.t. $A = P D P^(-1)$

Since we have orthonormal columns, then we have independent columns, thus $P^(-1)$ exists
]

#defn[*Unitary* \ 

Let $P in M_(n times n)(FF)$, it is *unitary* if $P$ has orthonormal columns
]

Examples:

1. $mat(1, 0;0, 1), mat(0, 1;1, 0)$ are unitary

2. $mat(1, 1;1, -1)$ is not unitary because it is not orthonormal, but $ mat(1/sqrt(2), 1/sqrt(2);1/sqrt(2), -1/sqrt(2))$ is unitary

3. $mat(1, 1; i, i)$ is not unitary because $ip(mat(1;i), mat(1;i)) = 1dot overline(1) + i dot overline(i) !=0$

4. $mat(1/sqrt(2), 1/sqrt(2); i/sqrt(2), -i/sqrt(2))$ is unitary

#defn[*Adjoint* \ 

Let $A in M_(m times n)(FF)$, the *adjoint* of $A$ denoted $A^*$ is the conjugate transpose.

$ A^* = overline(A^T) = overline(A)^T $
]

Examples:

1. $mat(1, 2, 3; 4, 5, 6)^* = mat(1, 4;2, 5;3, 6)$

2. $mat(w, 2-3i; i, 1+i)^* = overline(mat(2, i; 2-3i, 1+i)) = mat(2, -i; 2+3i, 1-i)$

*Properties of Adjoint*

1. $(A+B)^* = A^* + B^*$

2. $(c A)^* = overline(c) A^*$

3. $(A B)^* = B^* A^*$

4. $(A^*)^(-1) = (A^(-1))^*$

#thm[*Proposition* \ 

Let $P in  M_(n times n) (FF)$. Then $P$ is unitary if and only if $P^* = P^(-1)$
]

*Note* $x^* y = mat(x_1, ..., x_n)^* mat(y_1; ...; y_n) = overline(x_1)y_1  + overline(x_2)y_2 + ... + overline(x_n)y_n = ip(y, x)$ 

#proof[
  Proposition

  $P^* = P^(-1) <==> P^* P = I$

  Let $P = mat(v_1 space ... space v_n)$, $P^* = mat(v_1^*; ...; v_n^*)$

  Then $P^* P =  mat(v_1^*; ...; v_n^*) mat(v_1 space ... space v_n) = mat(v_1^* v_1, v_1^* v_2, ..., v_1^* v_n;
  ..., ..., ..., ...;
v_n^*v_1, ..., ..., v_n^* v_n)$

$(i, j)$-th entry of $P^* P $ is $v_i^* v_j = ip(v_j, v_i)$

Therefore $P^* P = I ==> cases(ip(v_i, v_i) = 1, ip(v_j, v_i) = 0)$, that is orthogonal and orthonormal

Thus $P$ is unitary

]
#align(right)[$square$]

Suppose $A in M_(n times n) (FF)$ is unitary diagonalizable $<==> A = P D P^(-1)$ with $D$ diagonal, $P$ unitary

$==> A = P D P^* <==> A^* = (P D P^*)^* = P D^* P^*$

Let $D = mat(lambda_1, ..., ...; ..., ..., ...; ..., ..., lambda_n), D^* = mat(overline(lambda_1), ..., ...; ..., ..., ...; ..., ..., overline(lambda_n)) $

$A A^* = P D P^* P D^* P^* = P D overline(D) P^* = P overline(D) D P^* = P overline(D) P^* P D P^* = A^* A$

#thm[*Spectral Theorem*\

Let $A in M_(n times n) (FF)$, $A$ is unitarily diagonalizable if and only if $A A^* = A^* A$

]

*Note*

1. If $FF = RR$(only), we use sometimes "orthogonal" in place of "unitary" so $A in M_(n times n)(RR)$ is orthogonal if and only if $A$ has orthonormal columns $<==> A^(-1) = A^T$


2. If a real matrix is orthogonally diagonalizable if and only if it has orthonormal eigenbasis $A = P D P^(-1)$
Example:


$A = mat(1, 2, 3; 2, 1, 3; 3, 3, 1)$, notice it is symmetric, that is $A = A^*$, so $A A^* = A^* A$, $A$ is diagonalizable.

#thm[*Fundamental Property of the Adjoint* \ 

Let $A in M_(m times n) (FF)$, then $ ip(A vec(x), vec(y)) = ip(vec(x), A^* vec(y)) $

for all $vec(x), vec(y) in FF^n$
]

#thm[*Geometry of Unitary Matrices* \ 

Let $U in M_(n times n) (FF)$, then 

1. $ip(U vec(x), U vec(y)) = ip(vec(x), vec(y))$, unitaries perseves angles

2. $||U vec(x)|| = ||vec(x)||$, unitaries perserves length

Informally, think unitary matrices to be a tool for rotation or reflection
]

#proof[
  Geometry of Unitary Matrices

  1. $ip(U x, U y) = ip(x, U^* U y) = ip(x, y)$

  2. $||U x|| = sqrt(ip(U x, U x)) = sqrt(ip(x, x)) = ||x||$
]
#align(right)[$square$]

We can now view unitary diagonalization geometrically.


Suppose $A$ is untarily diagonalizable, $A = U D U^(-1)$ where $U, D$ are unitary and diagonal matrices respectively

$A vec(x) = U D (U^(-1) vec(x))$

\
Looking back into the Spectral Theorem, we cannot extract much information from $A A^* = A^* A$
#thm[*Schur's Triangularization Theorem* \ 

Let $A in M_(n times n) (CC)$. There exist $U in M_(n times n)(CC)$ and upper/lower triangular matrix $T in M_(n times n) (CC)$ s.t. $ A = U T U^* $

Futhermore, $T = mat(lambda_1, ..., ?; 0, ..., ?; 0, ..., lambda_n)$ has eigenvalues be $lambda_i$ and repeatitions be the algebraic multiplicity.
]

Use Schur Theorem to write $ A = U T U^*$, then $A A^* = (U T U^*)(U T U^*)^* = U T T^* U = U T U^* T^*$

Therefore, from $A A^* = A^(*) A$ we get $U T T^* U^* = U T T^* U^*$

For 2 by 2, $mat(t, s; 0, r) mat(overline(t), 0; overline(s), overline(r)) = mat(overline(t), 0; overline(s), overline(r)) mat(t, s; 0, r) $, $s = 0 ==> T = mat(t, 0; 0, r)$





#import "../../../preamble.typ": *
#show: conf
#import "@preview/diverential:0.2.0": *
#import "@preview/physica:0.9.8": *
#let strut(h) = box(height: h, width: 0pt)
#let Title = "CH 3 — Diagonalizability"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")



Warm Up Question

Let $R:RR^2 -> RR^2$ be reflection in the line $y = 3x$. Determine $R(vec(v))$

Reflection is a linear map. $R$ can be represented by a $2 times 2 $ matrix. 

Choose a basis $B = {e_1, e_2} in RR^2$. Build $#v(0em)_B [A]_B$

$A = [R]_B = [[R(e_1)]_B space [R(e_2)]_B]$. But we don't know $R(e_1), R(e_2)$.

We choose instead the vector $R(v_1) = v_1$, that is on the line $y =3x$, say $v_1 = mat(1; 3)$

Then choose another vector $R(v_2) = - v_2$, that is perpendicular to the line $y = 3x$, say $v_2 = mat(-3;1)$

$D = {mat(1; 3), mat(-3; 1)}$

Now $C =  #v(0em)_D [R]_D =[[R(v_1)]_D space [R(v_2)]_D] = mat(1, 0; 0, -1)$

*Lesson*:

1. Sometimes there may be a "nice" basis for $L:V->V$ that makes computations easier

2. Dream scenario: want the basis $D$ so that we have $[L]_D = mat(x, ..., 0;
..., ..., ...; 0, ..., x)$
#defn[*Operator* \ 

Let $T: V->W$ is called a *linear operator* if $"dim" V = "dim" W$
]

#defn[*Diagonalizability* \ 
  Compute the matrix of $L:V->V$ and obtain the basis $D$ so that we have $[L]_D = mat(x, ..., 0; ..., ..., ...; 0, ..., x)$

  If there is such a basis $D$, we say $L$ is *diagonalizable* and we say $D$ is a *diagonalizable basis*
]

Example:

Reflection map $R:RR^2 ->RR^2$ across $y = 3x$ is diagonalizable and $D = {mat(1; 3), mat(-3; 1)}$ is a diagonalizable basis.

  Suppose we want to calcualte $R(vec(v))$.

  $[R(vec(v))]_D = [R]_D [vec(v)]_D$

  But we want $R(vec(v)) = [R(vec(v))]_S, S = {e_1, e_2}$

  Let $#v(0em)_S I_D$ be change for $D$ to $S$ coordinates. Then $#v(0em)_S I_D [vec(x)]_D = [vec(x)]_S$

  We obtain $ #v(0em)_S I_D [R(vec(v))]_D &= #v(0em)_S I_D [R]_D [vec(v)]_D \ 
      [R(vec(v))]_S &= #v(0em)_S I_D [R]_D [vec(v)]_D \

      [R(vec(v))]_S &= #v(0em)_S I_D [R]_D (#v(0em)_S I_D)^(-1) #v(0em)_S I_D [vec(v)]_D \

      [R(vec(v))]_S &= #v(0em)_S I_D [R]_D (#v(0em)_S I_D)^(-1) [vec(v)]_S 
  $

  So $ #v(0em)_S [R]_S = #v(0em)_S I_D #v(0em)_D [R]_D #v(0em)_D I_S $

  $#v(0em)_S I_D = mat(1, -3; 3, 1)$

  $therefore [R]_S = mat(1, -3; 3, 1) mat(1, 0; 0, -1) (mat(1, -3; 3, 1))^(-1) = 1/10 mat(-8, 6; 6, 8)$

#defn[*Similarity*  \

Let $A, B in M_(n times n) (FF)$, we say $A$ is *similar* to $B$ if $exists$ invertible matrix $P$ s.t. $A = P B P^(-1)$ 

If $A ~ B$

1. $"rank" A = "rank" B$

2. $"nullity" A = "nullity" B$

3. $"det" A = "det" B$

4. $"tr" A = "tr" B$

]

Example:

If $B, C$ are bases for $V$ and if $L:V->V$ is linear, then $#v(0em)_B [L]_B ~ #v(0em)_C [L]_C$ 

since $#v(0em)_B [L]_B = #v(0em)_B I_C #v(0em)_C [L]_C (#v(0em)_B I_C)^(-1), P = #v(0em)_B I_C $

QUESTION: Is $[L]_B$ for any choice of $B$, similar to a diagonal matrix?

Warm Up

Suppose $D = v_1, ..., v_n$ is a diagonalizable basis for $L$. That is suppose $[L]_D = mat(lambda_1, ..., 0; ..., ..., ...; 0, ..., lambda_n)$

$<==> [[L(v_1)]_D ... [L(v_n)]_D] = mat(lambda_1, 0, ..., 0; 0, lambda_2, ..., 0; ..., ..., ..., ...; 0, ..., 0, lambda_n)$

Equating cols, $[L(v_1)] = mat(lambda_1; 0; ...; 0) <==> L(v_1) = lambda_1 v_1 + 0 v_2+ ... + 0_n, therefore L(v_1) = lambda_1 v_1$

Similarly, $L(v_1) = lambda_i v_i, i = 1, 2, ..., n$

So: $D = {v_1, ..., v_n}$ is a diagonalizable basis for $L$ if and only $L(v_1) = lambda_i v_i, forall i$ if and only $v_i$ is an eigenvector for $L$ with eigenvalue $lambda$

#defn[*Eigenbasis* \ 
  An *eigenbasis* for $L$ is a basis ${v_1, ..., v_n}$ where the $v_i$ are eigenvectors. 
  
  (In this case $[L]_D =  mat(lambda_1, ..., 0; ..., ..., ...; 0, ..., lambda_n)$ and the i-th diagonal entry $lambda_i$ is the eigenvalue of $v_i$)
]

Examples:

1. $R:RR^2->RR^2$ reflection across $y = 3x$

  We found $v_1 = mat(1; 3)$ is on the line and $R(v_1) = v_1$, so $v_1$ is an eigenvector with $lambda_1 = 1$

  Also, $v_2 = mat(-3; 1)$ is perpendicular to the line and $R(v_2) =- v_2$ is an eigenvector with $lambda_2 =-1$

  Therefore, $D = {v_1, v_2}$ is an eigenbasis. We computed $[L]_D =mat(1, 0; 0, -1)$ as expected.

2. Let $T:RR^2->RR^2$ be rotation by $theta != pi, 2pi, 0<theta<2pi$

  Then $T$ has no eigenvectors so $T$ has no eigenbasis and $T$ is not diagonalizable
  

3. Let $D:P_2(RR)->P_2(RR), D(p(x)) = p'(x)$ 
  
  Does $D$ have any Eigenvectors

  Yes, if $p(x) = c, D(p(x)) = 0 = 0 dot p(x)$ is an eigenvector with $lambda = 0$

  If $"deg" p >1$, then $D(p) != lambda p, lambda !=0$. 

  The only possible eigenvalue is $lambda = 0$ when eigenvector are constant.
  
  $therefore D$ is not diagonalizable.

  Note, if $D:"functions" -> "functions"$, $D(e^(lambda x)) = lambda e^(lambda x)$
  

4. Let $D:P_2(RR)->P_2(RR), D(p(x)) = p'(x)$ 
  
  We work with matrix, $S= {1, x, x^2}$

  $[D]_S = [[D(1)]_S space [D(x)]_S space [D(x^2)]_S] = mat(0, 1, 0;0, 0, 2; 0, 0, 0)$
  
  What is the relationship between eigenvectors and eigenvalues of $D$ and those of $A = [D]_S$?

  $D(p) = lambda p ==> [D(p)]_S = [lambda p]_S <==> [D]_S [p]_S = lambda [p]_S <==> A [p]_S = lambda [p]_S$

  $therefore D(p) = lambda p <==> A [p]_S = lambda[p]_S$

#thm[ \

Let $L:V->V$ be an operator. Let $B$ be a basis for $V$, $A = [L]_B$

Then $v in V$ is an eigenvector for $L$ with eigenvalue $lambda <==> [v]_B$ is an eigenvector for $A$ with eigenvalue $lambda$
]


#tip[Linear Operators

Whenever struggling to solve a question with linear operators, translate into matrix language and attempt to solve it.
]

Example:

$D:P_2(RR)->P_2(RR), A = [D]_S = mat(0, 1, 0; 0, 0, 2; 0, 0, 0)$. 

Notice this is a triangular matrix, the eigenvalue are the diagonal entries. 

$lambda = 0$ is the only eigenvalue for $A$

Therefore $lambda=0$ is the only eigenvalue for $D$

$A v = lambda v <==> A v - lambda v = 0 <==> (A-lambda I)v = 0 <==> v in "Null"(A = lambda I)$

Eigenvectors $mat(c; 0; 0)$


#defn[*Eigenspace* \

The *eigenspace* of $L$ with eigenvalue $lambda$ is $ E_lambda (L) = {v in V: L(v)=lambda v} $ for all $lambda$-eigenvectors and $vec(0)$

The eigenspace of $A in M(n times n)(FF)$ with eigenvalue $lambda$ is $ E_lambda (A) = {x in FF^n: A x = lambda x} $

$E_lambda (L)$ is subspace of $V$

$E_lambda (A)$ is a subspace of $FF^n$
]

#thm[*Isomorphic Eigenspaces* \ 

*Proposition*

Suppose $L:V->V$ is linear and let $A = [L]_B$ then $E_lambda(L) tilde.equiv E_lambda(A)$ 

*Corrollary*
1. $"dim" E_lambda (L) = "dim" E_lambda (A)$ is the geometric multiplicity of $lambda$

2. $B = {v_1, ..., v_n}$ is a basis for $E_lambda (L) <==> {[v_1]_B, ..., [v_n]_B}$ is a basis for $E_lambda(A)$
]

#proof[
  Define $[]: E_lambda(L) -> E_lambda(A), v |-> [v]_B$. This has an inverse by untaking coordinates. So this map is an isomorphism
]
#align(right)[$square$]

Let $A in M_(n times n) (FF)$ That is we want $P = [v_1 space ... space v_n]$ and $D = mat(lambda_1, ..., 0; ..., ..., ...; o, ..., lambda_n)$ so that $A = P D P^(-1)$.

$v_i, lambda_i$ are eigenvectors and eigenvalues. 
We need eigenvalues to build $D$ and linear independent eigenvectors for $P$

\
\
Steps
\

1. Calculaet and factor the characteristic polynomial of $A$

  $C_A (lambda) = "det"(A- lambda I) = ...$. If cannot factor into linear terms. Then $A$ is not diagonalizable. STOP.

  The roots of $C_A (lambda)$ are eigenvalues: ${lambda_1, lambda_1, ..., lambda_1}, ..., {lambda_n, lambda_n, ..., lambda_n}$. The number of times each distinct eigenvalues appear is the algebraic multiplicity.

  Example: $C_(lambda) (A) = "det"(A - lambda I) = (lambda)^3 (lambda-1)^2 (lambda-5)$. Thus $a_0 = 3, a_1 = 2, a_2 = 1$

  Then we obtain $D = mat(lambda_1, ...,0, 0; 0, lambda_1, ..., 0; ..., ..., ..., ...; 0, ..., 0, lambda_n)$

2. Determine the eigenspaces. $E_lambda(A) = {x: (A - lambda I)  x = 0} = "Null"(A- lambda I)$

  If $g_lambda != a_lambda$, STOP, $A$ is not diagonalizable
  
  If $g_lambda = a_lambda, forall lambda$, $A$ is diagonalizable

  Find bases for each eigenspaces and put them down as columns in $P$

Example:

1. $D:P_2 -> P_2$ is differentiation

  If $S = {1, x, x^2}, "then" [D]_S = mat(0, 1, 0; 0, 0, 2; 0, 0, 0), lambda = 0, 0, 0$

  We also saw that $E_0(D)= "Null"(D - 0 I) - "Null"(D) = "span"{1}, g_lambda = 1 != a_lambda = 3$

  $D$ not diagonalizable.

2. $L:P_2 (RR)-> P_2 (RR), L(p(x))|->p(1)(1+x)$

  $S = {1, x, x^2}, A = mat(2, 1, 1; 1, 2, 1; 0, 0, 1)$

  $C_A (lambda) = "det"(A-lambda I) = "det"mat(2-lambda, 1, 1; 1, 2-lambda, 1; 0, 0, 1-lambda) = (lambda-3)(lambda-1)^2, lambda = 1, 1, 3 ==> a_1 = 2, a_3 = 1$

  $lambda = 1$, find basis for $E_lambda (A) = "Null"(A- lambda I) = "Null"(A-I) = "Null"(mat(1, 1, 1; 1, 1, 1; 0, 0, 0)) $

  ${mat(1; -1; 0), mat(1; 0; -1)} ==> g_1 = 2 = a_2; A v = lambda v ==>mat(2, 1, 1 ; 1, 2, 1; 0, 0, 1)mat(1; -1; 0) = mat(1; 1; 0)$

  $lambda = 3$, $E_lambda (A) = "Null"(A - 3 I) = "Null"(mat(-1, 1, 1; 1, -1, 1; 0, 0, -2)) ==> {mat(1; 1; 0)}==>g_3 = 1=a_1$



  $L:P_2 (RR)->P_2 (RR):$ untake $S-$coordinates, we get eigenbasis $D = {1-x, 1-x^2, 1+x}$

  $[L]_D = mat(1, 0, 0; 0, 1, 0; 0, 0, 3)$

  #tip[*Diagonalization Problems* \
  
  1. Always check calculation, whenever found a new outcome, verify it. (i.e. whenever obtain basis, check if $A v = lambda v$) to avoid mistake

  2. When $a_lambda = 1$, then $g_lambda = 1$. In general, $1<=g_lambda <= a_lambda$. Except that if all eigenvalues are distinct, then $L$ is diagonalizable.

  3. If $[L]_B$ is triangular, and eigenvalues are distinct, then diagonalizable.

]
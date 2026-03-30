#import "../../../preamble.typ": *
#show: conf


#let Title = "CH 6 - Eigenvectors and Diagonalization"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== Matrix of a Linear Mapping, Similar Matrices
\

Recall the derivation for the standard matrix $[L]$ of a linear mapping $L:RR^n -> RR^n$ for an arbitrary $vec(x) in RR^n$, we have $ L(vec(x)) = L(x_1 vec(e)_1 + ... + (x_n vec(e)_n)) = x_1 L(vec(e)_1) + ... + x_n L(vec(e)_n) = ... = [L]vec(x) $

Now we wish to generate an arbitrary basis $B = {vec(v)_1, ..., vec(v)_n}$ of $RR^n$.

Now the goal is to find a matrix $[L]_B$ s.t. $ [L(vec(x))]_B = [L]_B [vec(x)]_B $

$[L(vec(x))]_B &= [L(b_1 vec(v)_1 + ... + b_n vec(v)_n)]_B , quad  b_1, ..., b_n in RR \ 

&= [b_1 L(vec(v)_1) + ... + b_n L(vec(v)_n)]_B \ 

&= b_1 [L(vec(v)_1)]_B + ... + b_n [L(vec(v)_n)]_B \

&= [[L(vec(v)_1)]_B  space ... space [L(vec(v)_n)]_B]mat(b_1; ...; b_n) \

&= [L]_B [vec(x)]_B
$

#info[*$B$-Matrix*\

Let $B = {vec(v)_1, ..., vec(v)_n}$ be a basis for $RR^n$ and let $L: RR^n -> RR^n$ be a linear operator. The $B$-matrix of $L$ is defined as $ [L]_B = [[L(vec(v)_1)]_B  space ... space [L(vec(v)_n)]_B] $

It satisfies $[L(vec(x))]_B = [L]_B [vec(x)]_B$
]

Examples:

Let $vec(a) = mat(5; 3)$, $n = mat(-3; 5)$

Let $B = {vec(a), vec(n)}$ for $RR^n$

Let $L:RR^2 -> RR^2$ be the mapping given by $L(vec(x)) = proj_(vec(a))(vec(x))$

1. $[L]$

  $L(vec(e)_1) = proj_(vec(a))(vec(e)_1) = frac(vec(e)_1 dot vec(a), ||vec(a)||^2) vec(a) = 5/34 mat(5; 3) = mat(25/34; 15/34)$


  $L(vec(e)_2) = proj_(vec(a))(vec(e)_2) = frac(vec(e)_1 dot vec(a), ||vec(a)||^2) vec(a) = 3/34 mat(5; 3) = mat(15/34; 9/34)$

  $[L] = mat(25/34, 15/34; 15/35, 9/34)$

\
\
2. $[L]_B$

  $L(vec(a)) &= vec(a) = vec(a) + 0 vec(n) \
  &= [L(vec(a))]_B = mat(1; 0)$

  $L(vec(n)) &= vec(0) = 0vec(a) + 0 vec(n) \
  &= [L(vec(a))]_B = mat(0; 0)$

  $[L]_B = mat(1, 0; 0, 0)$


#info[*Diagonal Matrix*\

A $n times n$ matrix $D$ is said to be a diagonal matrix if $d_(i j) = 0, forall i!=j$. Denoted $ "diag"(d_11, d_22, ..., d_(n m)) $
]

=== Similar Matrix
\
Let $A = [L] = [L(vec(e)_1) space ... space L(vec(e)_n)]$

Let $B = [L]_B$

Let $P = #v(0cm)_S P_B = [vec(v)_1 space ... space vec(v_n)]$ where $S = {vec(e)_1 space ... space vec(e)_n}$

Note that $[x]_S = #v(0cm)_S P_B [vec(x)]_B ==> vec(x) = P[vec(x)]_B ==> [vec(v)]_B = P^(-1) vec(x)$

$B &= [L]_B = [[L(vec(v)_1)]_B space ... space L(vec(v)_n)]_B \

&= [[[L] vec(v)_1]_B space ... space [[L] vec(v)_n]_B]
\
&= [[A vec(v)_1]_B space ... space [A vec(v)_n]_B]

\

&= [P^(-1) (A vec(v)_1) space ... space P^(-1) (A vec(v)_n)]
\

&= [(P^(-1)A) vec(v)_1 space ... space (P^(-1) A) vec(v)_n]
\

&= P^(-1) A [vec(v)_1 space ... space vec(v)_n]

\

&= P^(-1) A P "or" [L]_B = #v(0cm)_S P_B ^(-1) [L] #v(0cm)_S P_B
$

#info[*Similar Matrices*\

If $A$ and $B$ be $n times n$ matrices s.t. $P^(-1) A P = B$ for some invertible matrix $P$, t

1. $A$ is said to be *similar* to $B$

2. $"rank" A = "rank" B$

3. $"det" A = "det" B$

4. $"tr" A = "tr" B$ where $"tr" A$ is defined by $"tr" A = sum_(i=1)^n (a_(i i))$ and is called the *trace* of a matrix 

]
\
\
\
\
\

Note:

If $A$ is similar to $B$, $exists P$ invertible s.t. 

$B &= P^(-1) A P \ P B &= P P^(-1) A P \ P B &= A P \ A &= P B P^(-1)$



== Eigenvalues and Eigenvectors
\

With $A = [L]$ and $P = [vec(v)_1 ... vec(v)_n]$


$D = "diag"(lambda_1, lambda_2, ..., lambda_n) = [lambda_1 vec(v)_1 space lambda_2 vec(2) space ... space lambda_n vec(v)_n]$

We want $D = P^(-1) A P ==> P D = A P$

Setting $A P = P D$, we get 


$A [vec(v)_1 space ... space vec(v)_n] &= P [lambda_1 vec(e)_1 space ... space lambda_2 vec(e)_n]

\

[A vec(v)_1 space ... space A vec(v)_n] &= [P (lambda_1 vec(e)_1) space ... space P(lambda_2 vec(e)_n)] 

\

&= [lambda_1 (P vec(e)_1) space ... space lambda_n (P vec(e)_n)]

\

&= [lambda_1 vec(v)_1 space ... space lambda_n vec(v)_n] quad quad quad quad ("By Column Extraction Theorem")
$

$==> A vec(v)_1 = lambda_i vec(v)_i, forall i = 1, 2, ..., n$

Meaning that the effect of multiplying $A$ by $vec(v)_i$ is the same as scaling $vec(v)_i$ by some $lambda_i$
\
\

#info[*Eigenvalues, Eigenvectors, Eigenpairs*\

1. Let $A$ be $n times n$ matrix. If there exists a vector $vec(v)!= vec(0)$ s.t. $A vec(v) = lambda vec(v)$, then the scalar $lambda$ is the *eigenvalue* of $A$ and $vec(v)$ is called *eigenvectors* of $A$ corresponding to $lambda$. The pair $(lambda, vec(v))$ is called an *eigenpair*

2. Let $L:RR^n -> RR^n$ be a linear operator. If there exists a vector $vec(v) != vec(0)$ s.t. $L(vec(v)) = lambda vec(v)$, then $lambda$ is caled an *eigenvalue* of $L$ and $vec(v)$ is called an *eigenvector* of $L$ corresponding $lambda$

3. A scalar $lambda$ is an eigenvalue of a $n times n$ matrix $A$ if and only if $C_A(lambda) = 0$
]

How to find Eigenvalues


We need $vec(v) != vec(0)$ s.t. $A vec(v) = lambda vec(v)$

$A vec(v) - lambda vec(v) = vec(0) ==> = (A - lambda I) vec(v) = vec(0)$

To get non-zero $vec(v)$ solution, $"det"(A - lambda I) = 0$

\

Examples:

1. Let $A = mat(0, 1; 2, 1), vec(v) = mat(1;2)$

  $A vec(v) = mat(0, 1; 2, 1) mat(1;2) = mat(2;4)= 2 mat(1;2)$ = 2 vec(v).

  $lambda = 2$ is an eigenvalue of $A$ correspoind to the eigenvector $vec(v) = mat(1;2)$

\
2. Let $A = mat(0, 1; 3, -2)$, find eigenvalues and eigenvectors of $A$

  $0 &= "det" (A - lambda I) = "det" (mat(0, 1; 3, -2) - mat(lambda, 0; 0, lambda)) = mat(-lambda, 1; 3, -2-lambda) \
  
  &= -lambda (-2-lambda) - 3 = (lambda +3)(lambda-1) = 0 \

  ==> lambda_1 = 1, lambda_2 = -3$

  $A- lambda_1 I = mat(-1, 1; 3, -3) ~ mat(1, -1; 0, 0) ==> vec(v)_1 = t mat(1;1), t in RR \\{0}$


  $A- lambda_2 I = mat(3, 1; 3, 1) ~ mat(1, 1/3; 0, 0) ==> vec(v)_2 = s mat(-1; 3), s in RR \\{0}$

#info[*Eigenspace*\

Let $A$ be a $n times n$ matrix with eigenvalue $lambda$. We call the nullspace of $A - lambda I$ the *eigenspace* of $lambda$, denoted $E_lambda$

Let $A$ be a $n times n$ matrix with eigenvalue $lambda_1$.

- *Algebraic Multiplicity*
  - The algebraic multiplicity of $lambda_1$, denoted $a_lambda_1$, is the number of times that $lambda_1$ is a root of the characteristic polynomial $C(lambda)$. That is, if $C(lambda) = (lambda - lambda-1)^k C_1(lambda)$, where $C_1 (lambda_1) != 0$, then$a_lambda_1 = k$
- *Geometric Multiplicity*
 - The geometric multiplicity of $lambda_1$, denoted $g_lambda_1$, is the dimension of its eigenspace, $g_lambda_1 = "dim"(E_lambda_1)$


1. Let $A$ and $B$ be similar matrices, then $A$ and $B$ have the same characteristic polynomial, and hence the same eigenvalue.

2. If $A$ is a $n times n$ matrix with the eigenvalue $lambda_1$, then $1<= g_lambda_1 <=a_lambda_1$

]

Examples:

Let $A = mat(0, 1, 1; 1, 0, 1; 1, 1,0)$. Find the eigenvalues of $A$, bases for the corresponding eigenspace, state the geometric and algebraic multiplicity of each eigenvalue.
  
  $0 &= "det"(A - lambda I) = "det" (mat(-lambda, 1, 1; 1, -lambda, 1; 1, 1, -lambda))\
  
     &= - lambda "det" mat(-lambda, 1; 1, -lambda) - "det" mat(1, 1; 1, -lambda) + "det" mat(1, -lambda; 1, 1) = -lambda (lambda-1)(lambda+1) + (lambda+1) + (lambda+1) \
     
     &= -(lambda+1)(lambda^2 - lambda - 2) = -(lambda+1)^2(lambda-2)
     $
  $==> lambda_1 = -1, lambda_2 = 2$

  $A - lambda_1 I = mat(1, 1, 1; 1, 1, 1;, 1, 1, 1) ~ mat(1, 1, 1; 0, 0, 0; 0, 0, 0) ==> s mat(-1; 1; 0) + t mat(-1;0; 1) ==> B_lambda_1 {mat(-1; 1; 0), mat(-1; 0; 1)}$. 
  
  Bases for $lambda_1 = "Span" B_lambda_1$

  
  $A - lambda_2 I  ==> r mat(1; 1; 1) ==> B_lambda_2 {mat(1; 1; 1)}$. 
  
  Bases for $lambda_2 = "Span" B_lambda_2$


  For $lambda_1 = -1, a_lambda_1 = 2, g_lambda_1 = 2$

  For $lambda_2 = 2 , a_lambda_1 = 1, g_lambda_1 = 1$

#proof[

Eigenspace Theorem 1

Suppose that $exists P ("invertible")$ s.t. $B = P^(-1) A P$, then 

$B - lambda I &= P^(-1) A P - lambda I = P^(-1) A P - lambda P^(-1) P \

&= P^(-1) A P - lambda P^(-1) I P = P^(-1) (A P - lambda I P ) = P^(-1) ((A - lambda I)P) = A - lambda I
$

Thus $"det" B - lambda I = "det" A- lambda I$

]

#align(right)[$square$]

== Diagonalization

#info[*Diagonalization Theorem*\

A $n times n$ matrix $A in M_(n times n)(RR)$ is said to be *diagonalizable* if $A$ is similar to a diagonal matrix $D in M_(n times n)(RR)$. If $P^(-1) A P = D$, then $P$ diagonalizes $A$.

- A $n times n$ matrix $A$ is diagonalizable (over $RR$) if and only if there exists a basis ${vec(v)_1, ..., vec(v)_n}$ for $RR^n$ of eigenvector of $A$

- If $A$ is a $n times n$ matrix with eigenpairs $(lambda_1, vec(v)_1), ..., (lambda_k, vec(v)_k)$ where $lambda_i != lambda_j$ for $i != j$, then ${vec(v)_1, ..., vec(v)_k}$ is linearly independent.

- If $A$ is a $n times n$ matrix with distinct eigenvalues $lambda_1, ..., lambda_k$ and $B_i = {vec(v)_(i, 1), ..., vec(v)_(i, g_lambda_i)}$ is a basis for the eigenspace of $lambda_i$ for $1<=i<=k$, then $B_1 union B_2 union ... union B_k$ is a linearly independent set

- If $A$ is a $n times n$ matrix with $n$ distinct eigenvalues, then $A$ is diagonalizable.

*Diagonalizability Test*

If $A$ is a $n times n$ matrix whose characteristic polynomial factors as $ C_A (lambda) = (lambda-lambda_1)^(a_lambda_1) ... (lambda - lambda_k)^(a_lambda_k) $

where $lambda_1, ..., lambda_k$ are the distinct eigenvalues of $A$, then $A$ is diagonalizable if and only if $g_lambda_i = a_lambda_i$ for $1<= i <= k$.

*Lemma*

If $A$ is a $n times n$ matrix with $n$ distinct eigenvalues, then $A$ is diagonalizable.

*Theorem*

- If $lambda_1, ..., lambda_n$ are all the $n$ eigenvalues of a $n times n$ matrix $A$(repeated according to algebraic multiplicity), then $ "det" A = (lambda_1) ... (lambda_n) "and" "tr" A = lambda_1 + ... + lambda_n $
]

Example:

Let $A = mat(2, 2, 2; 2, -2, 0; 2, 0, 1)$

  Diagonalize $A$ if possible, that is, for an invertible matrix $P$ and a diagonal matrix $D$ s.t. 
  
  $P A P^(-1) = D$

  $C(lambda) = 0 ==> 0 = "det"(A - lambda I) = "det"mat(2-lambda, 2, 2; 2, -2-lambda, 0; 2 , 0, 1-lambda) = -lambda (lambda - 4)(lambda +3)$
  
  $==> lambda_1 = 0, lambda_2 = 4, lambda_3 = -3$ are eignvalues of $A$

  Since $A$ has 3 distinct eigenvalues, thus it is diagonalizable

  $lambda_1 = 0 ==>mat(2, 2, 2; 2, -2, 0; 2, 0, 1) ~ mat(1, 0, 1/2; 0, 1, 1/2; 0, 0, 0) ==> vec(v) = s mat(1; 1;-2), s in RR$

  $B_1 = {mat(1; 1; -2)}$ is a basis for $E_lambda_1$

  $lambda_2 = 4 ==>mat(-2, 2, 2; 2, -6, 0; 2, 0, -3) ~ mat(1, 0, -3/2; 0, 1, -1/2; 0, 0, 0) ==> vec(v) = t mat(3; 1;2), t in RR$

  $B_2 = {mat(3; 1; 2)}$ is a basis for $E_lambda_2$

  $lambda_3 = -3 ==>mat(5, 2, 2; 2, 1, 0; 2, 0, 4) ~ mat(1, 0, 2; 0,1, -4; 0, 0, 0) ==> vec(v) = q mat(-2; 4; 1), q in RR$

  $B_3 = {mat(-2; 4; 1)}$ is a basis for $E_lambda_3$

  Let $P = [vec(v)_1 space vec(v)_2 space vec(v)_3] = mat(1, 3, -2; 1, 1, 4; -2, 2, 1)$, $D = mat(0, 0, 0; 0, 4, 0; 0, 0, -3)$

== Powers of Matrices

#info[*Powers of Matrices*\
Let $A$ be a $n times n$ matrix. If there exists a matri $P$ and diagonal matrix $D$ s.t. $ P^(-1) A P = D$, then $ A^k = P D^k P^(-1) $

]

#proof[
$D = P^(-1) A P ==> A = P D P^(-1) ==> \

A^k = (P D P^(-1))^k = (P D P^(-1)) (P D P^(-1))  (P D P^(-1)) ... (P D P^(-1)) = P D (P^(-1)  P) D (P^(-1) P)  ... (P^(-1)P)D P^(-1) $

$= P D^k P^(-1)$
]

#align(right)[$square$]

== Complex Diagonalization

== END OF FINAL
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


#info[*Eigenvalues, Eigenvectors, Eigenpairs*\

1. Let $A$ be $n times n$ matrix. If there exists a vector $vec(v)!= vec(0)$ s.t. $A vec(v) = lambda vec(v)$, then the scalar $lambda$ is the *eigenvalue* of $A$ and $vec(v)$ is called *eigenvectors* of $A$ corresponding to $lambda$. The pair $(lambda, vec(v))$ is called an *eigenpair*

2. Let $L:RR^n -> RR^n$ be a linear operator. If there exists a vector $vec(v) != vec(0)$ s.t. $L(vec(v)) = lambda vec(v)$, then $lambda$ is caled an *eigenvalue* of $L$ and $vec(v)$ is called an *eigenvector* of $L$ corresponding $lambda$
]

How to find Eigenvalues


We need $vec(v) != vec(0)$ s.t. $A vec(v) = lambda vec(v)$

$A vec(v) - lambda vec(v) = vec(0) ==> = (A - lambda I) vec(v) = vec(0)$

To get non-zero $vec(v)$ solution, $"det"(A - lambda I) = 0$
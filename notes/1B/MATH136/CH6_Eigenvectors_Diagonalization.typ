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



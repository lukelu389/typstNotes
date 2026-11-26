#import "../../../preamble.typ": *
#show: conf
#import "@preview/diverential:0.2.0": *
#import "@preview/physica:0.9.8": *
#let strut(h) = box(height: h, width: 0pt)
#let Title = "CH 6 - Singular Value Decomposition"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

#thm[*Singular Value Decomposition* \ 

Let $A in M_(m times n) (FF)$. Then there exist $U$ is an unitary matrix s.t 
$ A = U Sigma V^*  \
(m times n) = (m times m) (m times n) (n times n)
$
]

*Note*: a diagonal $m times n$ matrix looks like $mat(sigma_1, 0, 0; 0, sigma_2, 0; 0, 0, sigma_3; 0, 0, 0; ..., ..., ...)$ or $mat(sigma_1, 0, 0, ...; 0, sigma_2, 0, ...)$

*Idea of SVD*:

We get $A = U mat(sigma_1, 0, 0, ...; 0, sigma_2, 0, ...; ..., ..., ..., ...)V^*$, if $sigma_3$ is small, we can delete it and we would not need many information since they are negligible

Key Idea:

We start with $A = U Sigma V^*$ with $U$ unitary and $Sigma$ diagonal and try to reverse engineer.

$A^* = (U Sigma V^*)^*  = V Sigma^* U^*$

$A^* A = (V Sigma^* U^*)(U Sigma V^*) = V Sigma^* (U^* U) Sigma V^* =  V (Sigma^* Sigma) V^* $ 

In general, $Sigma^* Sigma$ will be $n times n$ diagonal nonneagive real matrix

We get $A^* A = V mat(|sigma_1|^2, 0, ...; 0, |sigma_2|^2, ...;..., ..., ...)V^*$

*Procedure*

Start with $A^* A$ and unitarily diagonalize it: $A^* A ==> V D V^*$, obtaining $A, Sigma, V^*$ where $Sigma_(i i)$ has each value of $sqrt(D_(i i))$

Then we solve $A = U Sigma V^*$

#thm[
*Technical Facts* \
 
Let $A in M_(m times n) (FF)$

1. $A^* A$ is unitarily diagonalizable
2. The eigenvalues of $A^* A$ are real and nonnegative, listed in descending order by convention
3. $"Null"(A^* A) = "Null"(A)$

4. $"rank"(A^* A) = "rank"(A)$
5. $"rank"(A)$ is the number of non-zero eigenvalues of $A^* A$]

#proof[
  1. Check $(A^* A)^* = A^* A$ by Spectral Theorem, $A^* A$ is self-adjoint, defnitely normal

  2. Since $A^* A$ is self-adjoint, its eigenvalues are real. 
  
    Let $lambda$ be an eigenvalue of $A^* A$ with eigenvector $vec(x)!= vec(0)$. 
  
    Therefore $A^* A vec(x) = lambda vec(x)$, $ip(A^* A vec(x), A^* A vec(x)) = ip(lambda vec(x), lambda vec(x))  ==> ip(A vec(x), A vec(x)) = lambda ip(vec(x), vec(x)) ==>lambda =  ip(A vec(x), A vec(x))/ ip(vec(x), vec(x)) >=0$ by positive definite and $vec(x)!=0$, that is $ ip(vec(x), vec(x))!=0$
  3. $"Null"(A^* A) subset.eq "Null"(A)$, let $vec(x) in "Null"(A^* A)$ so $A^* A vec(x) = vec(0)$. 

    $ip(A^* A vec(x), vec(x)) = ip(vec(0), vec(x)) ==> ip(A vec(x), A vec(x)) = 0 ==> A vec(x) = 0 $

    Converse can be achieved similarily.

  4. By rank-nullity theorem ... 

  5. Let the eignevalues of $A^* A$ be $lambda_1 >= lambda_2 >= ...>= lambda_r$. We know $A^* A = "diag"(lambda_1, lambda_2, ..., lambda_r, 0, ...)$. So the $"rank"(A) = "rank"(A^* A) = r$ 
]
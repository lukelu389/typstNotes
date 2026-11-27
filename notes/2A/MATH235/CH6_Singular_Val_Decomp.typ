#import "../../../preamble.typ": *
#show: conf
#import "@preview/diverential:0.2.0": *
#import "@preview/physica:0.9.8": *
#let strut(h) = box(height: h, width: 0pt)
#let Title = "CH 6 - Singular Value Decomposition"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

#thm[*Singular Value Decomposition* \ 

Let $A in M_(m times n) (FF)$. Then there exist $U, V$ are unitary matrices and $Sigma$ with non-negative real $Sigma_(i j)$  s.t 
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

    $ip(A^* A vec(x), vec(x)) = ip(vec(0), vec(x)) ==> ip(A vec(x), A vec(x)) = 0 ==> A vec(x) = 0 $ Converse can be achieved similarily.

  4. By rank-nullity theorem ... 

  5. Let the eignevalues of $A^* A$ be $lambda_1 >= lambda_2 >= ...>= lambda_r$. We know $A^* A = "diag"(lambda_1, lambda_2, ..., lambda_r, 0, ...)$. So the $"rank"(A) = "rank"(A^* A) = r$ 
]

*Note*

$ A &= U Sigma V^* D  \
A^* A &= (V Sigma^T U^*) (U Sigma V^* ) \

&==> D =Sigma^T Sigma $


#defn[*Singular Value* \

  The *singular value* of $A$ are the non-negative square root of the eigenvalue of $A^* A$

  If $lambda_1>=...>= lambda_n>=0$ are the eigenvalue of $A^*A$, then $sigma_1 = sqrt(lambda_1), ...$ are the eigenvalue of $A$

  The *singluar vector* of $A$ are the eigenvector of $A^* A$.
  
  More precisely, $vec(v)$ is a *singular vector* responding to $sigma sqrt(lambda)$ if and only if $vec(v)$ is an eigenvector of $A^* A$ wit heigenvalue $lambda$
]

Example:

1. $A = mat(1, 0; 0, -2)$

  $==> A^* A = mat(1, 0; 0, 4) ==> lambda_1 =4, lambda_2= 1 ==> "singular values" sigma_1 = 2, sigma_2 = 1$, singular vector 
  
  $vec(v)_1 = mat(0;1), vec(v)_2 = mat(1;0)$ 

2. $A = mat(1, 1, 1; 0, -2, 2)$

  $A^* A = mat(1, 0; 1, -2; 1, 2) mat(1, 1, 1; 0, -2, 2) = mat(1, 1, 1; 1, 5, -3; 1, -3, 5)$ which is self-adjoint 

  $==> lambda_1 = 8, lambda_2 =3, lambda_3 = 0 ==> sigma_1 = sqrt(8), sigma_2 = sqrt(3), sigma_3 = 0$
  
  Note: rank $A = 2$ which is the number of non-zero eigenvalue of $A^* A$

  Eigenspaces $E_8 = "span"{mat(0;-1;1)}, E_3 = "span"{mat(1;1;1)}, E_0 = "span"{mat(-2;1;1)}$

  and singular vectors $mat(0;-1;1), mat(1;1;1), mat(-2;1;1)$ for singular values $sigma_1 = sqrt(8), sigma_2 = sqrt(3), sigma_3 = 0$ respectively

3. $A = mat(1, 1, 1, 1; 0, 0,0, 0;-1, -1, -1, -1)$ \

  We expect to see $"rank"A = 1$ non-zero singular value 

  $A^* A = mat(2, 2, 2, 2;2,2,2, 2;2, 2, 2, 2;2, 2, 2, 2) ==> lambda_1 = 8, lambda_2 = 0, lambda_3 = 0, lambda_4= 0, sigma_1 = sqrt(8), sigma_2 = sigma_3=sigma_4 = 0$

  $vec(v)_1 = mat(1;1;1;1), vec(v)_2 = mat(-1;1; 0; 0), vec(v)_3 = mat(-1;0;1;0), vec(v_4) = mat(-1;1;0;0)$

  Observations:

  1. The number of non-zero singular values of $A = r = "rank"A = "rank" A^*A$

  2. All singular vectors corresponding to distinct singular values are orthogonal (This is because eigenspaces are orthogonal since $A$ is unitarily diagonalizable)
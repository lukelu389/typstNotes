#import "../../../preamble.typ": *
#show: conf


#let Title = "CH 5 - Dimension and Coordiantes"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== Bases and Dimension

\
Exmaple:

Let $ SS = "Span"{mat(1; 2; 3), mat(-1; 3; 1), mat(2; -1; 2)}$, find a basis for $SS$

Let $A = mat(1, -1, 2; 2, 3, -1; 3, 1, 2)$. Then $SS = "Col"(A)$

$mat(1, -1, 2; 2, 3, -1; 3, 1, 2) ~ R_2 - 2R_1, R_3 - 3R_1 mat(1, -1, 2; 0, 5, -5; 0, 4, -4) ~ ... mat(1, 0,1; 0, 1, -1; 0, 0, 0) $

$"Col"(A) = "Span"{mat(1; 2; 3), mat(-1; 3; 1)}$ is a basis for $SS$

#info[*Existence of Bases*\

Every subspace $SS$ of $RR^n$ has a basis.
]

#info[*Dimensions*\
1. Let $SS$ be a subspace of $RR^n$. Let $B = {vec(v)_1, ..., vec(v)_k}$ be a basis for $SS$ and let $C = {vec(w)_1, ..., vec(w)_w}$ be a set in $SS$. If $m > k$, then $C$ is linearly dependent

2. If $B = {vec(v_1), ..., vec(v_k)}$ and $C = {vec(w_1), ..., vec(w_m)}$ are bases for $SS$, then $k = m$.

3. Let $SS$ be a subspace of $RR^n$. If $B = {vec(v_1), ..., vec(v)_k}$ is a basis for $SS$, then we say: $ "dim" SS = k $\
  If $SS = {vec(0)}$ is a trivial subspace, then $"dim" SS = 0$.

4.

]


#proof[
#1\

Since $B$ is a basis for $SS$ and $vec(w)_i in SS space forall i = 1,..., m, space exists$ coefficients $a_(i j)$ s.t. $ vec(w)_1 &= a_11 vec(v)_1 + a_12 vec(v)_2 + ... + a_(1 k) vec(v)_k \

vec(w)_2 &= a_21 vec(v)_1 + a_22 vec(v)_2 + ... + a_(2 k) vec(v)_k  \

... &= ...\

vec(w)_m &= a_(m 1) vec(v)_1 + a_(m 2) vec(v)_2 + ... + a_(m k) vec(v)_k 

$

Consider $vec(0) &= c_1 vec(w)_1 +c_2 vec(w)_2 + ... + c_m vec(v)_m \



 vec(0) &= c_1(a_11 vec(v)_1 + a_12 vec(v)_2 + ... + a_(1 k) vec(v)_k) + c_2(a_21 vec(v)_1 + a_22 vec(v)_2 + ... + a_(2 k) vec(v)_k ) + ... + c_m (a_(m 1) vec(v)_1 + a_(m 2) vec(v)_2 + ... + a_(m k) vec(v)_k ) \
 
 &= (c_1 a_11 + c_2 a_21 + ... + c_m a_(m 1)) vec(v)_1 + (c_1 a_12 + c_2 a_22 + ... + c_m a_(m 2)) vec(v)_2  + ... + (c_1 a_(1k) + c_2 a_(2k) + ... + c_m a_(m k)) vec(v)_k
 $
\
\
\
\
\
 Since $B$ is a basis,

 $ (c_1 a_11 + c_2 a_21 + ... + c_m a_(m 1))  &= 0 \
 
 
 (c_1 a_12 + c_2 a_22 + ... + c_m a_(m 2)) &=0 \

 ... &=...
 \

 (c_1 a_(1 k) + c_2 a_(2k) + ... + c_m a_(m k)) &= 0
  $

This is a homogenous linear system with coefficient matrix $A = mat(a_11, a_21, ..., a_(m _1); ... , ..., ..., ...;
a_(1 k), a(2 k), ..., a_(m k))$

$A$ is a $k times n$ matrix. Since $m >k$, there are more columns than rows.

There are at least one free variable $==>$ infinitely many solutions 

$==> c = {vec(w)_1, ..., vec(w)_m}$ is linearly dependent.
]

#align(right)[$square$]






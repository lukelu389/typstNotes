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

4. If $"dim" SS = k$
  1. A set of more than $k$ vectors in $SS$ must be linearly dependent.

  2. A set of more than $k$ vectors in $SS$ cannot span $SS$.

  3. A set of $k$ vectors in $SS$ is linearly independent if and only if it spans $SS$

5. If $SS$ is a $k$ dimensional subspace of $RR^n$ and ${vec(v)_1, ..., vec(v)_l}$ is a linearly independent set in $SS$ with $l<k$, then there exist vectors $vec(w)_(l+1), ..., vec(w)_k in SS$ s.t. ${vec(v)_1, ..., vec(v)_l ,vec(w)_(l+1), ..., vec(w)_k}$ is a basis for $SS$.

6. Let $SS_1, SS_2$ be subspace of $RR^n$ s.t. *$SS_1 subset.eq SS_2$*. Then $"dim" SS_1 <= "dim" SS_2$. Moreover $SS_1 = SS_2$ if and only if $"dim" SS_1 = "dim" SS_2$

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

#info[*Coordinates*\

1. If $B = {vec(v)_1, ..., vec(v)_k}$ is a basis for a subspace $SS$ of $RR^n$, then every $vec(v) in SS$ can be written as a unique linear combination of the vectors in $B$

2. Let $B = {vec(v)_1, ..., vec(v)_k}$ be a basis for a subspace $SS$ of $RR^n$. If $vec(v)= b_1 vec(v)_1 + ... + b_k vec(v)_k$, then $b_1, ..., b_k$ are called the *B-coordinates* of $vec(v)$, and we define the *B-coordinate vector* by $ [vec(v)]_B = mat(b_1; ...; b_k) $

3. If $SS$ is a subspace of $RR^n$ with basis $B = vec(v)_1, ..., vec(v)_k$, then for any $vec(v), vec(w) in SS$, $s, t in RR$ $ [s vec(v)+ t vec(w)]_B = s[vec(v)]_B +t[vec(w)]_B $

*Note*: the order of basis matter(i.e. ${vec(e)_1, vec(e)_2} != {vec(e)_2, vec(e)_1}$ )
]

Concept:

For an arbitrary $vec(x) = mat(x_1; x_2; ...; x_n) in RR^n$, we can write $vec(x) = x_1 vec(e)_1 + ... +. x_n vec(e)_n$

Which leads to #2.






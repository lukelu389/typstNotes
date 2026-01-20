#import "../../../preamble.typ": *
#show: conf

#let Title = "CH 1 — Vectors in Euclidean Space"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== Vector Addition and Scalar Multiplication
\
#info[*Vector* \

The set $RR^n$ is defined as ${accent(x, arrow) = mat(x_1; ...; x_n) |  x_1, ..., x_n in RR}$

\
A *vector* is an element $accent(x, arrow) = mat(x_1; ...; x_n)$ of $RR^n$

\
The row notation of $vec(v) = mat(v_1; v_2; ...; v_n)$ is $vec(v)=[v_1 space v_2 space v_3]^T$
]
\
#info[*Equality* \

We say that vectors $vec(w) = mat(u_1; u_2; ...; u_n) in RR^m$ and $vec(v)=mat(v_1; v_2; ...; v_n)$ in $RR^n$ are *equal* 

if $n = m "and" u_i = v_i forall space i = 1, 2, ..., n.$ 

We denote it: $vec(w) = vec(v)$ 
]

#info[*Addition Properties*\
\

Let $vec(w) = mat(u_1; u_2; ...; u_n), vec(v) = mat(v_1; v_2; ...; v_n), vec(w) = mat(w_1; w_2; ...; w_n) in RR^n$. \

\

Then $vec(w)+vec(v) = mat(u_1; u_2; ...; u_n) + mat(v_1; v_2; ...; v_n) = mat(u_1+v_1; u_2+v_2; ...; u_n+v_n)$


1. $vec(w)+vec(v) = vec(v) + vec(w)$
2. $vec(w)+vec(v)+vec(w) = vec(w)+(vec(v)+vec(w))$
3. There is a zero *vector*, $vec(0)= [0 space 0 space 0 space ...  space 0]^T in RR^n$
4. $vec(v) + vec(0) = vec(v)$
5. $vec(v) + (- vec(v)) = 0$
]


#info[*Additive Inverse*\

Let $vec(w) = mat(u_1; u_2; ...; u_n), vec(v) = mat(v_1; v_2; ... ;v_n) in RR^n$. The additive inverse of $vec(w)$ denoted $-vec(w)$ is defined as $ -vec(w)=mat(-u_1; -u_2; ...; -u_n) $

$ vec(w) - vec(w) = vec(w) + (-vec(w)) = accent(0, arrow) $

$ vec(v)-vec(w) = vec(v) + (-vec(w)) = mat(v_1-u_1; v_2-u_2; ...; v_n-u_n) $
]

#info[*Scalar Multiplication*\

Let $vec(v) = mat(v_1; v_2; ... ;v_n), vec(w) in RR^n, c, d in RR.$ Then the scalar product $c vec(v) = mat(c v_1; c v_2; ...; c v_n) $

1. $(c+d) vec(v) = c vec(v) + d vec(v)$
2. $c (vec(w) + vec(v)) = c vec(w) + c vec(v)$
3. $0 vec(w) = accent(0, arrow)$
4. If $c vec(v) = accent(0, arrow)$ then $c = 0 or vec(v) = 0$
5. $c(d vec(v)) = (c d) vec(v)$
]

#info[*Linear Combination*\

For $vec(v_1), ..., vec(v_k) in RR^n$, and $c_1, ..., c_k in RR$ we call the expression $ c_1 vec(v_1) + c_2 vec(v_2) + ... + c_k vec(v_k) $ a *linear combination* of $vec(v_1), ..., vec(v_k)$.
]

Examples:\

1. Let $vec(u) = mat(2; 7), vec(v) = mat(-1; 3)$ then $2 vec(u) - 3 vec(v) = mat(4; 14) -+mat(3; -9) = mat(7; 5)$

2. Let $vec(u)= mat(1; 1), vec(v) = mat(2; 0)$. Is $vec(x) = mat(3; 2)$ a linear combination of $vec(u) "and" vec(v)$?

  We set $vec(x) = c_1 vec(u) + c_2 vec(v)$ and try to solve for $c_1, c_2$

  That is $mat(3; 2) = mat(c_1 + 2 c_2; c_1)$, we obtain $c_1 = 2, c_2 = 1/2$. So $vec(x)$ is a linear combination of $vec(u), vec(v)$

== Bases

#info[*Span*\

Let $cal(B) = {vec(v_1), ..., vec(v_k)}$ be a set of vectors in $RR^n$. We define the *span* of $cal(B)$ by $ "Span" cal(B) = {c_1 vec(v_1) + c_2 vec(v_2) + ... + c_k vec(v_k) | c_1, c_2, ... c_l in RR} $ We say that the set Span $cal(B)$ is spanned by $cal(B)$ adn that $cal(B)$ is a spanning set for Span $cal(B)$

Span might not cover the entire plane if

  - Vectors are linear dependent to each other
  - One of them is $vec(0)$
\

*Theorem*\

Let $vec(v_1), ..., vec(v_k) in RR^n$. Some vector $vec(v_i), 1<=i<=k,$ can be written as a linear combination of $vec(v_1), ..., vec(v)_(i-1), ..., vec(v_k)$ if and only if $ "Span"{vec(v_1), ..., vec(v_k)} = "Span"{vec(v_1), ..., vec(v)_(i-1), ..., vec(v_k)}$ 
]

#proof[]


Example:

Consider $vec(v_1) = mat(1;0), vec(v_2) = mat(0;1)$ 

Describe Span $vec(v_1), vec(v_2)$ geometrically.

$"Span" {vec(v_1), vec(v_2)} = "Span" {mat(1; 0), mat(0; 1)} = {c_1 mat(1; 0) + c_2 mat(1; 0) | c_1, c_2 in RR} = {mat(c_1; c_2) | c_1, c_2 in RR} = RR^2$  
\
\
#info[*Linear Dependence/Independence*\

A set of vectors ${vec(v_1), ..., vec(v_k)} in RR^n$ is said to be *linearly dependent* if there exist coefficients $c_1, ..., c_k$ not all zero such that $ vec(0) = c_1 vec(v_1) + ... + c_k vec(v_k) $

A set of vectors ${vec(v_1), ..., vec(v_k)} in RR^n$ is said to be *linearly Independent* if the only solution to $c_1, ..., c_k$ not all zero such that $ vec(0) = c_1 vec(v_1) + ... + c_k vec(v_k) $ is $c_1 = c_2 = ... = c_k =0$ (called *trivial solution*)
]

Examples:

1. Let $vec(u), vec(v) in RR^n$. Prove that ${vec(u), vec(v)}$ is linearly dependent $<==>$ at least one of $vec(u), vec(v)$ is a scalar multiple of the other.

\
\
\
\

  #proof[
  Let $vec(u), vec(v) in RR^n$

  1. Assume ${vec(u), vec(v)}$ is linearly dependent. Then $exists c_1, c_2 in RR$, not both zero s.t. $ c_1 vec(u) + c_2 vec(v) = vec(0) $
   WLOG, assume $c_1 !=0$ Then, $c_1 vec(u) = - c_2 vec(v) ==> vec(u) = - c_2/c_2 vec(v)$. Thus $vec(u)$ is a scalar multiple of $vec(v)$

  2. Assume WLOG $vec(u)$ is a scalar multiple of $vec(v)$. Then $exists a in RR$ s.t. $ vec(u) = a vec(v) ==> 1 vec(u)-a vec(v) = vec(0) $ Since $1!= 0, {vec(u), vec(v)}$ is linearly dependent.

 #align(right)[$square$] 

]

2. Is the set ${mat(1; 2; 0), mat(1; -1; 1). mat(2; 1; 1)}$ linearly independent? 

  \

  Consider the equation $c_1 mat(1; 2; 0) + c_2 mat(1; -1; 1)+ c_3 mat(2; 1; 1) = mat(0; 0; 0)$
  
  Which gives $cases(c_1 + c_2 + 2c_3 = 0, 2 c_1 -c_2+c_3 = 0, c_2+c_3 = 0)$
  \

  $ ==> c_2 = c_1 = -c_3$\. Thus we get a solution for any $c_3$. Pick $c_3 = -1 ==> c_2 = c_1 = 1$.

  Thus the set is linearly dependednt.


#info[*Linear Dependence Theorem*\
A set of vectors ${vec(v_1), ..., vec(v_k) in RR^n}$ is linearly dependent if and only if $ vec(v_i) in "Span" {vec(v_1), ..., vec(v)_(i-1), vec(v)_(i+1), ..., vec(v_k)} "for some" i, 1<=i<=k $
]

#info[*Zero Vector and Linear Dependence*\
If a set of vectors ${vec(v_1), ..., vec(v_k)}$ contains the zero vector, then it is linearly dependent.

Proof: 

Let $vec(v_i) = vec(0)$

$ 0 vec(v_1) + ... + 0 vec(v)_(i-1) + vec(v)_i + 0 vec(v)_(i+1) + 0 vec(v_k) = vec(0) $

#align(right)[$square$]
]


#info[*Basis and Standard Basis*\

*Basis*\

Let $S$ be a subset of $RR^n$. If ${vec(v_1), ..., vec(v_k)}$ is a linearly independent set of vectors in $RR^n$ s.t. $S = "Span"{vec(v_1), ..., vec(v_k)}$, then the set ${vec(v_1), ..., vec(v_k)}$is called a *basis* for $S$. 

We define a basis for the set ${vec(0)}$ to be the empty set

*Standard Basis*

In $RR^n$, let $accent(e_i, arrow)$ be the vector whose $i^("th")$ component is 1 with all other components 0. The set $Epsilon = {accent(e_1, arrow), accent(e_2, arrow), ..., accent(e_n, arrow)}$ is called the *standard basis for* $RR^n$

(i.e. $RR^3 "is" {accent(e_1, arrow), accent(e_2, arrow), accent(e_3, arrow)} = {mat(1; 0; 0), mat(0; 1; 0), mat(0; 0; 1)}$)

If $vec(v) = mat(v_1; v_2; ...; v_n) = v_1 accent(e_1, arrow) + v_2 accent(e_2, arrow) + ... + v_n accent(e_n, arrow)$ then we call $v_1, v_2, ..., v_n$ the *components of* $vec(v)$

]

\
Examples:

Is $B$ is a basis for $RR^2$

1. $B = {mat(1;0), mat(0; 1)}$. This set of vectors is linearly independent, thus is a standard basis for $RR^2$. 

 That is $"Span"{mat(1; 0), mat(0; 1)} = {c_1 mat(1; 0) + c_2 mat(0; 1)| c_1, c_2 in RR} = {mat(c_1; c_2) | c_1, c_2, in RR} = RR^2$

2. $B = {mat(1; 2), mat(3; 6)}$. Note that this set of vectors is linearly dependent as one is a scalar multiple of another, thus cannot be considered as a basis for $RR^2$

3. $B= {mat(1; 2), mat(3; 4)}$ is linearly independent since neither scalar multiple of another. We need to prove:

  - $"Span" B subset.eq RR^2$, which is obvious, since the vectors in $B$ are in $RR^2$ the linear combinatin of these will be $RR^2$
  - $RR^2 subset.eq "Span" B$, consider an arbitrary $vec(x) in RR^2 = mat(x_1; x_2) = c_1 mat(1; 2) + c_2 mat(3; 4)$ that is $mat(x_1; x_2) = mat(c_1+3 c_2; 2c_1 4c_2)$. 
  
    We obtain $cases(c_1 + 3c_2 = x_1, 2c_1 - 4c_2 = x_2) ==> c_1 = x_1 - 3c_2 ==> 2(x_1-3c_2) + 4c_2 = x_2 ==> c_2 = -1/2x_2+x_1 ==>$

    $c_1 = x-3(-1/2 x_2 + x_1 = -2x_1 + 3/2 x_2)$

    Therefore $RR^2 subset.eq "Span"B$

  That is $B$ is a standard basis for $RR^2$

\
\

#info[*Theorem*\

If $cal(B) = {vec(v_1), ..., vec(v_k)}$ is a basis for a subset $S$ of $RR^n$, then every vector $vec(x) in S$ can be written as a unique linear combination of the vectors in $cal(B)$
]

#proof[
 Let $vec(x) in S$ and assume $exists c_1,..., c_k, d_1, ..., d_k in RR$ s.t. $ vec(x) = c_1 vec(v_1) + ... + c_k vec(v_k)$ and $vec(x) = d_1 vec(v_1) + ... + d_k vec(v_k)$.

 Subtracting these two equations: $vec(0) = (c_1 - d_1) vec(v_1)+ ... + (c_k-d_k) vec(v_k)$, with ${vec(v_1), ..., vec(v_k)}$ is basis, thus linearly independent, so there is $(c_1-d_1) = ... = (c_k-d_k) = 0$, thus $vec(x)$ can be written as a uniue linear combination.
 #align(right)[$square$]
]
== Subspace 

#info[*Definition*\
A subset $SS$ of $RR^n$ is called a *subspace* of $RR^n$ if for every $vec(x), vec(y), vec(w) in SS$  and $c, d in RR$ we have 

1. $vec(x) + vec(y) in SS$

2. $(vec(x)+vec(y)) + vec(w)= vec(x)+(vec(y)+vec(w))$

3. $vec(x)+vec(y) = vec(y)+vec(x)$

4. $exists vec(0) in SS$ s.t. $vec(x) + vec(0) = vec(x) space forall vec(x) in SS$

5. For every $vec(x)in SS, exists (-vec(x) in SS)$ s.t. $vec(x)+(-vec(x))=vec(0)$

6. $c vec(x) in SS$

7. $c (d vec(x)) = (c d) vec(x)$

8. $(c+d) vec(x) = c vec(x) + d vec(x)$

9. $c (vec(x)+vec(y)) = c vec(x) + c vec(y)$

10. $1 vec(x) = vec(x)$
]

#info[*Subspace Test*\
Let $SS$ be a *non-empty* subset of $RR^n$. If $vec(x)+vec(y) in SS$ and $c vec(x) in SS space forall vec(x), vec(y) in SS$ and $c in RR$, then $SS$ is a subspace of $RR^n$

Be aware that $vec(0) in SS$
]
Examples:

1. Let $vec(u), vec(w) in RR^n$ and let $SS = "Span"{vec(u), vec(w)}$. Is $SS$ a subspace of $RR^n$?
  #proof[
  - Note that $vec(0) in SS$ since $vec(0) = 0 vec(u) + 0 vec(w) space forall vec(u), vec(w) in RR^n$.

  - Let $vec(x), vec(y) in SS, exists c_1, c_2, d_1, d_2 in RR $ s.t. $vec(x) = c_1 vec(u) + c_2vec(w), vec(y)= d_1 vec(u) + d_2 vec(w)$. 
    Then $vec(x) + vec(y) = c_1 vec(u) + c_2 vec(w)+ d_1 vec(u) + d_2 vec(w) = (c_1 + d_1) vec(u) + (c_2+d_2) vec(w)$. 
    
    Therefore $vec(x) + vec(y) in SS$

  - Let $c in RR$, then $c vec(x)= c (c_1 vec(u))+ (c_2 vec(w)) = (c c_1) vec(u) + (c c_2) vec(u) in SS$

  By Subspace Test, $SS in RR^n$
  #align(right)[$square$]
  
  ]

\
2. Let $SS = {vec(x) in RR^2 | vec(x)= r mat(1; 2) + mat(3; 4), r in RR}$. Is $SS$ a subsapce of $RR^2$?

  False

  #proof[

   For contradiction, assume $vec(0) in SS$, then $vec(0) = r mat(1; 2) + mat(3; 4)$

   That is $cases(r + 3 = 0, 2 r+ 4 = 0) ==> r = -3 and r = -2==>$ contradiction. Since $-3 != -2$, therefore $vec(0) in.not SS$

   Hence $SS$ is not a subspace of $RR^2$]

   #align(right)[$square$]
   

3. Let $SS = {mat(x_1; x_2; x_3) in RR^3 | x_1+2 x_2 = 0}.$ Is $SS$ a  subspace of $RR^3$?

  True
  
  #proof[

    - Note that $vec(0) = mat(0; 0; 0) "and" 0 + 2(0) = 0$, so $vec(0) in SS$

    - Let $vec(x)=mat(x_1; x_2; x_3), vec(y) = mat(y_1; y_2; y_3) in SS, c in RR$, then $x_1 + 2 x_2 = 0$ and $y_1 + 2 y_2 = 0$. 
     Then $vec(x)+vec(y) = mat(x_1+y_1; x_2+y_2; x_3+y_3)$ and $vec(x_1)+vec(y_1) + 2 (vec(x_1)+vec(y_1)) = vec(x_1) + vec(2x_2) + vec(y_1) + vec(2 y_2) = 0 ==> vec(x) + vec(y) in SS $


    - $c vec(x) = mat(c x_1; c x_2; c x_3) ==> c (x_1 + 2x_2) = c dot 0 = 0 ==> c vec(x) in SS$

  By Subspace Test, $SS in RR^3$ #align(right)[$square$]]

#info[*Theorem* 

If $vec(v_1), ..., vec(v_k) in RR^n, "then" SS = "Span"{vec(v_1), ..., vec(v_k)}$ is a subspace of $RR^n$

Note that the converse is also true. The proof will be given in CH5
]

Example:

Find $SS = {mat(a; b; c; d) | a-b+c=c} $

1. An arbitrary element $vec(x) in SS$ has form

 $vec(x) = mat(a; b; c; d) = mat(a; b; c; a-b+c) = mat(a; 0; 0; a) + mat(0; b; 0; -b) + mat(0; 0; c; c)  
 = a mat(1; 0; 0; 1) + b mat(0; 1; 0; -1) + c mat(0; 0; 1; 1)$

 Therefore $SS = "Span" B "where" B = {mat(1; 0; 0; 1), mat(0; 1; 0; -1), mat(0; 0; 1; 1)}$

2. We set $c_1 mat(1; 0; 0; 1) + c_2 mat(0; 1; 0; -1) + c_3 mat(0; 0; 1; 1)= mat(0; 0; 0; 0)$

  $==> c_1 = c_2 = c_3 = 0$

  Thus $B$ is linearly independent

Therefore $B$ is a basis for $SS$, that is dim$(B)$ =3 (since there are 3 vectors)



== Dot Product

#info[*Dot Product*\

Let $vec(u) = mat(u_1; u_2; ...; u_n)$, $vec(v) = mat(v_1; v_2; ...; v_n)$, $vec(w) = mat(w_1; w_2; ...; w_n)$ be vectors in $RR^n$. We defined their *dot product* by 

$ vec(u) dot vec(v) = u_1 v_1 + u_2 v_2 + ... + u_n v_n = sum_(i=1)^n u_i v_i $

1. $vec(w) dot vec(v) = vec(v) dot vec(w)$

2. $(vec(w) + vec(v)) dot vec(w) = vec(w) dot vec(w) + vec(v) dot vec(w)$

3. $(c vec(w)) dot vec(v) = c (vec(w) dot vec(v))$

4. $vec(w) dot vec(w) >= 0,$ with $vec(w) dot vec(w) = 0 <==> vec(w) = 0$

]

Example:

Let $vec(x) = mat(1; 2; 3; 4), y = mat(-1; 0; 1; 2), "then the dot product" vec(x) dot vec(y) = (1)(-1) + (2)(0) + (3)(1) + (4)(2)= 10$

#info[*Norms*

Let $vec(v), vec(w) in RR^n$

1. The *length* of vector $vec(w) "is" ||vec(w)|| = sqrt(vec(w) dot vec(w)) = sqrt(w_1^2 + ... + w_n^2)$

2. If $c in RR, vec(w) in RR^n$, then $||vec(w)|| = |c| ||vec(w)||$  

3. $vec(v)$ is a *unit vector* if $||vec(v)|| = 1$ 


4. Properties of norm
  1. $||vec(v)|| >=0$ and $||vec(v)|| = 0 <==> vec(v) = 0$

  2. $||c vec(v)|| = |c| ||vec(v)||$

  3. $|vec(v) dot vec(w)| <= ||vec(v)||||vec(w)||$

  4. $||vec(v)+vec(w)|| <= ||vec(v)|| + ||vec(w)||$
]

Examples:

1. Let $vec(x) = mat(1; 2; 3; 4), "then" ||vec(x)|| = sqrt(1^2+2^2+3^2+4^2) = sqrt(30)$
\

2. Let $vec(e_i) = mat(0; 0; ...; 0; 1; 0; ...; 0), "then" ||e_i|| = 1$

  This is an unit vector since all standard basis vectors are unit vectors
\
#info[*Orthogonality/Angle*\

1. *Normalization* is when some $vec(v)$ is a non-zero vector, $ accent(v, hat) = frac(vec(v) ,||vec(v)||) $ in the direction of $vec(v) $ by scaling $vec(v)$

2. With $vec(v) , vec(w) $ non-zero vectors. The angle $theta, 0 <= theta<=pi$ between $vec(v)$ is such that $ vec(w) dot vec(v) &=||vec(w)||||vec(v)|| cos theta, \ theta &= arccos((vec(w) dot vec(v)) / (||vec(w)||||vec(v)|| )) $

3. $vec(w), vec(v) in RR^n$ are *orthogonal/perpendicular* if $vec(w) dot vec(v) = 0$

  - Note that $vec(0)$ is orthogonal to any vector

4. A set of vectors $vec(v_1), ..., vec(v_k) in RR^n$ is called an orthogonal set if $vec(v_i) dot vec(v_j) = 0 space forall space i != j$

  - Any set of standard basis is an *orthonormal* set because the elements are orthogonal and their norm are all 1 
]

== The Cross Product in $RR^3$

#info[*Cross Products* 
\

Let $vec(u) = mat(u_1; u_2; u_3), vec(v) = mat(v_1;v_2;v_3), vec(w) = ... in RR^3$. 

The *cross product* of $vec(u), vec(v)$ is defined to be the vector in $RR^3$ given by $ vec(u) times vec(v) = mat(u_2 v_3 - u_3 v _2; u_3 v_1 - u_1 v_3; u_1 v_2 - u_2 v_1) $

]

#tip[Tricks for the Cross Product

\
- 1st coordinate: $mat(v_1 space w_1; v_2 space w_2; v_3  space w_3) ==>^("Ignore row 1")$ compute the difference of the diagonals $ v_2 w_3 - v_3 w_2$ 
\
- 2nd coordinate: $mat(v_1 space w_1; v_2 space w_2; v_3  space w_3) ==>^("Ignore row 2")$ compute the difference of the diagonals $ v_1 w_3 - v_3 w_1$ 

\
- 3rd coordinate: $mat(v_1 space w_1; v_2 space w_2; v_3  space w_3) ==>^("Ignore row 3")$ compute the difference of the diagonals $ v_1 w_2 - v_2 w_1$ 

]

#warn[*Cross Product*\

Let $vec(u), vec(v) in RR^3$

$ vec(u) times vec(v) != vec(v) times vec(u) $
]

Example:

Given vectors $vec(v), vec(w) in RR^3$ we want to find a vector $vec(n) in RR^3$ which is orthogonal to both.

What is, we want $vec(v) dot vec(n) = vec(w) dot vec(n) = 0 ==> vec(n) = mat(v_2 w_3 - v_3 w_2; v_3 w_1 - v_1 w_3; v_1 w_2 - v_2 w_1)$

#info[*Linearity of the Cross Product*


Let $c in RR$ and $vec(u), vec(v), vec(w) in RR^3$, then 

1. If $vec(n) = vec(v) times vec(u)$ then for any $vec(y) in "Span" {vec(v), vec(w)}$ we have $vec(y) dot vec(n) = 0$

2. $vec(v) times vec(u) = - vec(u) times vec(v)$

3. $vec(v) times vec(v) = vec(0)$

4. $vec(v) times vec(w) = vec(0)$ if and only if either $vec(v) = vec(0)$ or $vec(w)$ is a scalar multiple of $vec(v)$

5. $vec(u) times (vec(v) + vec(w)) = (vec(u) times vec(v)) + (vec(u) times vec(w))$

6. $vec(u) times c(vec(v)) = c(vec(u) times vec(v))$

7. $||vec(u) times vec(v)|| = ||vec(u)||||vec(v)|| |sin theta|$ where $theta$ is the angle between $vec(u)$ and $vec(v)$ 

]


== Scalar Equation of a plane

#info[*Definition of Scalar Equation of a Plane*
Let $vec(v), vec(w), vec(b) in RR^3$ with ${vec(v), vec(w)}$ being linearly independent and let $P$ be a plane in $RR^3$ with vector equation $vec(x) = s vec(v)+ t vec(w)+vec(b), s, t, in RR$. If $vec(n) = vec(v) times vec(w)$, then an qeuation for the plane is $ (vec(x)- vec(b)) dot vec(n) = 0 $
 ]
== Projection

#info[*Projection*\

Let $vec(v), vec(w) in RR^n$ with $vec(w) !=0$. 

1. The *projection* of $vec(v)$ onto $vec(w)$ is defined by $ proj_vec(w) (vec(v)) = frac(vec(v) dot vec(w), ||vec(w)||^2) vec(w) = frac(vec(v) dot vec(w), vec(w) dot vec(w)) vec(w) $

 We also refer to this as the *projection of $vec(v)$ in the $vec(w)$ direction*

 Illustration of $proj_vec(w) (vec(v))$:
 #align(center)[#image("../../../pictures/lineara1.png")]


2. We refer to the quantity $ ||vec(v)|| cos theta = vec(v) dot accent(w, hat) $ as the *component* (or scalar component) *of $vec(v)$ along $vec(w)$*

3. The *perpendicular* of $vec(v)$ onto $vec(w)$ is defined by $"perp"_vec(w) (vec(v)) = vec(v) - proj_vec(w) (vec(v))$

4. The projection and the perpendicular of a vector $vec(v)$ onto $vec(w)$ are orthogonal; that is $ "perp"_vec(w) (vec(v)) dot proj_vec(w) (vec(v)) = 0 $
]

== Vectors in $CC^n$

#info[*Vectors in $CC^n$*\

The set $CC^n$ is defined as ${accent(z, arrow) = mat(z_1; ...; z_n): z_1, ..., z_n in CC}$

The *vector* is an element $accent(z, arrow) = mat(z_1; ...; z_n) "of" CC^n$

In $CC^n$, let $accent(e_i, arrow)$ be the vector whose $i^("th")$ component is 1 with all other components 0. The set ${accent(e_1, arrow), accent(e_2, arrow), ..., accent(e_n, arrow)}$ is called the *standard basis for* $CC^n$
]

== Standard Inner Product in $CC^n$

#info[*Standard inner product*\

Let $c in CC "and" vec(u), vec(v), vec(w) in CC^n$


The *standard inner product* of $vec(v) = mat(v_1; v_2; ...; v_n), vec(w) = mat(w_1; w_2; ...; w_n)$ is $ ip(vec(v), vec(w)) = v_1 overline(w_1) + v_2 overline(w_2) + ... + v_n overline(w_n) $

1. $ip(vec(u), vec(w)) = overline(ip(vec(v), vec(w)))$

2. $ip(vec(u)+vec(v), vec(w)) = ip(vec(u), vec(w)) + ip(vec(v), vec(w))$

3. $ip(c vec(u), vec(v)) = c ip(vec(u), vec(v))$

4. $ip(vec(v), vec(v)) >= 0$, with $ip(vec(v), vec(v)) = 0$ if and only if $vec(v) = vec(0)$

5. The length: $||vec(v)|| = sqrt(ip(vec(v), vec(v)))$

6. $vec(w), vec(v)$ are *orthogonal/perpendicular* if $ip(vec(w), vec(v)) = 0$

7. With $vec(w)!=0$. The *projection of $vec(v)$ onto $vec(w)$* is defined by $ proj_vec(w) (vec(v)) = frac(ip(vec(v), vec(w)), ||vec(w)||^2) = ip(vec(v), vec(w)) accent(w, hat) $
]


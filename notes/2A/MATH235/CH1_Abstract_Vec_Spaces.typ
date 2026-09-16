#import "../../../preamble.typ": *
#show: conf

#let Title = "CH 1 — Abstract Vector Spaces"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== 1.1 Vector Spaces
Ideas: $RR^n$ is useful. There are other objects that "behave" and "look" like $RR^n$

Examples:

1. $V=P_b (FF) = {a_0 + a_1x +a_2 x^2 + ... + a_n x^n : a_i in FF}$

  Polynomial degree $<= n$: 
  
  Additive property
  $ a_0+a_1x++...+a_n x^n + b_0+b_1x++...+b_n x^n = (a_0+b_0) + (a_1+b_1)x+...+(a_n+b_n) x^n $

  Scalar Multiplicative property

  $ c(a_0+a_1x+...+a_n x^n ) = c a_0 +c a_1x +...+c a_n x^n $


2. $V = M_(m times n) (FF) = {mat(a_11, ..., a_(1 n); ..., ..., ...; a_(m 1), ..., a_(m n)) : a_(i j) in FF}$

  Same properties for matrices like the above

  Observation: #table(
    columns: 3, 
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    [$RR^4$], [$P_3 (RR)$], [$M_(2 times 2) (RR)$],
    [$mat(a; b; c; d)$], [\ $a+b x+c x^2+d x^3$], [\ $mat(a, b; c, d)$]
    )

  Notice that the above not only "look alike", they share similar operations (addition and scalar multiplication)

  This is isomorphism


3. $V = F(RR, RR) = {"functions", f:RR -> RR}$

  We can add and scalar multiply 

  Question: Does $F(RR, RR)$ is isomorphic to $RR^n$

  ANS: No, the reason will be learned later in the course. The current explanation is that $F(RR, RR)$ is an infinity-demensioned vector space.


#defn[*Vector Space*\

  A vector space over $FF$ is a set $V$ together  with two operations $cases("addition"(+),   "scalar multiplication"(dot )) space $ s.t. 
  
  $ forall vec(x), vec(y), space vec(x)+ vec(y) subset.eq V $

  $ forall c in FF, c vec(x) subset.eq V $ 

  Furthermore, the following conditions must hold for $forall vec(x), vec(y), vec(z) in V, c, t in FF$

  1. $vec(x) + vec(y) = vec(y) + vec(x)$
  2. $(vec(x) + vec(y)) + vec(z) = vec(x) + (vec(y) + vec(z))$
  3. $c(vec(x)+vec(y)) = c vec(x) + c vec(y)$
  4. $c(t vec(x)) = c t (vec(x))$
  5. $(s+t) dot vec(x) = s dot vec(x) + t dot vec(x)$
  6. $1 dot vec(x) = vec(x)$
  7. $exists vec(0) in V$ s.t. $vec(x) + vec(0) = vec(x)$
  8. $forall vec(x) in V, exists - vec(x) in V$ s.t. $vec(x) + (-vec(x)) = vec(0)$ 
]

#warn[*Zero Vector* and *Additive Inverse*

*Zero vector $vec(0)$* is not the vector with every entry being 0. It is subject to change with its corresponding vector space

*Additive Inverse $-vec(x)$* are not the vector with every entry being the negation of its origin entry. Refer to the Axiom to determine the corresponding additive inverse

Both $vec(0) "and" -vec(x)$ are *unique* in their corresponding vector space
]

*Note*: 

1. The elements in $V$ are called vectors
2. We omit the "$dot$" in $s dot vec(x)$ to $s vec(x)$
3. We write $vec(x) - vec(y)$ instead of $vec(x)+(-vec(y))$
4. $vec(0)$ is called the *zero vector*
5. $- vec(x)$ is called the *additive inverse* of $vec(x)$

Examples:

1. $V = FF^n = {mat(x_1; ...; x_n) : x_i in FF}$,  $V = M_(m times n)(FF) = {mat(a_11, ..., a_(1 n); ..., ..., ...; a_(m 1), ..., a_(m n)): a_(i j). in FF}$, \

  and $V = P_n (FF) = {a_0+a_1x++...+a_n x^n : a_i in FF}$ with addition and scalar multiplication be usual operations.

  Here, $vec(0) = mat(0; ...; 0) mat(0, ..., 0; ..., ..., ...; 0, ..., 0), 0+0x+...+0x^n$

2. $V = F(RR, RR) = {"functions", f:RR -> RR}$ with addition and scalar multiplication be usual operations.
  
  Here, $vec(0) = $the zero function, i.e. $z(x)=0$
  
  \
  \
  \

3. $V = RR^2$

  Define addition and scalar multiplication by 
  
  $mat(x_1; x_2) + mat(y_1; y_2) = mat(x_1+y_2; x_2+y_1)$ 
  \
  \

  $s mat(x_1;x_2) = mat(s x_2; s x_1)$

  This is NOT a vector space. 

  $1 vec(x) != vec(x) ==> mat(x_1;x_2) != mat(x_2; x_1)$

  $vec(x)+vec(y) != vec(y)+vec(x)$

4. $V = RR^2$

  Define addition and scalar multiplication by 
  
  $mat(x_1; x_2) + mat(y_1; y_2) = mat(x_1+y_1-1; x_2+y_2+1)$ 
  \
  \

  $s mat(x_1;x_2) = mat(s x_1+s-1; s x_2-s+1)$

  Check axiom 7 and 8 as 1-6 are easy and straightforward

  Axiom 7: \
    Note that in this case $mat(0; ...; 0)$ is not the zero vector for this vector space! \

    We suppose $mat(z_1; z_2)$, 
    
    then $vec(x)+vec(0) = vec(x) <==> mat(x_1; x_2) + mat(z_1; z_2) = mat(x_1; x_2) <==> mat(x_1+z_1-1; x_2+z_2+1) = mat(x_1; x_2)==> vec(z) = mat(1; -1) in V$


  \
  Axiom 8: \
    
    We suppose $mat(z_1; z_2)$
    
    then $vec(x)+vec(z) = vec(0) <==> mat(x_1; x_2) + mat(z_1; z_2) = mat(1; -1) <==> mat(x_1+z_1-1; x_2+z_2+1) = mat(1; -1)==> vec(z) = mat(x_1+2; x_2-2)$

    $- vec(x) = mat(-x_1 -2; -x_2 +2)$

5. Proof uniqueness of $vec(0)$

  Let $V$ be a vector space. Suppose $vec(0)_1, vec(0)_2 in V$ satisfy \

  $vec(0)_1+vec(x) = vec(x), vec(x) in V$ 
  
  $vec(0)_2+vec(x) = vec(x), vec(x) in V$

  We want $vec(0)_1 = vec(0)_2$

  #proof[
    $vec(0)_2 + vec(x) + vec(0)_1 = vec(x) ==> vec(0)_2 + vec(0)_1 = vec(0)_1 $

    $vec(0)_1 + vec(x) + vec(0)_2 = vec(x) ==> vec(0)_1 + vec(0)_2 = vec(0)_2$

    Together, $vec(0)_1 + vec(0)_2 = vec(0)_2 + vec(0)_1 = vec(0)_1 = vec(0)_2$
  ]
  #align(right)[$square$]
    
    \
6. Proof $0 vec(x) = vec(0), forall vec(x) in V$ 
  
  $0 vec(x) = (0+0) vec(x)= 0 vec(x)+ 0vec(x) ==> vec(0) = 0vec(x)$

\
== 1.2 Subspaces and Spans

\

#defn[*Subspace*\

Let $V$ be a vector space over $FF$ and $W subset.eq V$. We say *subspace* of $V$ if $W$ is also a vector space over $FF$ with same addition and scalar multiplication as for $V$
]

#info[*Subspace Test* \ 
  Let $V$ be a vector space over $FF$. Let $W subset.eq V$. 
  
  Then $W$ is a subspace of $V$ if and only if:

  1. $vec(0) in W$

  2. $W$ is closed under addition (if $vec(x), vec(y) in W, vec(x)+vec(y) in W$)

  3. $W$ is closed under scalar multiplicaiton(if $vec(x)in W, c in FF, c vec(x) in W$)
]

\
Example: 

1. Let $W = {p(x) in P_0 (RR): p'(0) = 0}$

  $W$ is a vector space with usual $+$ and $dot$ of polynomials

  Most of the axioms are obvious for all polynomials.

  We need to check axioms that are less intuitive:

  1. Is the zero vector in $W$? 
  2. Is $W$ closed under addition?
  3. Is $W$ closed under scalar multiplication?
  #proof[
    Let $V in P_n (RR)$

    1. Is the zero vector in $W$? 

      $0+0x+...+0x^n = z(vec(x))$

      Clearly, $z'(0) = 0$ So $z(vec(x)) in W$

    2. Is $W$ closed under addition?

      Let $p(x), q(x) in W$

      $(p+q)'(0) =  p'(0) + q'(0) = 0 in W$
    3. Is $W$ closed under scalar multiplication?

      Let $p(x) in W, s in RR$.

      $(s p)'(0) = s (p'(0)) = s 0 = 0 in W$
  ]
  #align(right)[$square$]

2. Let $V$ be any vector space. 

  $W = V$ is a subspace. $W{vec(0)}$ is a subspace.

3. $V = FF^n$

  The origin is a subspace. \
  The lines pass through origin are subspace. \
  The planes pass through origin are subspace. \

4. $V = P_3 (FF)$, $W = {a+b x+c x^2+ d x^3:b>=0}$

  $W$ is not a subspace: not closed under scalar multiplicaiton.
  
  $2x in W, -1(2 x) in.not W$

4. $V = P_n (FF), W = {p(x) in V: p''(1)+p'(2) = 2}$
  
  $W$ is not a subspace since $vec(0) in.not W$

*Note*:

- A tip is that *non-homogeneous and equations* are usually *not* a subspace

- *Linear homogeneous* equations are usually a subspace

#defn[*Span* \ 

Let $V$ be a vector space. Let $vec(v)_1, vec(v)_2, ..., vec(v)_k in V$.

Then the *span* of $vec(v)_1, ..., vec(v)_k$ is the set 

$ W = "span"{vec(v)_1, ..., vec(v)_k} = {a_1 vec(v)_1 + ... + a_k vec(v)_k: a_i in FF} $

*Theorem*

Let $V$ be a vector space, let $vec(v)_1, ..., vec(v)_k$ then $W = "span"{vec(v)_1, ..., vec(v)_k}$ is a subspace of $V$
]

*Note*: the example (1) below gives a second proof that ${A in M_(2 times 2): "tr"(A) = 0}$ is a subspace of $M_(2 times 2) (FF)$


Example:

1. $V = M_(n times n)(FF)$, $W = {A in M_(n times n) : "trace"(A) = 0}$

  Recall that $"trace"(A)$ is the sum of the diagonal (i.e. $mat(a, b; c, d) ==> "trace"(A) = a+d$)

  Claim $W$ is a subspace of $V$

  Recall that 
   - $"trace"(A+B) = "trace"(A) + "trace"(B) $

   - $"trace"(c A) = c "trace"(A), c in RR$

  #proof[
    1. $vec(0) = mat(0, ..., 0; ..., ..., ...; 0, ..., 0), "trace"(vec(0)) = 0+...+0 = 0 ==> vec(0) in W$

    2. Let $A, B in W, c in FF$. 

      $"trace"(c A + B) = "trace"(c A)+ "trace"(B) = c "trace"(A)+ "trace"(B) = 0$ since $A, B in W$

      Thus $c A + B in W$, closed by addition and scalar multiplication.
#align(right)[$square$]
  ]

  Take $W = {A in M_(2 times 2) (FF): "trace"(A) = 0}$

  For an arbitrary $A = mat(a, b; c, d) in W$
  
  $ <==> "trace"(A) = 0 <==> a+d = 0 <==> d = -a <==> A = mat(a, b; c, d) = mat(a, b; c, -a) (a, b, c in FF)$ 

  So $W = {mat(a, b; c, -a) : a, b, c in FF} = {mat(a, 0; 0, -a) + mat(o, b; 0, 0)+mat(0, 0; c, 0): a, b, c in FF}$ 

  $==> W = "span"{mat(1, 0; 0, -1), mat(0, 1; 0, 0), mat(0, 0; 1, 0)}$

  We can conclude that most of the time *imposing condition decreases degrees of freedom*


*Note*: differentiation and equation are *linear* operations

2. $V = P_2 (RR), W = {p(x) in V: p'(1) = p(-1)}$

  For $W$, an arbitrary $p(x) = a + b x + c x^2 in W $

  $p'(x) = b + 2 c x ==> p'(1) = b+2c, p(-1)= a-b+c$

  Then $p'(1) = p(1) <==> b + 2 c = a-b+c <==> a-2b+c = 0$

  $<==> a = 2b+c <==> p(x) = a + b x+ c x^2 = (2b+c)^2+ b x+ c x^2$

  Now $W = {(2b+c)+b x+ c x^2:b, c in FF} = {b(2 + x) + c(1+x^2): b, c in FF}$

  So $W = "span"{2+x, 1+x^2}$

  Note:
  
  1. Writing a subspace $W$ in the form $W = "span"{vec(v)_1, ..., vec(v)_k}$ is that it is easier to write down vectors in $W$

  2. Having $W = "span"{vec(v)_1, ..., vec(v)_k}$ allows us to detect the $"dim"W$. Here is a catch, some spanning set are better than others

    (i.e. $W = "span"{2+x, 1+x^2}$, instead someone came up with 

    $W="span"{2+x, 1+x^2, 3+x+x^2}$, the latter one, the span is linearly dependent)

  

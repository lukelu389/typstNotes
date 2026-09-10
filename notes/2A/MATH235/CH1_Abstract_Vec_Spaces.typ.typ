#import "../../../preamble.typ": *
#show: conf

#let Title = "CH 1 — Abstract Vector Spaces"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")


Ideas: $RR^n$ is useful. There re other objects that "behave" and "look" like $RR^n$

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
    [$mat(a; b; c; d)$], [$a+b x+c x^2+d x^3$], [$mat(a, b; c, d)$]
    )

  Notice that the above not only "look alike", they share similar operations (addition and scalar multiplication)

  This is isomorphism


3. $V = F(RR, RR) = {"functions", f:RR -> RR}$

  We can add and scalar multiply 

  Question: Does $F(RR, RR)$ is isomorphic to $RR^n$

  ANS: No, the reason will be learned later in the course. The current explanation is that $F(RR, RR)$ is an infinity-demensioned vector space.


#defn[*Vector Space*\

  A vector space over $FF$ is a set $V$ together  with two operations $cases(+ "addition", dot  "scalar multiplication")$ s.t. 
  
  $ forall vec(x), vec(y), space vec(x)+ vec(y) subset.eq V $

  $ forall c in FF, c vec(x) subset.eq V $ 

  Furthermore, the following conditions must hold for $forall vec(x), vec(y), vec(z) in V, c, t in FF$

  1. $vec(x) + vec(y) = vec(y) + vec(x)$
  2. $(vec(x) + vec(y)) + vec(z) = vec(x) + (vec(y) + vec(z))$
  3. $c(vec(x)+vec(y)) = c vec(x) + c vec(y)$
  4. $c(t vec(x)) = c t (vec(x))$
  5. $exists$ some  $ vec(0) in V$ s.t. $vec(x) + vec(0) = vec(x)$
  6. $forall vec(x) in V, exists - vec(x) in V$ s.t. $vec(x) + (-vec(x)) = vec(0)$ 
]
  


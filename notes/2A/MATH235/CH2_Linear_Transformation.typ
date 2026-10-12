#import "../../../preamble.typ": *
#show: conf
#import "@preview/diverential:0.2.0": *
#import "@preview/physica:0.9.8": *
#let strut(h) = box(height: h, width: 0pt)
#let Title = "CH 2 — Linear Transformations"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== 2.1 Linear Transformations Between Abstract Vectors

#defn[*Linear Map*

Let $V, W$ be vector spaces over $FF$

A *linear map* from $V$ to $W$ is a function $L:V->W$ satisfiying 

$ L(vec(x)+vec(y)) = L(vec(x))+L(vec(y)) \

L(c vec(x)) = c L(vec(x)) $

]

*Remarks*:

1.  $L$ is linear if and only if $L(c vec(x)+vec(y)) = c L(vec(x))+L(vec(y)), quad forall vec(x), vec(y) in V, c in FF$

2. $L(vec(0))= vec(0)$

#proof[
  $L(vec(0)) = L(vec(0)+vec(0)) = L(vec(0)) + L(vec(0)) ==> vec(0) = L(vec(0))$
]
#align(right)[$square$]

\

Examples:

1. Zero map: $vec(z): V -> W$ defined by $vec(z)(x) = vec(0)_W, quad forall vec(x) in V$

2. Identity map: $"Id": V-> W "defined by " vec(x) -> vec(x)$

3. B-coordinates. $[]_B : V -> FF^n$ is linear defined by $vec(x) -> [vec(x)]_B$

4. Let $A in M_(m times n) (FF)$, let $L_A : FF^n-> FF^m "defined by" vec(x) -> A vec(x)$

5. Evaulation is linear. Let $t_0 in FF$, $"ev"_0: P_n (FF) ->FF "defined by" p(x) -> p(t_0)$
  $"ev"_0: P_2 (FF) -> FF ==> p(x) -> p(0) ==> a+b x+ c x^2 -> a)$

6. Differentiation and integration are linear. 

  Consider $D: P_n (FF) -> P_(n-1) (FF) "defined by" p(x)-> p'(x)$

  This is linear because $ &D(p+q) = (p+q)' = p'+q' = D(p)+D(q) \ 
  &D(c p) = c p' = c D(p) $

  Similarly, $L: P_n(RR) -> RR "defined by" p(x) -> integral_0^1 p(x) dif x$

7. Trace map is linear. $M_(n times n)(FF): A-> "tr"(A)$

#tip[*Combining Linear Maps* \
Suppose $L, T: V->W$. 

1. $L+ T$ is linear

2. $c L$ is linear $forall c in FF$

3. If $S: W-> U$ is linear, then $S compose T: V->W$ is linear

]

#proof[
If $S: W-> U$ is linear, then $S compose T: V->W$ is linear

$ (S compose T)(c vec(x) + vec(y)) &= S(T(c(vec(x))+vec(y)))  \

&= S(c T(vec(x))+ T(vec(y))) = c S(T(vec(x))) + S(T(vec(y))) \

&= c (S compose T)(vec(x)) + (S compose T)(vec(y))
$
]
#align(right)[$square$]

#tip[*Non-Linear Maps*(Rule of thumb) \ 

1. Anything with $L(vec(0)) != vec(0)$ is probably non-linear

2. Anything involving muliplicators scaling probably is non-linear

]

\
Examples of non-linear maps:

1. $L(p(x)) = p(x)+1$ is non-linear
2. $L(p(x)) = [p(x)]^2$ is non-linear
3. $L(A) = L("det"A)$ is non-linear

4. $L(p(x)) = x p(x)$ IS LINEAR

\

== 2.2 Rank-Nullity 

\
*IMPORTANT*:

1. State and Prove the Fundamental of Linear Algebra(Rank-Nullity Theorem)

2. Show $"linear maps" <==> "matrices"$

#defn[*Kernel and Range*\

Let $L:V -> W$ be a linear map. 

1. $"Ker"(L) = {vec(v) in V : L(vec(v) = vec(0)_W}$ is a subspace of $V$

2. $"Range"(L) = {vec(w)in W: vec(w) = L(vec(v)))}$ is a subspace of $W$
]

\
#proof[
$"Ker"(L) = {vec(v) in V : L(vec(v) = vec(0)_W}$ is a subspace of $V$

  $L(vec(0)_V) = vec(0)_W, vec(0)_V in "Ker"(L)$
  \
  \

  Let $vec(x), vec(y) in "Ker"(L), c in FF$

  $L(c vec(x)+ vec(y)) = c L(vec(x))+ L(vec(y)) = vec(0)_W in W $, thus $c vec(x)+ vec(y) in "Ker"(L)$

]
#align(right)[$square$]

Example:

$L = []_B ==> L:V -> FF^n$

  $"Ker"(L) = {vec(x) in V: [vec(x)]_B = mat(0; ...; 0)} = {vec(0)_V}$, by the Uniqueness of B-coordinates

  $"Range"(L) = {[vec(x)]_B: vec(x) in V} = FF^n$


#thm[*Nullity-Rank Theorem* \ 

The *nullity* of $L$ is $ "nullity" L = "dim"("Ker" L) $

The *rank* of $L$ is $ "rank" L = "dim"("Range" L) $

Let $L:V -> W$ be linear mapping. 
 $ "dim" V &= "nullity" L + "rank" L \
 
 "dim" V - "nullity" L &= "rank" L  $

Total degrees - lost degrees = output degrees
]

Examples:

1. Let $A in M_(m times n) (FF), L_A : FF^n -> FF^m, vec(x)-> A vec(x)$

  a. $"Ker" L_A = "Null"A$ is the nullspace

  b. $"Range" L_A = "Col" A$ is the column space


  #proof[

    $"Ker" L_A &= {vec(x) in FF^n: L_A (vec(x)) = 0} \

    &= {vec(x) in FF^n: A vec(x) = vec(0)} \ 

    &= "Null" A
    $

    \

    $"Range" L_A &= {vec(x) in FF^n: vec(y) = L_A (vec(x))} \

    &= {vec(x) in FF^n: vec(y) = 0A vec(x) } \ 

    &= {y in FF^m : vec(y) = [vec(a)_1, ..., vec(a)_n] vec(x)}  = {y in FF^m : vec(y) = vec(a)_1 x_1 + ... vec(a)_n x_n, (x_1, ..., x_n) in FF} \ 

    &= "Span" {vec(a)_1, ..., vec(a)_n} = "Col" A
    $
  ]
  #align(right)[$square$]

  This example will tell us eventually how to compute $"Ker"(L) $ and $"Range" (L)$ in general

  This result gives useful interpretation for the $"rank" A = "dim" ("Range"(L))$

\
2. Let $D:P_n (RR) -> P_(n-1) (RR), p(x) -> p'(x)$ be differentiation

  $P_2 (RR) -> P_1 (RR) <==> a+b x+c x^2 -> b+2 c x <==> mat(a; b; c) <==> mat(0; b; 2c)$

  Educated guess: $"nullity" D = 1, "rank" D = (1+n)-1 = n$

  #proof[

    $"Ker" D &= {p(x) in P_n (FF) : D(p(x) = vec(0)} = {a_1 + a_2 x + ... + a_n x^n} = {0 + 0 x + ... + 0x^n} quad (a_1 = a_2 = ... = a_n = 0 )\

    &= {a_1 + 0x^2 + ... + 0x^n : a_i in FF} = "span" {1} in P_n (FF)

    $ \ 

    Since ${1}$ is a basis for $"Ker" D ==> "dim"("Ker" D) = 1 $
 \


    $"Range"(D) = {q(x) in P_(n-1) (RR) : q(x) = D(p(x)), "for some" p(x) in P_n (RR)} \

\
    "Claim" "Range D" = P_(n-1) (RR) \
    
    "Range D" subset.eq P_(n-1) (RR) "is trivial" \
    \
    
    P_(n-1) (RR)subset.eq "Range D" \

    "Let" q(x) = a_0 + a_1 x+ ...+ a_(n-1) x^(n-1) \

    "Then" q(x) = D( a_0 + a_1/2 x+ ...+ a_(n-1)/n x^(n-1)) in P_n (RR) \

    q(x) in "Range"(D) 

    ==> "rank" L = "dim" "Range" L = "dim" P_(n-1) (RR)= n
    $

  ]
  #align(right)[$square$]


\

#proof[ 

*Rank-Nullity Theorem*

Let $B = {v_1, ..., v_k}$ be a basis for $"Ker" L$, extend $B$. to obtain $C = {v_1, ..., v_k, v_(k+1), ..., v_n}$

Claim $D = {L(v_(k+1)), ..., L(v_n)}$ is a basis for $"Range" L$, meaning that \

$"rank" L = "dim Range" L = |D| = n-k = "dim"V - "nullity"L $

Consider $c_(k+1) L(v_(k+1)) + ... + c_k L(v_n) = vec(0), quad forall c_i in FF$

$L(c_(k+1) v_(k+1) + ...+c_n v_n) &= vec(0) ==> c_(k+1) v_(k+1) + ...+c_n v_n in "Ker" L \
 &=c_(k+1) v_(k+1) + ...+c_n v_n = a_1 v_1 + ... + a_k v_k \

 &=c_(k+1) v_(k+1) + ...+c_n v_n - a_1 v_1 - ... - a_k v_k = vec(0)$ 
 
Since $C$ is linearly independent, thus $c_i = 0$

We need to prove $D "spans" "Range" L: "span"D = "Range"L$ to show the claim is true

  $"span"D subset.eq "Range"L$ is trivial

  $"Range"L subset.eq "span"D$ 

    Given $w in "Range" L$, show $w in "span" D$.

    We can write $a_1 v_1 + ... + a_k v_k + a_(k+1) v_(k+1) + ... + a_n v_n$

    So $w = L(v) = L(sum a_i v_i) = a_(k+1) v_(k+1) + ... + a_n v_n in "span" D$
]
#align(right)[$square$]

\

#defn[*Isomorphism* \
Let $L: V->W$ be linear mapping 

1. $L$ is *injective*(one-to-one) $<==> "Ker"L= {0} <==> "nullity"L =0$

2. $L$ is *surjective*(onto) $<==>"Range"L = W <==> "rank" L = "dim"W$

3. $L$ is an *isomorphism* if and only if $"Ker"L= {0}$ and $"Range" L = W $, that is both injective and surjective
]

Example:

1. Let $B$ be a basis for $V$, then the coordinate map $[]_B : V-> FF^n$ is an isomorphism

  $because "Ker"[]_B = {0}$ thus is injective, $"Range"[]_B = FF^n$ thus is surjective

2. $P_2 (RR) ->RR^3$ is an isomorphism

3. $D:P_n (RR) -> P_(n-1)(RR), p(x) -> p'(x)$ be differentiation

  $"nullity" D = 1 !=0$, thus not injective, $"rank"D = "dim"P_(n-1)$ is surjective

4. $L:FF^2 -> M_(2 times 2) (FF), mat(a; b) -> mat(a+b, a; b, a-b)$
  
  We suspect that $L$ cannot be surjective

  $"Range" L = {mat(a+b, a; b, a-b): a, b in FF} ={a mat(1,1; 0, 1) + b mat(1, 0; 1, -1): a, b in FF} = "span" {mat(1, 1; 0, 1), mat(1, 0; 1, -1)}$

  $"rank"L != "dim Range" L$, so $L$ is not surjective 

  By rank-nullity theorem, $"nullity" L = "dim"FF^2 - "rank" L = 0$

  
\
Given $L:V->W$ a linear map, we can build a matrix for it as:

1. Choose basis $B = {v_i, ..., v_n}$ for $V$

2. Choose basis $C = {w_i, ..., w_m}$ for $W$

3. Let $#v(0em)_C [L]_B = [[L(v_1)]_C space [L(v_2)]_C ... [L(v_n)]]_C $

#defn[*Proposition* \ 

$ L(v) = w <==> [L(v)]_C = [w]_C <==> [L]_B [v]_B = [w]_C $

That is $[L(v)]_C = #v(0em)_C [L]_B [v]_B$

]
\ 

Example:

1. $L:P_2(RR)-> M_(2 times 2)(RR), a+b x+c x^2 -> mat(c, b; a, 0)$

  $B = {1, x, x^2}, C = {E_11, E_12, E_21, E_22}$

  We can view it as a linear map $T:RR^3 ->RR^4, vec(x) mat(a; b; c) -> T(vec(x)) = A vec(x) =mat(c; b; a; 0)$

  $A = mat(0, 0, 1; 0, 1, 0; 0, 0, 1; 0, 0, 0) "and" T(vec(x)) = A vec(x)$

2. $L:P_2 (FF) -> P_2 (FF), L(p(x)) = p(x+1)$. Find $#v(0em)_B [L]_B$ where $B= {1, x, x^2}$ 

  $[L]_B &= [[L(1)]_B space [L(x)]_B space [L(x^2)_B] = [[1]_B space [x+1]_B space [x^2+2x+1]_B] 
  
  &= mat(1, 1, 1; 0, 1, 2; 0, 0, 1)$

  Use the above matrix to show $L(3+x) = 4+x$

  $[L(3+x)]_B = [L]_B [3+x]_B = mat(1, 1, 1; 0, 1, 2; 0, 0, 1)mat(3; 1; 0) = mat(4; 1; 0)$

  $L(3+x) = 4 dot 1 +1 dot x + 0 dot x^2 = 4+x$

#defn[*Proposition* \ 

Let $L:V->W$ be linear map, let $A = #v(0em)_C [L]_B$ where $B$ is basis for $V$ and $C$ be basis for $W$

1. $v in "Ker" L  <==> [v]_B in "Null"(A) $

2. $w in "Range" L <==> [w]_C in "Col"(A)$

3. $v_1, ..., v_k$ is a basis for $"Ker" L$ if and only if $[v_1]_B, ..., [v_k]_B$ is a basis for $"Null"(A)$

4. $w_1, ..., w_l$ is a basis for $"Range" L$ if and only if $[w_1]_C, ..., [w_l]_C$ is a basis for $"Col"(A)$

5. $"nullity" L = "nullity" A = "dim null" A$

6. $"rank" L = "rank" A = "number of pivots of RREF"(A) $

*Warn*: this proposition DID NOT claim $"Ker" L = "Null"(A), "Range" L = "Col"(A)$
]

#proof[

1.
$v in "Ker" L &<==> L(v) = 0  \
  &<==> [L(v)]_C = [0]_C quad quad ("by Uniquness of Coordinates") \
  
  &<==> #v(0em)_C [L]_B [v]_B = [0]_C \

  &<==> A[v]_B = vec(0) <==> w in "Null"(A)
$
\
4. $w_1, ..., w_l$ is a basis for $"Range" L$ if and only if $[w_1]_C, ..., [w_l]_C$ is a basis for $"Col"(A)$

$==>$: 

Assume $w_1, ..., w_n$ is abasis for $"Range" L$.

Claim: $Z = {[w_1]_C , ..., [w_r]_C}$ is linear independent

Consider $a_1 [w_1]_C + ... + a_r [w_r]_C = vec(0)$

By linearity of coordiantes, $[a_1 w_1 + ... +a_r w_r] = mat(0; ...; 0) ==> a_1 w_1 + ... + a_r w_r = 0 \

==> a_1 = ... = a_r = 0 "since" Z "is linearly independent"$

$Z "spans Col"(A) =  {A vec(x) : vec(x)in FF^n}$

$Z subset.eq "Col"(A)$ is trivial

$"Col"(A) subset.eq Z$, let $A vec(x) in "Col"(A)$

Note $A vec(x) = #v(0em)_C [L]_B [vec(v)]_B = [L(vec(v))]_C$, where $L(vec(v)) in "Range"(L)$

We can write $A vec(x) = [L(vec(v))]_C =  [sum (a_i w_i)]_C = sum a_i [w_i]_C in Z$

$<==$: the same argument applies in reverse order.
]
#align(right)[$square$]

Examples: \


1. Consider $L:RR^3->P_2(RR), mat(a; b; c) -> (a+2b-c) + (2a+2b)x +(3a+2b+c)x^2$

  Find rank and nullity of $L$

  $A = #v(0em)_C [L]_B ==> A = [[L(mat(1; 0; 0))]_C [L(mat(0; 1; 0))]_C [L(mat(0; 0; 1))]_C] 

  \
  = [[1+2x+3x^2]_C ][2x+2x^2]_C [-1+2x+x^2]_C] = mat(1, 2 ,-1; 2, 0, 2; 3, 2, 1)$


We say $V "and" W$ are *isomorphic*, denoted as $V tilde.equiv W$

Example:

1. If $"dim" V = n$, then $V tilde.equiv FF^n$

  Pick a basis $B$ for $V$ and consider coordinates map
  $[]_B :V ->FF^n$ is both injective and surjective, therefore is an isomorphism

2. Even though $P_2 (RR) tilde.equiv RR^3$

  Not every $L: P_2 (RR) -> RR^3$ is isomorphism

  For example, $L(a+b x+ c x^2) = mat(0; 0; 0)$ is not isomorphism.

3. Let $U subset.eq RR^3$ be a plane through origin, say with equation $x+y+z =0$

  Then by example 1, $U tilde.equiv RR^2$ because $"dim" U = 2$. 

  An explicit ismorphism : $L:U ->RR^2$

  Find a basis for $U$, $B = {mat(1; -1; 0), mat(1; 0; -1)}$

  Define $L:U->RR^2$ by $L(a mat(1; -1; 0) + b mat(1; 0; -1)) = mat(a; b)$

  Note we can also write an inverse map: $mat(a; b) |-> a mat(1; -1; 0) + b mat(1; 0; -1)$

#defn[*Linear Map and Isomorphism*

1. $L:V->W$ is an isomorphism if and only if $L$ has an inverse $L^(-1) :W->V$

2. Let $B, C$ be basis for $V$ and $W$, Let $A = #v(0em)_C [L]_B, L$ is isomorphism is and only if $A$ is invertible
]

#proof[

  1. $L$ is an isomorphism if and only if $L$ is injective and surjective

  if and only if every $w in W$ where $v in V$ s.t. $L(w) = W$

  Define $L^(-1) V$, check $L^(-1) W = w, L^(-1) V = v$, $L^(-1)$ is linear

  2. $L$ is isomorphism if and only if 
  
  $L^(-1)$ exists so $L compose L^(-1) = "Id" ==> #v(0em)_C [L compose L^(-1)]_C = #v(0em)_C ["Id"]_C = #v(0em)_C [L]_B #v(0em)_B [L^(-1)]_C$

  Therefore $L$ is isomorphism if and only if 
  
  $exists L^(-1)$ s.t $L compose L^(-1) = "Id" <==> L^(-1) "s.t." [L][L^(-1)] = I <==> A "has an inverse"$
]
#align(right)[$square$]

\
*Note*: $#v(0em)_C [L]_B #v(0em)_B [T]_D = #v(0em)_C [L compose T]_D$

\

Example: 

Consider $L:P_2 RR-> RR^3, a+ b x+c x^2 |-> mat(a+b+c; b+c; c)$

Choose $B = {1, x, x^2}, C = {mat(1; 0; 0), mat(0; 1; 0), mat(0; 0; 1)}$

Then $#v(0em)_C [L]_B = [[L(1)]_C [L(x)]_C [L(x^2)]_C] = mat(1, 1, 1; 0, 1, 1; 0, 0, 1)$ which is invertible

Therefore $L$ is an isomorphism

#defn[*Isomorphism and Dimensions* 

Let $V, W$ be vector spaces over the same $FF$. Then $V W <==> "dim" V = "dim" W$

In fact, bot are isomorphic to $FF^("dim" V)$
]

\
Examples:

1. $M_(2 times 2) (RR), P_2 (RR)$ are not isomorphic because $"dim" M_(2 times 2) = 4 != 3 = "dim" P_2 (RR)$

2. $M_(2 times 2)(RR) tilde.equiv RR^4 P tilde.equiv P_3 (RR)$


#warn[Isomorphism and Field

  $ M_(2 times 2) tilde.equiv.not CC^4 $
]

*Change of Coordinates*

Let $V$ be a vector space, let $B = {b_1, ..., b_n}, C = {c_1, ..., c_n}$ be basis for $V$, let $v in V$

How are $[v]_B, [v]_C$ related?

$FF^n <- V -->FF^n$

$[v]_C <-| V |-> [v]_B$

The composition (take $B$-coordinates) $compose$ (take $C$-coordinates) is a linear map from $FF^n -> FF^n$. Therefore it has a standard $n times n$ matrix

$#v(0em)_B I_C = [L(e_1) space L(e_2) space ... space L(e_n)] = [[c_1]_B space [c_2]_B space ... [c_n]_B]$

#defn[

  If $B = {b_1, ..., b_n}, C = {c_1, ..., c_n}$ be basis for $V$

  We define the change from $C$ coordinates to $B$-coordinates matrix to be 

  $#v(0em)_B I_C = [[c_1]_B space [c_2]_B  space ... [c_n]_B]$

]


Example:

$S = {1, x, x^2}, B = {2+2x-x^2, -2+3x+2x^2, -1+x+x^2}$ be bases for $P_2 FF$

Then $#v(0em)_C I_B = [[b_1]_S [b_2]_S ... [b_3]_S]$

and $#v(0em)_B I_C  = (#v(0em)_C I_B)^(-1)$
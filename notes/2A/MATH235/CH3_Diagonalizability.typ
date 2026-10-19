#import "../../../preamble.typ": *
#show: conf
#import "@preview/diverential:0.2.0": *
#import "@preview/physica:0.9.8": *
#let strut(h) = box(height: h, width: 0pt)
#let Title = "CH 3 — Diagonalizability"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== 3.1 Eigenvectors and Diagonalization

Warm Up Question

Let $R:RR^2 -> RR^2$ be reflection in the line $y = 3x$. Determine $R(vec(v))$

Reflection is a linear map. $R$ can be represented by a $2 times 2 $ matrix. 

Choose a basis $B = {e_1, e_2} in RR^2$. Build $#v(0em)_B [A]_B$

$A = [R]_B = [[R(e_1)]_B space [R(e_2)]_B]$. But we don't know $R(e_1), R(e_2)$.

We choose instead the vector $R(v_1) = v_1$, that is on the line $y =3x$, say $v_1 = mat(1; 3)$

Then choose another vector $R(v_2) = - v_2$, that is perpendicular to the line $y = 3x$, say $v_2 = mat(-3;1)$

$D = {mat(1; 3), mat(-3; 1)}$

Now $C =  #v(0em)_D [R]_D =[[R(v_1)]_D space [R(v_2)]_D] = mat(1, 0; 0, -1)$

*Lesson*:

1. Sometimes there may be a "nice" basis for $L:V->V$ that makes computations easier

2. Dream scenario: want the basis $D$ so that we have $[L]_D = mat(x, ..., 0;
..., ..., ...; 0, ..., x)$
#defn[*Operator* \ 

Let $T: V->W$ is called a *linear operator* if $"dim" V = "dim" W$
]

#defn[*Diagonalizability* \ 
  Compute the matrix of $L:V->V$ and obtain the basis $D$ so that we have $[L]_D = mat(x, ..., 0; ..., ..., ...; 0, ..., x)$

  If there is such a basis $D$, we say $L$ is *diagonalizable* and we say $D$ is a *diagonalizable basis*
]

Example:

Reflection map $R:RR^2 ->RR^2$ across $y = 3x$ is diagonalizable and $D = {mat(1; 3), mat(-3; 1)}$ is a diagonalizable basis.

  Suppose we want to calcualte $R(vec(v))$.

  $[R(vec(v))]_D = [R]_D [vec(v)]_D$

  But we want $R(vec(v)) = [R(vec(v))]_S, S = {e_1, e_2}$

  Let $#v(0em)_S I_D$ be change for $D$ to $S$ coordinates. Then $#v(0em)_S I_D [vec(x)]_D = [vec(x)]_S$

  We obtain $ #v(0em)_S I_D [R(vec(v))]_D &= #v(0em)_S I_D [R]_D [vec(v)]_D \ 
      [R(vec(v))]_S &= #v(0em)_S I_D [R]_D [vec(v)]_D \

      [R(vec(v))]_S &= #v(0em)_S I_D [R]_D (#v(0em)_S I_D)^(-1) #v(0em)_S I_D [vec(v)]_D \

      [R(vec(v))]_S &= #v(0em)_S I_D [R]_D (#v(0em)_S I_D)^(-1) [vec(v)]_S 
  $

  So $ #v(0em)_S [R]_S = #v(0em)_S I_D #v(0em)_D [R]_D #v(0em)_D I_S $

  $#v(0em)_S I_D = mat(1, -3; 3, 1)$

  $therefore [R]_S = mat(1, -3; 3, 1) mat(1, 0; 0, -1) (mat(1, -3; 3, 1))^(-1) = 1/10 mat(-8, 6; 6, 8)$

#defn[*Similarity*  \

Let $A, B in M_(n times n) (FF)$, we say $A$ is *similar* to $B$ if $exists$ invertible matrix $P$ s.t. $A = P B P^(-1)$ 

If $A ~ B$

1. $"rank" A = "rank" B$

2. $"nullity" A = "nullity" B$

3. $"det" A = "det" B$

4. $"tr" A = "tr" B$

]

Example:

If $B, C$ are bases for $V$ and if $L:V->V$ is linear, then $#v(0em)_B [L]_B ~ #v(0em)_C [L]_C$ 

since $#v(0em)_B [L]_B = #v(0em)_B I_C #v(0em)_C [L]_S (#v(0em)_B I_C)^(-1), P = #v(0em)_S I_D $

QUESTION: Given $L:V->V, exists D "s.t." [L]_D$ is diagonalizable?



== 3.2

== 3.3

== 3.4
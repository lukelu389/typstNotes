#import "../../../preamble.typ": *

#let Title = "CH 1 — Vectors"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== Introduction
\
#info[*Vector* \

The set $RR^n$ is defined as ${accent(x, arrow) = mat(x_1; ...; x_n): x_1, ..., x_n in RR}$


A *vector* is an element $accent(x, arrow) = mat(x_1; ...; x_n)$ of $RR^n$

The row notation of $accent(v, arrow) = mat(v_1; v_2; ...; v_n)$ is $accent(v, arrow)=[v_1 space v_2 space v_3]^T$
]


== Operations
\
#info[*Equality* \

We say that vectors $accent(u, arrow) = mat(u_1; u_2; ...; u_n)$ and $accent(v, arrow)=mat(v_1; v_2; ...; v_n)$ in $RR^n$ are *equal* if $u_i = v_i forall space i = 1, 2, ..., n.$ Denoted $accent(u, arrow) = accent(v, arrow)$ 
]

#info[*Addition and Properties*\

Let $accent(u, arrow) = mat(u_1; u_2; ...; u_n), accent(v, arrow) = mat(v_1; v_2; ...; v_n), accent(w, arrow) = mat(w_1; w_2; ...; w_n) in RR^n$. \

Then $accent(u, arrow)+accent(v, arrow) = mat(u_1; u_2; ...; u_n) + mat(v_1; v_2; ...; v_n) = mat(u_1+v_1; u_2+v_2; ...; u_n+v_n)$

1. $accent(u, arrow)+accent(v, arrow) = accent(v, arrow) + accent(u, arrow)$
2. $accent(u, arrow)+accent(v, arrow)+accent(w, arrow) = accent(u, arrow)+(accent(v, arrow)+accent(w, arrow))$
3. There is a zero *vector*, $accent(0, arrow)= [0 space 0 space 0 space ...  space 0]^T in RR^n$
4. $accent(v, arrow) + accent(0, arrow) = accent(v, arrow)$
]

#info[*Additive Inverse*\

Let $accent(u, arrow) = mat(u_1; u_2; ...; u_n), accent(v, arrow) = mat(v_1; v_2; ... ;v_n) in RR^n$. The additive inverse of $accent(u, arrow)$ denoted $-accent(u, arrow)$ is defined as $ -accent(u, arrow)=mat(-u_1; -u_2; ...; -u_n) $

$ accent(u, arrow) - accent(u, arrow) = accent(u, arrow) + (-accent(u, arrow)) = accent(0, arrow) $

$ accent(v, arrow)-accent(u, arrow) = accent(v, arrow) + (-accent(u, arrow)) = mat(v_1-u_1; v_2-u_2; ...; v_n-u_n) $
]

#info[*Scalar Multiplication*\

Let $accent(v, arrow) = mat(v_1; v_2; ... ;v_n), accent(u, arrow) in RR^n, c, d in RR.$ Then the scalar product $c accent(v, arrow) = mat(c v_1; c v_2; ...; c v_n) $

1. $(c+d) accent(v, arrow) = c accent(v, arrow) + d accent(v, arrow)$
2. $c (accent(u, arrow) + accent(v, arrow)) = c accent(u, arrow) + c accent(v, arrow)$
3. $0 accent(u, arrow) = accent(0, arrow)$
4. If $c accent(v, arrow) = accent(0, arrow)$ then $c = 0 or accent(v, arrow) = 0$
]

#info[*Standard Basis*\

In $RR^n$, let $accent(e_i, arrow)$ be the vector whose $i^("th")$ component is 1 with all other components 0. The set $Epsilon = {accent(e_1, arrow), accent(e_2, arrow), ..., accent(e_n, arrow)}$ is called the *standard basis for* $RR^n$

(i.e. $RR^3 "is" {accent(e_1, arrow), accent(e_2, arrow), accent(e_3, arrow)} = {mat(1; 0; 0), mat(0; 1; 0), mat(0; 0; 1)}$)

If $accent(v, arrow) = mat(v_1; v_2; ...; v_n) = v_1 accent(e_1, arrow) + v_2 accent(e_2, arrow) + ... + v_n accent(e_n, arrow)$ then we call $v_1, v_2, ..., v_n$ the *components of* $accent(v, arrow)$
]


== Vectors in $CC^n$

#info[*Vectors in $CC^n$*\

The set $CC^n$ is defined as ${accent(z, arrow) = mat(z_1; ...; z_n): z_1, ..., z_n in CC}$

The *vector* is an element $accent(z, arrow) = mat(z_1; ...; z_n) "of" CC^n$

In $CC^n$, let $accent(e_i, arrow)$ be the vector whose $i^("th")$ component is 1 with all other components 0. The set ${accent(e_1, arrow), accent(e_2, arrow), ..., accent(e_n, arrow)}$ is called the *standard basis for* $CC^n$
]

== Dot Product

#info[*Dot Product*\

Let $accent(u, arrow) = mat(u_1; u_2; ...; u_n)$, $accent(v, arrow) = mat(v_1; v_2; ...; v_n)$, $accent(w, arrow) = mat(w_1; w_2; ...; w_n)$ be vectors in $RR^n$. We defined their *dot product* by 

$ accent(u, arrow) dot accent(v, arrow) = u_1 v_1 + u_2 v_2 + ... + u_n v_n $

1. $accent(u, arrow) dot accent(v, arrow) = accent(v, arrow) dot accent(u, arrow)$
2. $(accent(u, arrow) + accent(v, arrow)) dot accent(w, arrow) = accent(u, arrow) dot accent(w, arrow) + accent(v, arrow) dot accent(w, arrow)$
3. $(c accent(u, arrow)) dot accent(v, arrow) = c (accent(u, arrow) dot accent(v, arrow))$
4. $accent(u, arrow) dot accent(u, arrow) >= 0,$ with $accent(u, arrow) dot accent(u, arrow) = 0 <==> accent(u, arrow) = 0$
5. The length of vector $accent(u, arrow) in RR^n "is" ||accent(u, arrow)|| = sqrt(accent(u, arrow) dot accent(u, arrow))$
6. If $c in RR, accent(u, arrow) in RR^n$, then $||accent(u, arrow)|| = |c| ||accent(u, arrow)||$  
]
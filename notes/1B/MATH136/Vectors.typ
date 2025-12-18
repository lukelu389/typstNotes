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

Let $accent(v, arrow) = mat(v_1; v_2; ... ;v_n) in RR^n, c in RR.$ Then the scalar product $c accent(v, arrow) = mat(c v_1; c v_2; ...; c v_n) $

]


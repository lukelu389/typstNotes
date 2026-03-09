#import "../../../preamble.typ": *
#import "@preview/diverential:0.2.0": *
#let strut(h) = box(height: h, width: 0pt)

#let Title = "CH 4 — Power Series"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

#info[*Power Series Definition*\

A *power series centered at $x = a$* is an infinite series of the form $ sum_(n=0)^oo c_n (x-a)^n = c_0 + c_1 (x-a) + c_2(x-a)^2 +... $ where $x$ is a variable, and $a, c_n (n in NN union 0)$ are constants. The set of all $x$ values for which $sum_(n=0)^oo c_n (x-a)^n$ converges is called the *interval of convergence* for $sum_(n=0)^oo c_n (x-a)^n$ 
]



#info[*Power Series Properties*\

Given any power series $sum_(n=0)^oo c_n (x-a)^n$, there are only 3 possibilities:

1. The power series converges only when $x =a$

2. The power series converges absolutely $forall x in RR$

3. There exists a strictly positive real number $R$ s.t. the power series converges absolutely when $|x-a|<R$, diverges when $|x-a|>R$, and may converge or diverge(inconclusive) when $|x-a|=R$
]

#info[*Definition of Rarius of Convergence*]
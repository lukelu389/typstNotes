#import "../../../preamble.typ": *
#import "@preview/combo:0.1.0"
#show: conf


#let Title = "CH 5 - Continuous Random Variable"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

A continuous variable $X$ has uncountable range.

$F(x) = P(X<=x) space forall x in RR$ and non-decreasing

Since the probability $f(x) = 0, F(x)$  is continuous.

Anything measured on a continuous scale can be modeled into a continuous random variable.

$lim_(Delta x->0) P(x-Delta x <= X<=x) = lim_(Delta x ->0) (F(x) - F(x-Delta x))$

#defn[*Probability Density Function* \ 

PDF of a continuous random variable is $f(x) = F'(x) = lim_(Delta x->0) frac(F(x+Delta x), Delta x)$
]
#import "../../../preamble.typ": *
#import "@preview/combo:0.1.0"
#show: conf


#let Title = "CH 5 - Continuous Random Variable"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")
== 5.1 PDF and CDF
A continuous variable $X$ has uncountable range.

$F(x) = P(X<=x) space forall x in RR$ and non-decreasing

Since the probability $f(x) = 0, F(x)$  is continuous.

Anything measured on a continuous scale can be modeled into a continuous random variable.

$lim_(Delta x->0) P(x-Delta x <= X<=x) = lim_(Delta x ->0) (F(x) - F(x-Delta x))$

#defn[*Probability Density Function* \ 

PDF of a continuous random variable is $f(x)>0, integral_(-oo)^oo f(x) dif x = 1$

Resulting $f(x) = F'(x)$
]

Remember that $f(x)!= P(X=x)$, it is the relative likelihood of $X$ being near $X$

*Properties of $F(x)$*

- $P(a<= X<=b) = P(a<X<b) = P(a<=X<b) = P(a<X<=b)$

- $P(a<X<=b) = integral_a^b f(x) dif x=F(b)-F(a)$

- $F(x) = integral_(-oo)^x f(x) dif x$


#defn[*Percentile* \ 

For $p in (0, 1)$, then $100p$-th percentile is the value $x_p$ s.t. $P(X<=x_p) = p$. 

In particular, $x_0.5$ is the median which is the 2nd quartile
]

== 5.2 Function of Random Variable

If $Y = g(X)$, we want the cdf and pdf of $Y$

- Range $Y$ is $g(X)$ for $g(X)$ being 1-to-1 only
- $F_Y (y) =P(Y<=y) =P(g(X)<Y)$
- $f_Y (y) = F'_Y (y) = f_X(g^(-1)(y)) |dif/(dif y) g^(-1)(y)|$ for 1-to-1 functions

Example:

Let $F(x)=cases(x/4 "for" 0<=x<=4, 0 "for" x <0, 1 "for" x>4), f(x) = cases(1/4 "for" 0<=x<=4, 0 "otherwise")$

Let $Y = 1/X$, the pdf of $Y$

$F_Y (y) = P(Y<=y) = P(1/X <=y) = P(X>=1/y)  =1-F_X (1/y)$

$F_Y (y) = 1-1/(4y), f_Y (y) = 1/(4y^2), y in (1/4, oo)$

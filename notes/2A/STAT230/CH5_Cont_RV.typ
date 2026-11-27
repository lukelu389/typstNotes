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

PDF of a continuous random variable is $f(x)>0, integral_(-oo)^oo f(x) dif x = 1, space forall x in RR$

Resulting $f(x) = F'(x)$

For $x in (a, b), integral_a^b f(x) dif x = 1$
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

#thm[*Proposition* \
If $Y = g(X)$, we want the cdf and pdf of $Y$

- Range $Y$ is $g(X)$ for $g(X)$ being 1-to-1 only
- $F_Y (y) =P(Y<=y) =P(g(X)<Y)$
- $f_Y (y) = F'_Y (y) = f_X (g^(-1)(y)) |dif/(dif y) g^(-1)(y)|$ for 1-to-1 functions
]
Example:

Let $F(x)=cases(x/4 "for" 0<=x<=4, 0 "for" x <0, 1 "for" x>4), f(x) = cases(1/4 "for" 0<=x<=4, 0 "otherwise")$

Let $Y = 1/X$, the pdf of $Y$

$F_Y (y) = P(Y<=y) = P(1/X <=y) = P(X>=1/y)  =1-F_X (1/y)$

$F_Y (y) = 1-1/(4y), f_Y (y) = 1/(4y^2), y in (1/4, oo)$

== 5.3 Expectation and Variance

Let $X$ be a continuous random variable with pdf $f(x)$ and cdf $F(x)$.

The *Expectation* (or *mean*) of $X$ is defined as:

$ E[X] = mu =integral_(-oo)^(oo) x f(x) dif x $

and also $ E[g(X)] = integral_(-oo)^(oo) g(x) f(x) dif x $

The *variance* of $X$ is defined as:

$"Var"(X) = E[X^2] - (E[X])^2 = integral_(-oo)^(oo) x^2 f(x) dif x - (E[X])^2$

The *moment generating function* of $X$ is defined as:

$ M_X (t) = E[e^(t X)] = integral_(-oo)^(oo) e^(t x) f_X (x) dif x $ if exists around $t=0$

$ E[X^n] = integral_(-oo)^(oo) x^n f(x) dif x $

Example:

Suppose person leaves $X$ minutes before class where $f(x)= cases(0.04(5- |x-20|) "if" 15<=x<=25, 0 "otherwise")$

$F(x) = integral_(-oo)^x f(t) dif t = cases(0 "if" x<15, 0.02(x-15)^2 "if" 15<=x<=20, 1-0.02(25-x)^2  "if" 20<x<=25, 1 "if" x>25)$

$E[X] = integral_(-oo)^(oo) x f(x) dif x = cases(20 "if" x<15, 0.04(x-15)^3/3 "if" 15<=x<=20, 0.04(5-(25-x))^3/3 + 0.04(5) "if" 20<x<=25, 25 "if" x>25)$

$"Var"(X) = E[X^2] - (E[X])^2 = integral_(-oo)^(oo) x^2 f(x) dif x - (E[X])^2 = cases(0 "if" x<15, 0.04(x-15)^4/4 "if" 15<=x<=20, 0.04(5-(25-x))^4/4 + 0.04(5) "if" 20<x<=25, 0 "if" x>25)$

$sigma(X) = cases(0 "if" x<15, 0.04(x-15)^2 "if" 15<=x<=20, 0.04(5-(25-x))^2 + 0.04(5) "if" 20<x<=25, 0 "if" x>25)$

#align(center)[#image("../../../pictures/yr2/stat230_ch5.png", width:14cm)]
== 5.4 Continuous Distribution

#defn[*Uniform Distribution*

A continuous random variable $X$ is said to have a *uniform distribution* $(X ~ U(a, b))$ on the interval $(a, b)$ if its pdf is given by:
$ f(x, y )=cases( 1/(b-a) "if" a<x<b, 0 "otherwise") $

The cdf is given by:
$ F(x) = cases(0 "if" x<a, (x-a)/(b-a) "if" a<=x<b, 1 "if" x>=b) $

The expectation is given by:
$ E[X] = (a+b)/2 $
The variance is given by:
$ "Var"(X) = (b-a)^2/12 $

The percentile can be obtained by: $ p(b-a)+a $

$ M_X (t) = 1/(b-a)integral_a^b e^(t x) dif x = frac(e^(b t)-e^(a t), b-a)t, t!=0 $
]


#defn[*Exponential Distribution* \ 
Suppose in a poisson process with rate $mu$, let $X$ be the waiting time until we observe an event with range $x in (0, oo)$. Then $X~"Exp"(theta)$ where $theta = 1/mu$

The pdf is given by $ f(x) = cases(1/theta e^(-x/theta) "if" x>0, 0 "otherwise") $

The cdf is given by $ F(x) = P(X<=x) = cases(0 &"if" x<=0, 1-e^(-x/theta) &"if" x>0) $

The expected value $ E[X] = theta $

The variance $ "Var"(X) = theta^2 $

The moment generating function $ M_X (t) = 1/(1-theta t) $

For percentiles, $ F(x_p) = p = 1-e^(-x_p/theta) => x_p=  - theta ln(1-p) $
]

Example of situations:

- distance between flaws
- time between events
- lifetime of objects

Memoryless property:


It $X~"Exp"(theta)$, then for $a, b >=0$

$ P(X<a+b | X>a) = P(X<b) \ 
 P(X>a+b | X>a) = P(X>b)
 $

#defn[*Normal Distribution* \

]

#thm[*Central Limit Theorem* \

]


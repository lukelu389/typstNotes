#import "../../../preamble.typ": *
#import "@preview/combo:0.1.0"
#show: conf


#let Title = "CH 3 - Random Variables"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

#defn[*Random variables* \ 

A *random variable* is a fucntion $X$ that maps points in a smaple space to real numbers

$ X:S->RR $

A random variable can be discrete or continuous depending on whether the *range* is countable or uncountable
]

Example

Roll 3 fair 6-sided dice, $S = {(1, 1, 1), ..., (6, 6, 6)}$, 216 pairs

List a few possible random variables
$
X = "sum be the 3 dice", "range" ={3, ..., 18}, \

Y = "max of 3 dice", "range" ={1, 2, 3, 4, 6} \

Z = "product of the 3 dice", "range" = {1, ..., 216}
$ 

*Continuous random variables* could include anything measured in time, temperature, heightes, weights, etc

#defn[*Probability Mass Function*

The *PMF* of a discrete random variable $X$is $ f(x) &= P(X=x) , quad  forall x in "range" X  \

&= sum P(a_i) quad "sum all the probability of the sample points that map to x"
$
]

Examples

1. $X = "sum of 3 dice"$

  $f(x) = cases(1/216 "if" x = 3, 3/216 "if" x = 4, ..., 1/216 "if" x= 18)$

2. $W = "3 diigt number"$

  $f(w) = 1/216$

3. $Y = "max of 3 dice"$

  $f(y) = cases(1/216 "if" y = 1, 7/216 "if" y = 2, ...)$

*Note*: for any pmf, $f(x) >0 "and" sum(f_x_i) = 1$ because the random variable has to take on of the values

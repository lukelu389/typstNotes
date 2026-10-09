#import "../../../preamble.typ": *
#import "@preview/combo:0.1.0"
#show: conf


#let Title = "CH 3 - Random Variables"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== 3.1 Random Variables

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

#defn[*Probability Mass Function*]

#defn[*Cumulative Density Funciton*]

== 3.2 Functions of Random Variables

In practice, we may be interested in some function of a random variable rather than the random variable itself.

i.e. total revenue based on units sold

If $Y = g(X)$, we may want the pmf of $Y$.

Example: 

$X = "number of 6 on 3 dice"$

Let $Y = cases(0 "if" x= 0, 1 "if" x= 1 "or" 2, 2 "if" x = 3)$, with range{0, 1, 2}

#table(
    columns: 4, 
    align: left,
    stroke: 0.5pt,
    inset: 6pt,
    [$Y$], [0], [1], [2],
    [$f_Y (y)$], [$125/216$], [$90/216$], [$1/216$]
  )

$f_Y (0) = P(Y=0) = P(X=0) = f_X (0)$

$f_Y (1) = P(Y = 1) = P(X=1 "or" X = 2) = f_X (1) + f_X (2)$

$f_Y (2) = f_X (3)$

#tip[Interchanging probability mass function variables
  
In general, if $Y = g(X)$ for a discrete random variable $X$

$ f_Y (y) = sum_("all" x in "range s.t." g(x) = y) f_X (x) $

We can view that as $ f_Y (y) = P(Y=y) = P(X "tales a value that" g(x)->y) = sum_(g(x) = y) P(X=x) $
]

Example:

At a BINGO event, players pay 14 plus 2 per "Tonnie pot" bets(maximum bets be 2). 

Let $X = "the number of Toonie bets a player"$

#table(
    columns: 4, 
    align: left,
    stroke: 0.5pt,
    inset: 6pt,
    [$X$], [0], [1], [2],
    [$f_X (x)$], [$0.4$], [$0.1$], [$0.5$]
  )

  \
  \
  \
Let $Y =$ amount paid by random player, then $Y = 14+ 2X$

#table(
    columns: 4, 
    align: left,
    stroke: 0.5pt,
    inset: 6pt,
    [$Y$], [14], [16], [18],
    [$f_Y (y)$], [$0.4$], [$0.1$], [$0.5$]
  )

#defn[*Proposition*
  
If $Y = g(X)$ is a *one-to-one* function on $X$ with inverse $g^(-1) (Y) = X$ then $ f_Y (y) = f_X (g^(-1)(y)) $
]

== 3.3 Expectation of Random Variables

#defn[*Mean, Median, Mode* \

Mean is average

Median is the value where half are above and half are below

Mode is the most reoccurring data 
]


1. Let $X = "number of kids in a family"$, 

  we have the sample data: #table(
      columns: 6, 
      align: left,
      stroke: 0.5pt,
      inset: 6pt,
      [$X$], [1], [2], [3], [4], [5+],
      [frequency], [28], [81], [26], [5], [10],
      [proportion %], [18.67], [54], [17.33], [3.33], [6.67]
  )

  Mean $approx$ 2.25

  Median = Mode = 2

2. Let $X = "number of courses"$

  we have the sample data: #table(
      columns: 6, 
      align: left,
      stroke: 0.5pt,
      inset: 6pt,
      [$X$], [1 or 2], [3], [4], [5], [6+],
      [proportion %], [1], [1], [12], [72], [13]
  )
  Median = Mode = 5

  Mean $approx 5$

We can rewrite the first example mean as $sum_(i=1)^5 x dot "proportion with value" x$

#defn[*Expectation of Random Variable* \ 

The *Expected Value* of a discrete random variable 

$ E[x] = mu = sum_("all" x in "range") x f(x) $
]

Example:

Refer to the previous example.

According to StatCan, the pmf of $X = "number of kids"$ is 

#table(
      columns: 5, 
      align: left,
      stroke: 0.5pt,
      inset: 6pt,
      [$X$], [1], [2], [3], [4],
      [$f(x)$], [0.44], [0.36], [0.17], [0.03]
  )

$E[x] = 1.79$

We noticed that for every class selected, the average is always higher than the published result.

The one of the strongest reason is that the class selected is already complete while the published data family could be expanding.

That is whenever selecting a model, make sure that it is representative.

#defn[*Expected Value of Function*

The *Expected Value* of a funciton of a discrete random variable $X$ of $g(x)$
 is $ E[g(x)] = sum_(x) g(x)f(x) $

We can visualize as let $Y = g(y)$, $ E[g(X)] = E[Y] = sum_(y) y f_Y (y) = sum_y sum_x f_X(x) = sum_y sum_x y f_X(x) = sum_y g(x) f_X (x) $

Expectation is a linear operator.

For $a, b in RR$ and discrete random variable $X$

$ E[a X+ b] &= a E[x] +b =sum_x (a x+b)f(x) \

&= sum_x a x f(x) +sum_x b f(x) =a sum_x x f(x) + b sum_x f(x) \

&= a E(x) + b $
]

#warn[*Common Mistakes*

  $ E[g(x)] != g(E(x)) $
]

Example: Roulette

38 slots with 18 Black, 18 Red, and 2 Green

You can bet on a 
- single number pays 35:1
- two numbers pays 17:1
- four numbers pays 8:1
- column of 1/3 numbers pays 2:1
- colour, parity, 1/2 number pays 1:1

Stragety 1: 100 on single number

if $X = "number rolled"$, $g_1 (X) = cases(3600 "with probability" 1/38,  0 "with probability" 37/38)$

$E[g_1(X)] = 3600 dot 1/38 +0 dot 37/38  = 94.74$


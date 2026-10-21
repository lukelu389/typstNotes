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

Strategy 1: 100 on single number

if $X = "number rolled"$, $g_1 (X) = cases(3600 "with probability" 1/38,  0 "with probability" 37/38)$

$E[g_1(X)] = 3600 dot 1/38 +0 dot 37/38  = 94.74$
\

#defn[*Variance* \ 

We define the *variance*, $ "Var"(X) = sigma^2 =E[(X-mu)^2] = E[(X-E[X]^2)]$

In practice, we can evaluate the variance in *DISCRETE* random variable by $ "Var"(X) &= E[(X-mu)^2] = E[X^2] - 2 mu E[X] + mu^2  \

&= E[X^2] - mu^2 = E[X^2] - E[X]^2 $
]

#defn[*Standard Deviation* \ 

We define the *standard deviation*, $ sigma(X) = sqrt("Var(X)") $
]
Example:

Roulette

$X = cases(36 "with" 1/38, 0 "with" 37/38)$

$"Var"(X) = E[(X-mu)^2] = E[X^2] - E[X]^2 = 34.105-0.94737^2 approx 33.207 "$"^2$

$sigma(X) = sqrt("Var"(X)) approx 5.76"$"$

\
Let $Y = cases(2 "with" 18/38, 0 "with" 20/38)$

$"Var"(Y) = E[Y^2] - E[Y]^2 = 2^2 dot 18/38 - 0.94737^2 approx 0.99723$

$sigma approx 0.99861$

Let $Z = cases(1 "with" 36/38, 0 "with" 2/28)$

$"Var"(Z) = E[Z^2] - E[Z]^2 = 36/38 - 0.94737^2 approx 0.04986$
 
$sigma approx 0.2233$

#warn[*Variance, Standard deviation*

*Variance* is NOT a linear operator.

$ "Var"(a X+b) &= E[((a X +b)- E[a X +b])^2]  \

&= E[(a X +b-a E(X)-b)^2] = E[(a X - a E([X])^2)] \

&= a^2 E[(X- E(X))^2] = a^2 "Var"(X) $

*Standard deviation*

$sigma(a X+b) = |a|sigma(X)$
]

== 3.4 Moment Generating Functions

#defn[*Moment* 

The $k$-th moment of a random variable $X$ is $E[X^k], "for" k = 1, 2, 3, ...$

First moment is $E[X]$, is the mean

Second moment is $E[X^2]$, needed for computation of variance

Third moment is $E[X^3]$, needed for computation of skewness

Fourth moment is $E[X^4]$, needed for computation of kurtosis.

]

#defn[*Moment Generating Function * \

The MGF of a random variable defined as $X$ is $M_X (t) = E[e^(t x)]$ where it exists in some region around $t = 0$


- It uniquely determines a distribution.

- Can easily prove relationships between random variables.

- Determine the moments more quickly then using the $f(x)$ or $F(x)$

In general $ E[X^k] = M_X^((k)) (0) = eval(d/(dif t) M_X (t), t=0) $
]

Properties of MGF

- $M_X(0) = 1, space forall X$

- $M'_X (t) = d/(dif t) E[e^(t x)] = d/(dif t) = E[1+X+(t X)^2/2! + (t X)^3/3! + ...] = E[0+X+t X^2+ 1/2 t^2 X^3+...]$

- $M'_X (0) = E[X]$

- $M''_X (t) = E[0+0+X^2+ t X^3+ ...]$

- $M''_X (t) = E[X^2]$

Example:

Suppose we roll a fair six-sided die until to get 6. Let $X = "number of non-six rolled"$. Use MGF to find the mean.

$f(x) = (5/6)^x (1/6), x = 0, 1, 2, 3, 4, ...$

$M_X (t) = E[e^(t x)] = sum_(X = 0)^oo e^(t x)(5/6)^x (1/6) = 1/6 sum_(X = 0)^oo (5/6 e^t)^x = 1/6 1/(1-5/6e^t), "where" |5/6e^t|<1$

$M'_X (0) = eval((6-5e^t)^(-1), t = 0)= eval(5 e^t (6-5e^t)^(-2), t = 0) = 5 $

Let $Y = a X+b$, $M_Y (t) = E[e^(t a X + b t)] = E[e^(t a X) e^(b t)] = e^(b t) E[e^(t a X)] = e^(b t) M_X (a t)$


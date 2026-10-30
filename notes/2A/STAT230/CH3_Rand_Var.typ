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

We define the *variance*, $ "Var"[X]= sigma^2 =E[(X-mu)^2] = E[(X-E[X]^2)]$

In practice, we can evaluate the variance in *DISCRETE* random variable by $ "Var"[X]&= E[(X-mu)^2] = E[X^2] - 2 mu E[X] + mu^2  \

&= E[X^2] - mu^2 = E[X^2] - E[X]^2 $
]

#defn[*Standard Deviation* \ 

We define the *standard deviation*, $ sigma[X] = sqrt("Var"[X]) $
]
Example:

Roulette

$X = cases(36 "with" 1/38, 0 "with" 37/38)$

$"Var"[X]= E[(X-mu)^2] = E[X^2] - E[X]^2 = 34.105-0.94737^2 approx 33.207 "$"^2$

$sigma(X) = sqrt("Var"[X]) approx 5.76"$"$

\
Let $Y = cases(2 "with" 18/38, 0 "with" 20/38)$

$"Var"[Y] = E[Y^2] - E[Y]^2 = 2^2 dot 18/38 - 0.94737^2 approx 0.99723$

$sigma approx 0.99861$

Let $Z = cases(1 "with" 36/38, 0 "with" 2/28)$

$"Var"[Z] = E[Z^2] - E[Z]^2 = 36/38 - 0.94737^2 approx 0.04986$
 
$sigma approx 0.2233$

#warn[*Variance, Standard deviation*

*Variance* is NOT a linear operator.

$ "Var"[a X+b] &= E[((a X +b)- E[a X +b])^2]  \

&= E[(a X +b-a E(X)-b)^2] = E[(a X - a E([X])^2)] \

&= a^2 E[(X- E(X))^2] = a^2 "Var"[X]$

*Standard deviation*

$sigma[a X+b] = |a|sigma[X]$
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

The MGF of a random variable defined as $X$ is $M_X (t) = E[e^(t x)] = sum_x e^(t x) f(x)$ where it exists in some region around $t = 0$


- It uniquely determines a distribution.

- Can easily prove relationships between random variables.

- Determine the moments more quickly then using the $f(x)$ or $F(x)$

In general $ E[X^k] = M_X^((k)) (0) = eval(d/(dif t) M_X (t), t=0) $
]

Properties of MGF

- $M_X (0) = 1, space forall X$

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

\

== 3.5 Distributions
\

#defn[*Discrete Uniform Distribution* \

A *discrete uniform distribution* is a random variable of $X$ which takes on values in the set $A= {a,a + 1,a + 2,..., b}$, where $a$ and $b$ are integers such that $a ≤b$. Suppose that all values in $A$ are equally likely. 

We write $X~"DU"(a,b)$ as a shorthand for “$X$ is distributed according to a discrete uniform distribution with parameters $a$ and $b$”.

]


The PMF: $ sum_(x=a)^b f(x) = c (b-a+1) = 1$ if $f(x) = c, c in RR $

Thus the probability mass function of the distribution is in form $ f(x) = 1/(b-a+1) $

The CDF: $ F(x) = sum_(u=a)^x f(u) = (1/(b-a+1)) =frac(x-a+1, b-a+1) $

Thus the cumulative density function of the distribution is in  form $ F(x) = cases(0 "if" x<a, frac(x-a+1, b-a+1) "if" a<=x<=b, 1 "if" x>b) $

The MGF: $ M_X (t) = sum_(x=a)^b e^(t x) f(x) = 1/(b-a+1) (e^(a t) + e^(a+1)t + ...  + e^(b t)) $

Mean: $ E[X] = sum_(x=a)^b x f(x) = 1/(b-a+1) (a+ (a+1) + ... + b) = 1/2 1/(b-a+1) (a+b)(b-a+1) = (a+b)/2 $

Variance: $ "Var"[X]= frac((b-a+1)^2-1, 12) $

#defn[*Hypergeometric Distribution* \ 

We have $N$ objects, of which $r$ are successes and $N-r$ are failures. We select $n$ objects without replacement and $X = "number of successes selected"$. $X ~ "HG"(N, r, n)$
]

Example:

Testing a subset of products, some of which are defective/good. The number of defects found. 

The PMF: $ f(x) = P(x "successes and " n-x "failures") = binom(r, x)binom(N-r, n-x)/binom(N, n),  quad max(0, n-N+r) <=x<=min(n, r) $

Mean: $ E[X] = (n r)/N $


*Bernoulli trials*: a sequence of trials with 

- each outcome is a success or a failures

- the probability of success is constant

- trials are independent

#defn[*Binomial Distribution* \ 


We perform $n$ Bernoulli trials with $P(S) = p$ and let $X = "the number of sucesses obtained"$. $X ~ "Bin"(n, p)$
]


PMF: $ f(x) = binom(n, x) p^x (1-p)^(n-x) $

MGF: $ M_X(t) = E[e^(t X)] = sum_(x=0)^n e^(t x) binom(n, x) p^x (1-p)^(n-x)=sum_(x=0)^n binom(n, x) (p e^t)^x (1-p)^(n-x) = (p e^t + 1-p)^n $

Mean: $ E[X] = sum_(x=0)^n x binom(n, x) p^x (1-p)^(n-x) =^(y=x-1) n p sum_(y=0)^(n-1) binom(n-1, y) p^y (1-p)^(n-1-y) =n p $

  Notice that it ressmbles $"Bin"(n-1, p)$

Variance: $ "Var"[X]= n p (1-p) $ 

Examples

Error-correcting codes

Suppose we send a sequence of bits over a noisy connection with probability of 0.1 of each bit being flipped independently. We will send 4 bit message. The probability of message received correctly.

Let $X = "numbers of flipped bits" ~ "Bin"(4, 0.1)$

We want $P(X = 0) = binom(4, 0) (0.1)^0 (0.9)^(4) approx 0.6561$

Now suppose we add 3 parity bits that allow the received to detect and correct one error. Find the new probability

Let $Y = "numbers of flipped bits" ~ "Bin"(7, 0.1)$

$P(Y<=1) = binom(7, 0)(0.1)^0 (0.9)^7 + binom(7, 1)(0.1)^1 (0.9)^6 approx 0.8503$

*Binomial and Hypergeometric relationships*

- both involve doing something $n$ times with  possible outcomes and counting the number of successes.

- Bin is with replacement and Hyp is without replacement.

- For $N,r$ being sufficiently large compared to $n$, we would be unlikely to get the same object twice regardless of sampling method. 

- We can approximate a $"HG" (N, r, n)$ by $"Bin"(n, r/N)$

#defn[*Geometric Distribution* \ 

Perform Bernoulli trials until obtain a success and 

let $X ="# of failures obtained before 1st success", X ~ "Geo"(p)$

]

PMF: $ f(x) = (1-p)^x p, quad x = NN_(>=0), p>0 $



CDF: $ F(x) = sum_(i=0)^x p(1-p)^i = 1- sum_(i=x+1)^oo p(1-p)^i = 1-(1-p)^(x+1) = cases(0 "if" x<0, p(1-p)^(x+1)"if" x>=0) $

MGF: $ M_(X)(t) =sum_(x=0)^oo e^(t x) p(1-p)^x = sum_(x=0)^oo p(e^t (1-p))^x = frac(p, 1-e^t (1-p)) quad t < ln(1/(1-p)) $

Mean: $ E[X] = (1-p)/p $

Variance: $ "Var"[X] = (1-p)/p^2 $

#defn[*Negative Binomial Distribution* \ 

Perform Bernoulli trials until obtain $k$ success and let 

$X = "# of failures obtained before k-th success", X ~ "NB"(k, p)$

]

PMF: $ f(x) = binom(k+x-1, x)(1-p)^x p^k = binom(k+x-1, k-1)(1-p)^x p^k, quad x in NN_(>=0) $

Mean: $ E[X] = k(1-p)/p $

Variance: $ "Var"[X] = k(1-p)/p^2 $


Example: 

Suppose we need 5 investors with $p =0.2$ independently yes.
Find the mean asked and probability to ask 10

Let $X = "# of investors approached", X !~ "NB"$

Let $Y = "# of who said no before 5 yes", Y ~ "NB"(5, 0.2)$

We want $E[X]$ and $P(X=10)$

$X = Y+5$

$E[X] = E[Y+5] = E[Y]+5 = 5 dot (0.8/0.2) = 20+5 = 25$

$P(X= 10) = P(Y = 5)=binom(9, 4)(0.2)^5 (0.8)^5 approx 0.0132$

#defn[*Poisson Distribution* \

Comes from limiting case of binomial distribution and its own continuous-time process.

Suppose we have $X ~"Bin"(n, p)$ and let $n->oo, p->0$ s.t. $n p = mu$ remains constant. Then, we denote $X~"Poi"(mu)$


Alternatively, The Poisson process has events occur randomly in continuous time and space with 

1. independence events

2. individuality, events happen one at a time

3. homogenity/uniformity, events happen at a constant rather

  - $P(1 "event in" (0, Delta t)) = mu Delta t $

If $X = "# of events in" t "units of time"$, $X ~ "Poi"(mu t)$


]

PMF: $ lim_(n->oo) f(x) &= lim_(n->oo) binom(n, x)p^x(1-p)^(n-x) = lim_(n->oo) frac(n!, x! (n-x)!)(mu/n)^x (1-mu/n)^(n-x) \

&= mu^x/x! lim_(n->oo) [product_(u=0)^(x+1)(n-u)/n]  (1-mu/n)^(-x) (1-mu)^n \

&= mu^x/x! lim_(n->oo) (1-mu/n)^n = mu^x/x!
dot e^(-mu), quad x in NN_(>=0)
$

MGF:  $ M_X (t) = sum_(x=0)^oo e^(t x) frac(e^(-mu) mu^x, x!) = e^(-mu) sum_(x=0)^oo frac((mu e^t)^x, x!)= e^(mu(e^t-1)) $

\
\

Mean: $ E[X] =mu $ 

Variance: $ "Var"[X] = mu $  

Note: we can approximate a $"Bin"(n, p)$ by $"Poi"(n p)$ when $n$ is sufficiently large and $p$ is sufficiently small

Example of Poisson process:

1. Cars passing through intersection

2. Collisions in a reactor

3. Lightining strikes

4. Website hits, data breaches

\

How to distinguish distributions?

#align(center)[
  #table(
      columns: 6, 
      align: auto,
      stroke: 0.5pt,
      inset: 6pt,
      [$"DU"(a, b)$], [$"HG"(N, r, n)$], [$"Bin"(n, p)$], [$"Geo"(p)$], [$"NB"(k, p)$], [$"Poi"(mu)$],
      [Equally likely, fair], [Population size, subset of successes and \# of sucesses, without replacement, selecting], [Bernoulli trials, \# of successes], [Bernoulli trials, waiting for \# of successes, until, $k=1$], [Bernoulli trials, it takes ... to get ..., $k>1$], [Bernoulli trials, binomial with large $n$ and small $p$, or Poisson process counting \# events], [], [Can be approximated by Bin with $n$ small big $N$], [Can be approximated by Poi $n$ large, $p$ small], 
      )
]


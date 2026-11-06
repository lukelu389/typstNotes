#import "../../../preamble.typ": *
#import "@preview/combo:0.1.0"
#show: conf


#let Title = "CH 4 - Multivariate Discrete Random Variable"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== 4.1 Basic Terminology and Techniques

Ofter we are interested in multiple phenomenal that vary alongside each other. 

Examples:

- Treatment/dose and disease status

- Stock price or credit rating of 2 companies

- Pollutant level and respiratory illnesses

#defn[*Joint Probability Mass Function* \ 

The *joint probability mass function* of two random variable $X$ and $Y$ is $ f(x, y) = P(X = x, Y = y) $ for $(x, y)$ in joint rnage of $X, Y$ respectively.

It is represented usually by a table, occasionally a function, never a histogram.

]

*Properties for JPMF*:

1. $0<=f(x, y)<=1$

2. $sum_x sum_y f(x, y) = 1$

We can find any probability involving $x "and" y$ by summing up the $f(x, y)$ over all pairs that satisfy

Example:

Flip a fair coin 3 times and let $X = "# of heads obtained", Y = cases(1 "if first flip is T", 0 "else")$. Find $f(x, y)$

#align(center)[
  #table(
      columns: 5, 
      align: auto,
      stroke: 0.5pt,
      inset: 6pt,
      [], [0], [1], [2], [3],
      [0], [0], [$1/8$], [$2/8$], [$1/8$],
      [1], [$1/8$], [$2/8$], [$1/8$], [$0$]

      )
]

$P(2 < X+Y) = f(3, 0)+f(2, 1)+f(3, 1) = 2/8$

$P(X-Y = 1) = f(1, 0)+f(2, 1) = 2/8$

#defn[*Marginal PMF* \ 

The marginal PMF of $X$ is $ f_(X) (x) = P(X = x) = sum_y f(x, y) \ 

f_Y (y) = P(Y = y) = sum_x f(x, y) $
]

In general, the JPMF of $X_1, X_2, ..., X_n$ is $f(x_1, x_2, ..., x_n)= P(X_1 = x_1, X_2 = x_2, ..., X_n = x_n)$

Marginal PMF of $X_1$ is $f_1(x_1) = sum_(X_2) ... sum_(X_n) f(x_1, x_2, ..., x_n)$. 

The JPMF of $X_1, X_2$ is $f_(1, 2) (x_1, x_2) = sum_(X_3) ... sum_(X_n) f(x_1, x_2, ..., x_n)$

#defn[*Independence Random Variable*\

We say two random variables $X, Y$ are independent if and only if $ f(x, y) = P(X = x, Y = y) = P(X=x) P(Y = y) = f_X (x)+f_Y (y) $
]

Example:

Let $X = "# days between texts from A to B"$ and $Y = "# days between texts from B to A"$

The joint PMF be $f(x, y) = 1/16 (1/2)^x (7/8)^y, "for" x, y = 0, 1, 2, ...$

Find the marginal PMF:

$f_X (x) = 1/16 (1/2)^x sum_(y) (7/8)^y  = 1/16(1/2)^x 8 = (1/2)^(x+1)$

$X ~ "Geo"(1/2)$

$f_Y (y) = 1/16 (7/8)^y sum_(x) (1/2)^x  = 1/16(7/8)^x 2 = 1/8 (7/8)^y$

$Y ~ "Geo"(1/8)$

$f(x, y) = f_X (x) f_Y (y) = (1/2)^(x+1)  1/8 (7/8)^y = 1/16 (1/2)^x (7/8)^y$, thus $X, Y$ are independent

== 4.2 Functions of $2^+$ random variables

We may be interested in $U = g(X, Y)$

Examples:

1. Let $X = "# marks gained"$, $Y = "# marks lost"$

  #table(
        columns: 5, 
        align: auto,
        stroke: 0.5pt,
        inset: 6pt,
        [$y$ \\ $x$], [0], [1], [2], [3], 
        [0], [0.18], [0.34], [0.03], [0.02],
        [1], [0.09], [0.09], [0.06], [0.08],
        [2], [0.01], [0.01], [0.06], [0.03]
        )
    
  If $U$ is the overall impact, $U = g(X, Y) = X-Y$

  PMF of $U$:

    #table(
        columns: 7, 
        align: auto,
        stroke: 0.5pt,
        inset: 6pt,
        [$u$], [$-2$], [$-1$], [$0$], [$1$], [$2$], [$3$],
        [], [0.01], [0.1], [0.33], [0.43], [0.11], [0.02]
  )

  In general, if $U = g(X, Y), f_U (u) = sum_(x) sum_y f(x, y)$

  In the case of $U = g(X, Y) = X+Y$

  $f_U (u) = sum_x sum_y f(x, y) = sum_(x)^u f(x, u-x)$


\
\
2. Suppose $X ~ "Poi"(7), Y~ "Poi"(5)$ are independent

  $U = X+Y$
  
  $f_U (u) = f_X (x) f_Y (y) = frac(e^(-7)7^x, x!) dot frac(e^(-5)5^y, y!) = sum_(x=0)^u f(u, u-x) = 1/e^12 sum_(x=0)^u = frac(7^x 5^(u-x), x! (u-x)!) \
  
  = e^(-12)/u! sum_(x=0)^u = binom(u, x) 7^x 5^(u-x)  = (e^(-12)12^x)/u!
  $

  $U ~ "Poi"(12)$

\
*Poisson random variables* are closed under convolution:
  
  $X~"Poi"(x), Y~"Poi"(y)$ are independent, $X+Y ~ "Poi"(x+y)$

*Binomial random variables* are closed under convolution:

  $X~"Bin"(n, p), Y~"Bin"(m, p)$ are independent, $X+Y~"Bin"(n+m, p)$

*Geometric random variables* are closed under convolution:

  $X~"Geo"(p), Y~"Geo"(p)$ are independent, $X+Y ~ "NB"(p)$

  
#defn[*Multinomial Random Variable* \ 

Trials are conducted with 3 conditions:

- $k$ possible outcomes on each Trials

- probabilities are constant, $p_1, p_2, ..., p_k$

- trials are independent

We conduct $n$ trials and let $X_i = "# of outcome" i "observed", 1<=i<=k, k in NN_(>0)$

$X_1, .., X_k ~ "MN"(n, p_1, ..., p_k) "where " sum_(i=0)^k p_i = 1 "and" sum_(i=1)^k X_i = n$

$X_1, ..., X_(k-1) ~"MN"(n, p_1, ..., p_(k-1))$

*WARN*: trials are independent, but variables are not independent

]

Examples of : 

- \# of votes for candidates in election

- \# outcomes on a dice roll

- \# of each answer to survey/question

Suppose roll 10 fair 6-sided dices and let 

$X_1 = "# of "2, X_2 = "# of" 6, X_3 = "# of" 2 $

What is the probability of $f(2, 6, 2) = (10!/(2!6!2!))(1/6)^2 (1/3)^6 (1/2)^2$

Joint PMF: $ f(x_1, ..., x_k) = frac(n!, x_1!...x_k!)p_1^x_1 ... p_k^(x_k), space forall sum_(i=1)^k x_i = n \

f(x_1, ..., x_(k-1)) = frac((n-1)!, x_1!...x_(k-1)! (n- sum_(i)^(k-1) x_i)!)p_1^x_1 ... p_(k-1)^(x_(k-1)) (sum_(i)^(k-1) x_i)^(n- sum_(i)^(k-1) x_i), space forall sum_(i=1)^k x_i = n 
$
\
Marginal PMF: 

$ f_X_1 (x_1) = sum_(x_2) ... sum_(x_k) f(x_1, ..., x_k) $

Example, $k = 3$

$f_X_1(x_1) = sum_(x_2=0)^(n-x_1) f(x_1, x_2) = sum_(x_2=0)^(n-x_1) frac(n!, x_1!x_2! (n-x_1-x_2)!) p_1^x_1 p_2^x_2 (1-p_1-p_2)^(n-x_1-x_2) \

= binom(n, x_1)p_1 x^1 sum_(x_2=0)^(n-x_1) binom(n-x_1, x_2) p_2^x_2 (1-p_1-p_2)^(n-x_1-x_2) = binom(n, x_1)p_1^x_1 (1-p_1)^(n-x_1) $

$X_1 ~ "Bin"(n, p_1), X_i ~ "Bin"(n, p_i)$

If $U = X_1+X_2, k = 3$

$f_U (u) = sum_(x_1=0)^u f(x, u-x_1) = sum_(x_1=0)^u frac(n!, x_1! (u-x_1)! (n-u)!) p_1^x_1 p_2^(u-x_1) (1-p_1 - p_2)^(n-u) \ 

= binom(n, u) (p_1+p_2)^u (1-p_1-p_2)^(n-u)(p_1+p_2)^u
$


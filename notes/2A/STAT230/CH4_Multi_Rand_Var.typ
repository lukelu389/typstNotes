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


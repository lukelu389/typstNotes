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

= binom(n, u) (p_1+p_2)^u (1-p_1-p_2)^(n-u)
$

== 4.3 Expectation, Covariance, Linear Correlation

*Expectation*

To find the expected value of a funciton of $X$ and $Y$, 

we let $U = g(X, Y)$ and find $E[U]$, $E[g(X, Y)] = E[U] = sum_u u f_U (u) = sum_x sum_y g(x, y) f(x, y)$

Properties:

1. Linearity: $E[a g(X, Y)+ b h(X, Y) + c] = a E[g(X, Y)]+ b E[h(X, Y)] +c$

2. Independence: $E[g(X) h(Y)] = E[g(X)] E[h(y)]$

3. $(X_1, X_2, ..., X_N) ~ "MN"(n, p_1, p_2, ..., p_n)$

  For $n>=2$

  $E[X_i X_j] = n (n-1)p_1 p_2 $


#defn[*Covariance* \ 

The *covariance* of two random variables $X, Y$ is $ "Cov"(X, Y) = sigma_(X Y) = E[(X-mu_x)(Y-mu_Y)] = E[X Y] - mu_X mu_Y $

If $"Cov"(X, Y) > 0$, indicates positive *linear* association

If $"Cov"(X, Y) < 0$, indicates negative *linear* association
]

#thm[*Independence and Covariance*\ 

If $X, Y$ are independent random variables, then

$ "Cov"(X, Y) = 0 $

*WARN* the converse is FALSE

Zero covariance DOES NOT imply independence.
]

#defn[*Correlation* \ 

$ "Corr"(X, Y) = rho_(X Y) = abs(frac("Cov"(X, Y), sigma(X) sigma(Y)))<=1 $

We can interpret the magnitude as the strengh of the linear relationship. The bigger the absolute value, the stronger the relation.

1. $"Cov"(X, X) = 1$
2. $"Cov"(X, Y) = "Cov"(Y, X)$
]

== 4.4 Linear Combination of Random variables

#thm[*Lemma* \ 

Let $X$, $Y$, $Z, W$ be random variables and let $a, b ∈ R$. Then $ "Cov"(a X + b Y, c Z + d W ) = &a c"Cov"(X , Z) + a d "Cov"(X, W) \ \
+ space  &b c "Cov"(Y, Z) +  b d"Cov"(Y, W) $

This implies: Large values of $"Cov"(X , Y )$ can be a result of the scale of $X$ and $Y$ .
]

From the above lemma, we can obtain 
$ "Var"(a X+ b Y) &= "Cov"(a X + b Y, a X+ b Y) \

&= a^2 "Var"(X) + b^2 "Var"(Y) + 2 a b"Cov"(X, Y) \ 

&= a^2 sigma_X^2 + b^2 sigma_Y^2+2a b sigma_X sigma_Y
$

In general: $"Var"(sum_(i=1)^n c_i X_i) = sum_(i=1)^n c_i^2 sigma_i^2+ 2sum_(i=1)^(n-1) sum_(j=i+1)^n c_i c_i sigma_(i j)$

*Expectaions*

Suppose $overline(X) = frac(sum_(i=1)^n X_i, n) $ where $X_i$ have mean $mu$ and covaraince $sigma^2$

$ E[overline(X)] = E[sum X_i/n] = mu $

$ "Var"[overline(X)] = sigma^2/n + 2 sum sum "Cov"(X_i, Y_j) $

If $X, Y$ are independent, then the covariance becomes 0, so $lim_(n->oo) sigma^2/n = 0$

#defn[*Indicator Random Variable* \ 

Let $I_A = cases(1 "if" A, 0 "if not" A)$, then $I_A ~ "Bin"(1, p)$, where $p = P(A)$

1. $ E[I_A] = P(A)$

2. $"Var"[I_A] = P(A) - [P(A)]^2$

3. $"Cov"(I_A, I_B) = P(A inter B) - P(A)P(B)$
]

\
Example:

$#table(
        columns: 4, 
        align: auto,
        stroke: 0.5pt,
        inset: 6pt,
        [$f(x, y)$], [0], [1], [$f_Y y$],
        [0], [0.06], [0.22], [0.28],
        [1], [0.24], [0.48], [0.72],
        [$f_X x$], [0.3], [0.7], [1]
  )$

$E[X] = 0.7, "Var"[X]=0.21$

$E[Y] = 0.72, "Var"[Y] = 0.2016$

$"Cov"[X, Y] =0.48-0.7*0.72 = -0.024$

$"Corr"(X, Y) = -0.1166$

Examples of Indicator variables

1. Binomial: $X ~ "Bin"(n, p)$, let $X_i = cases(1 "if trial is success", 0 "if trial is falure")$

  $X = sum_(i=1)^n X_i ==> E[X_i] = p, "Var"(X_i) = p(1-p), "Cov"(X_i, X_j) = 0$ 

  $E[X] = sum_(i=1)^n E[X_i] = n p$

  $"Var"[X] = sum_(i=1)^n "Var"[X_i] + 2 (0) = n p (1-p)$

2. Hypergeometric: $X~"HG"(N, r, n)$, let  $X_i = cases(1 "if trial is success", 0 "if trial is falure")$

  $X = sum_(i=1)^n X_i ==> E[X_i] = r/N, "Var"(X_i) = r/N (1-r/N), "Cov"(X_i, X_j) < 0$ 

  $E[X] = sum_(i=1)^n E[X_i] = n r/N$

  $"Var"[X] = sum_(i=1)^n "Var"[X_i] - 2 sum sum"Cov"(X_i, X_j) = n r/N -(1-r/N) (N-n)/(N-1)$

3. Given probability of receiving delivery is $1/N$. Let $X = "number delivered correctly"$ with range ${0, 1, ..., N}$

  Let $X_i = cases(1 "if delivered right", 0 "if not delivered right")$

  $X = sum_(i=1)^n X_i ==> E[X_i] = 1/N, "Var"(X_i) = 1/N (1-1/N), "Cov"(X_i, X_j) > 0$ 

  $E[X] = sum_(i=1)^n E[X_i] = 1$

  $"Var"[X] = sum_(i=1)^n "Var"[X_i] - 2 sum sum"Cov"(X_i, X_j) = 1-1/N +1/N$

== 4.5 Markov's Inequality, Chebyshev's Inequality, and the Law of Large Numbers

#thm[*Markov Inequality* \ 

If $X$ is a random variable with $E[ |X| ]<oo$, then for any $epsilon > 0$,$ P(|X|>epsilon) <= 1/epsilon E[ |X| ] $
]

#thm[*Chebyshev's Inequality* \ 

If $X$ is an random variable with $E[X] = mu, "Var"[X] = sigma^2$, then for any $epsilon > 0$, $ P(|X| > epsilon) <= E[X^2]/epsilon $ and $ P(|X-mu|> epsilon) <= sigma^2/epsilon^2 $
]

#proof[
  Note if $|X|>epsilon$, then $X^2 > epsilon^2$, so $P(|X|>epsilon) = P(X^2>epsilon^2) <= E[X^2]/epsilon^2$ 
  
  and $P(|X-mu|>epsilon) <= E[(X-epsilon)^2]/epsilon^2 = sigma^2/epsilon^2$
]

#align(right)[$square$]

#thm[*Weak Law of Large Numbers* \ 

Let $overline(X) = frac(sum_(i=1)^n X_i, n)$ where $X_i$ have mean $mu$, variance $sigma^2$ and are uncorrelated. Then $ lim_(n->0) P(|overline(X)-mu| > epsilon) > 0 $ for $epsilon > 0$
]

#proof[
  $0 <= P(|overline(X)-mu| > 0) <= "Var"(overline(X))/epsilon^2 = sigma^2 / (n epsilon^2) $.

  $0<= lim_(n->oo) P(|overline(X)-mu|>epsilon)<=lim_(n->oo) sigma^2/(n epsilon^2) <= 0$
]
#align(right)[$square$]

== 4.6 Conditional Random variables

Recall for independence of random variables we used: $P (A B) = P(A)P(B)$

$P(A |B) = P(A B) /P(B)$ 


#defn[*Conditional PMF* \ 

The conditional PMF of $X$ given $Y = y$ is $ f_(X|Y) (x|y) = P(X=x|Y=y) = frac(P(X=x, Y=y), P(Y=y)) = f(x, y)/f_Y(y) $ for all $x in$ range $X, y in$ range $Y$

and the conditional PMF of $Y$ given $X=x$ is 
$ f_(Y|X) = f(x, y)/(f_X (x)) $
]

*Important Result:*

If $X_1, X_2, X_3 ~ "Mult"(n, p_1, p_2)$,  note$X_2 ~ "Bin"(n, p_2)$

$P(X_1 | X_2 = x_2) = frac(f(x_1, x_2), f_(X_2) (x_2)) = frac((n-x_2)!, x_1!(n-x_1-x_2)!) (p_1/(1-p_2))^x (frac(1-p_1-p_2, 1-p_2))^(n-x_1-x_2) $

$X_1 |X_2=x_2 ~ "Bin"(n-x_2, p_1/(1-p_2))$


#defn[*Conditional Mean* \ 
The conditional mean of $X|Y=y$ is $ E[X|Y=y] = sum_x x f_(X|Y) (x|y) $

The conditional mean of $Y|X=x$ is $ E[Y|X=x] = sum_y y f_(Y|X) (y|x) $
]

$E[X_1 | X_2 =x_2] = (n-x_2)(p_1/(1-p_2))$

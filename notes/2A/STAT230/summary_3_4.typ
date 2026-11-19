#import "../../../preamble.typ": *
#import "@preview/combo:0.1.0"
#show: conf


#let Title = "Summary Chapter 3 and 4"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

$X: S->RR$ with countable range

PMF: $f(x) = P(X=x), sum_x f(x) = 1, forall x in "range", 0<=f(x)<=1$

CDF: 
- Right countinuous, non-decreasing
- $F(x_i) = P(X<=x) =sum_j^i f(x)_j, "where" 0<=F(x)<=1$
- $lim_(x->-oo) F(x)=0, lim_(x->oo) F(x) = 1$
- $f(x) = F(x)-F(x-1)$

Expectations:
- $E[x] = sum_(x) x f(x)$
- $E[a X+b]= a E[X]+b$
- $E[g(X)] = sum_(x) g(x)F(x) != g(E[X])$

Variances:
- non-negative
- $E[(X-mu)^2] - E[X^2] - E[X]^2$
- $"Var"(a X+ b) = a^2"Var"(X)$

MGF:
- $M_X (t) = E[e^(t X)]$
- $M_X^((n)) = E[X^n]$
- *Domain and ranges*

Discrete Uniform 

Hypergeometric 

Binomial 
- can use to estimate HG
- Bernoulli trials

Geometric 
- sum of Geo is NB
- Bernoulli trials

Negative Binomial
- Bernoulli trials

Poisson
- can use to estimate Bin
- Poisson process

Multinomial

PMF
- JointPMF: $f(x, y) = P(X = x, Y = y)$
- MarginalPMF: $f_X (x) = sum_y f(x, y)$
- Independence: $f(x, y) = f_X (x) f_Y (y)$
- $E[g(X, Y)] = sum sum g(x, y) f(x, y)$
- ConditionalPMF: $f(X|Y) = f(x, y)/(f_Y (y))$

Covariance
- $"Cov"(X, Y) = E[(X-mu_X)(Y-mu_Y)] = E[X Y] -mu_X mu_Y$ 
- $"Corr"(X, Y) : -1<= "Cov"(X, Y)/("SD"(X) "SD"(Y)) <=1$
- $E[sum_i c_i X_i] = sum_i c_i mu_i$
- $"Var"(sum_c_i X_i) = sum_i c_i^2 sigma_i^2$
- Independence implies $"Cov" = 0$, reverse is false

Indicator RV
- $E[I_A] = P(A)$
- $"Var"(I_A) = P(A)(1-P(A))$
- $"Cov"(I_A, I_B) = P(A B) - P(A)P(B)$


#import "../../../preamble.typ": *
#import "@preview/diverential:0.2.0": *
#let strut(h) = box(height: h, width: 0pt)

#let Title = "CH 4 — Power Series"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== Power Series
#info[*Power Series Definition*\

A *power series centered at $x = a$* is an infinite series of the form $ sum_(n=0)^oo c_n (x-a)^n = c_0 + c_1 (x-a) + c_2(x-a)^2 +... $ where $x$ is a variable, and $a, c_n (n in NN union 0)$ are constants. The set of all $x$ values for which $sum_(n=0)^oo c_n (x-a)^n$ converges is called the *interval of convergence* for $sum_(n=0)^oo c_n (x-a)^n$ 
]



#info[*Power Series Properties*\

Given any power series $sum_(n=0)^oo c_n (x-a)^n$, there are only 3 possibilities:

1. The power series converges only when $x =a$.

2. The power series converges absolutely $forall x in RR$. 

3. There exists a strictly positive real number *radius of convergence* $R$ s.t. the power series converges absolutely when $|x-a|<R$, diverges when $|x-a|>R$, and may converge or diverge(inconclusive) when $|x-a|=R$.
]


#info[*Interval of Convergence*\

Given a power series $sum_(n=0)^oo c_n (x-a)^n$

1. The interval of convergence of the power series, denoted $I$ is $ I = {x_0 in RR: sum_(n=0)^oo c_n (x-a)^n "converges"} $

2. The radius of convergece denoted $R$

  - If $I = {a}, R =0$

  - If $I = (-oo, oo), R = oo$

  - Otherwise, $R$ is the unique positive real number described in case 3 of the previous properties.
]

Examples:

Suppose $sum_(n=0)^oo c_n (x-2)^n$ diverges when $x = -1$ and converges $x = 4$. Determine if the following statements are must be true, must be falose or might be true

- The power series diverges when $x = 5$ : Might be true

- The power series diverges when $x = 6$ : Must be true

- The series $sum_(n=0)^oo c_n$ converges : Must be true

- The series $sum_(n=0)^oo (-1)^n 2^n c_n$ converges : Might be true


== Representing Functions as Power Series

#info[*Abel's Theorem*\

Let $I$ denote the interval of convergence for the power series function $f(x) = sum_(n=0)^oo c_n (x-a)^n$.

Then $f$ is contiuous on $I$


*Properties*

Let $f(x) = sum_(n=0)^oo c_n(x-a)^n$ and $g(x) = sum_(n=0)^oo d_n (x-a)^n$

Let $R_f$ and $R_g$ be the radii of convergence for $f, g$ respectively. Let $I_f, I_g$ be the interval of convergence for $f, g$ respectively. Then the following statements hold.

1. Let $h(x) = f(x)plus.minus g(x) = sum_(n=0)^oo (c_n plus.minus c_n) (x-a)^n$

  - If $R_f != R_g$, then the radius of convergence for $h(x) = min{R_f, R_g}$ and the interval of convergence for $h(x) = I_f inter I_g$.

  If $R_f = R_g$, then the radius of convergence for $h(x)= R_f$

2. Let $p(x) = (x-a)^k f(x) = sum_(n=0)^oo c_n (x-a)^(n+k), k in ZZ and k > 0$

  Then the radius of convergence for $p(x) = R_f$ and the interval of convergence for $p(x) = I_f$

3. Suppose that $a = 0$, i.e., $f(x) = sum_(n=0)^oo c_n x^n$ is a power series centred at $x = 0$

  Let $q(x) = f(b x^k) = sum_(n=0)^oo c_n b^n x^(k n), b in RR \ {0}, k in RR^+$

  Then the radius of convergence for $q(x)$ is $R(frac(R_f, |b|)^(1/k))$

  The interval of convergence for $q(x)$ is ${x in RR | b x^k in I_f}$
]

Examples:

Given $1/(1-x) = sum_(n=0)^oo x^n "with" I = (-1, 1), R = 1$

1. $f(x) = 1/(2-x) = 1/2 (1/(1-x/2)), "center at" x = 0$

  $1/2 (1/(1-x/2)) = 1/2sum_(n=0)^oo (x/2)^n = sum_(n=0)^oo 1/2^(n+1) x^n$

  $I = (-2, 2), R = 2$

2. $f(x) =x^2 / (x+3) = x^2/3 (1/(1- (-x/3))), "center at" x = 0$

  $x^2/3 (frac(1, 1-(-x/3))) = sum_(n=0)^oo (-x/3)^n x^2/3 = sum_(n=0)^oo frac((-1)^n x^(n+2), 3^(n+1))$

  $I = (-3, 3), R = 3$



== Differentiation and Integration on Power Series
\
#info[*Differentiation and Integration on Power Series*\

Let $f(x) = sum_(n=0)^oo c_n (x-a)^n$ be a power series function with the radius of convergence $R>0$

Then $f(x)$ is differentiable on the interval $(a-R, a+R)$

Moreover, the following statements hold.

1. $ f'(x) = sum_(n=1)^oo c_n n (x-a)^(n-1), quad quad forall x in (a-R, a+R) $
  
  Note: Interval of convergence might change when $R<oo$ at the endpoints.

2. $ integral f(x) dif x = C+ sum_(n=0)^oo c_n frac((x-a)^(n+1), n+1), quad quad forall x in (a-R, a+R), C in RR $
  Note: Interval of convergence might change when $R<oo$ at the enpoints.

3. The above power series for $f'(x)$ and $integral f(x) dif x$ both have the same radius of convergence of $R$

4. For any subinterval $[b, d] subset (a-R, a+R)$, we have 

$ integral_b^d f(x) dif x = sum_(n=0)^oo c_n integral_b^d (x-a)^n dif x = sum_(n=0)^oo c_n eval(frac((x-a)^(n+1), n+1), b, upper: d) $

All four statements continue to hold when the radius of convergence is $R = oo$, in which we replace the interval with $RR$
]

Examples:

Given $1/(1-x) = sum_(n=0)^oo x^n "with" I = (-1, 1), R = 1$

1. $f(x) = ln(x+1)$ centered at $x = 0$

  $dvs(ln(x+1), x) = 1/(1+x) = 1/(1- (-x))$

  $1/(1-(-x)) = sum_(n=0)^oo (-1)^n x^n$

  $integral 1/(1+x) dif x = integral sum_(n=0)^oo (-1)^n x^n dif x = sum_(n=0)^oo integral (-1)^n x^n dif x = C+ sum_(n=0)^oo (-1)^n x^(n+1)/(n+1)$

  $ln(x+1) = sum_(n=0)^oo (-1)^n x^(n+1)/(n+1)$

  $R = 1, I = (-1, 1]$
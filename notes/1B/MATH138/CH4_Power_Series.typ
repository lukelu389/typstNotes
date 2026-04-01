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

  $
    integral_b^d f(x) dif x = sum_(n=0)^oo c_n integral_b^d (x-a)^n dif x = sum_(n=0)^oo c_n eval(frac((x-a)^(n+1), n+1), b, upper: d)
  $

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

2. $f(x) = frac(x, (1-2x)^2)$

  $dvs(1/(1-x), x) = frac(1, (1-x)^2)$

  $frac(1, (1-2x)^2) = sum_(n=0)^oo n 2^(n-1) x^(n-1), quad|2x|<1 ==> |x|<1/2$

  $frac(x, (1-2x)^2) = sum_(n=0)^oo n 2^(n-1) x^n$

  $R = 1$

\
3. Consider $f(x) = sum_(n=0)^oo frac(x^n, n!) , x in RR$, and this function is the IVP $y' = y, y(0)=1$

  $f'(x) = sum_(n=1)^oo frac(n x^(n-1), (n-1)!) = sum_(n=0)^oo frac(x^n, n!)$

  $f(0) = 1$

  $f(x) = e^x = sum_(n=0)^oo frac(x^n, n!), x in RR$



== Taylor Series

#info[*Taylor Series*\

  *Uniqueness of Power Series*
  Suppose that $f(x) = sum_(n=0)^oo c_n (x-a)^n, forall x in (a-R, a+R), R > 0$.

  Then for every $n >0$, we have $c_n = frac(f^(n)(a), n!)$

  *Taylor Series*

  Let $f(x)$ be a $m$ degree polynomial function

  Its Taylor Series centered at $x = a$ is $ f(x) = T_(m, a)(x) = sum_(n=0)^m frac(f^(n) (a)(x-a)^n, n!) $


  - For every integer $j in {0, 1, 2, 3, ..., m}, T_(m, a)^(j)(a) = f^(j)(a)$

  *Maclaurin Series*

  $ f(x) = sum_(n=0)^oo frac(f^(n) (0)x^n, n!) $ is a Maclaurin series for $f(x)$

]

Examples:

1. $f(x)=sin x, a = 0$

  $f(0) = 0, f'(0)=1, f''(0) = 0, f'''(0) = -1, f^(4) = 0$

  $sin (x) = sum_(n=0)^oo frac((-1)^(n) x^(2n+1), (2n+1)!), quad forall x in RR$

  $lim_(n->oo)| frac((-1)^(n+1) x^(2n+3), (2n+3)!) dot frac((2n+1)!, (-1)^(n) x^(2n+1))| = lim_(n->oo) (|x|^2) / (2n+2)(2n+3) = |x|^2 dot 0 = 0 < 1$.

  Converges by Ratio Test.

  The power series converges for all $x in RR$

2. $f(x)= cos(x), a = 0$

  Since $dvs(sin x, x) = cos x$.

  $cos(x) = sum_(n=0)^oo frac((-1)^(n) x^(2n), (2n)!), quad forall x in RR$

#tip[*Common Series*\
  $ sin(x) = sum_(n=0)^oo frac((-1)^n x^(2n+1), (2n+1)!) $

  $ cos(x) = sum_(n=0)^oo frac((-1)^n x^(2n), (2n)!) $

  $ e^x = sum_(n=0)^oo frac(x^n, n!) $

]

#info[*Lagrange's Remainder Formula*\

  Let $m$ be a nonnegative integer. Suppose that $f^(m+1)$ is continuous on an open interval $I$ that contains $a$. If $x in I$, then there is a real number $c$ between $a$ and $x (i.e., c in [a, x], x>=a or c in [x, a], x<a)$ s.t. $ f(x) - T_(m, a)(x) = frac(f^(m+1)(c), (m+1)!) (x-a)^(m+1) $
]


Example:

$f(x) = sin(x), a = 0$

#proof[
  Let $x in RR, m in NN$.

  Since $f^(m+1)(x)$ is one of $plus.minus cos(x), plus.minus sin(x), f^(m+1)(x)$ is continuous on $RR$

  By LRF, $exists c in [0, x]$ s.t. $sin(x) - T_(m, 0)(x) = frac(f^(m+1)(c), (m+1)!) x^(m+1)$.

  Thus $|f^(m+1)(c)| <=1 ==> |sin (x) - T_(m, 0) (x)| = |frac(f^(m+1)(c), (m+1)!) x^(m+1)| <= frac(|x|^(m+1), (m+1)!)$.

  Since $lim_(n->oo) frac(|x|^(m+1), (m+1)!) = 0$, by Squeeze Theorem, $lim_(n->oo) |sin(x)- T_(m, 0)(x)| = 0$.

  Therefore $f(x) = lim_(n->oo) T_(m, 0) = sum_(n=0)^oo frac((-1)^(n) x^(2n+1), (2n+1)!)$
]



#align(right)[$square$]
#info[*Taylor's Inequality*\
  Let $m$ be a nonnegative integer. Suppose that $f^(m+1)$ is continuous on an open interval $I$ that contains $a$.

  If $|f^(m+1)|<=K$ for every $x in I$, then for every $x in I$, $ |f(x)- T_(m, a)(x)| <= frac(K|x-a|^(m+1), (m+1)!) $
]

Examples:

1. Let $f(x) = sqrt(1+x)$

$f(x) = (1+x)^(1/2) ==> f(0)=1$

$f'(x) = 1/2 (1+x)^(-1/2) ==> f'(0) = 1/2$

$f''(x) = -1/4 (1+x)^(-3/2) ==> f''(0)=-1/4$

$f'''(x) = 3/8 (1+x)^(-5/2)$

$T_(2, 0)(x) = 1+ 1/2 x - frac(1, 4 dot 2!) x^2$

$T_(2, 0)(1) = 11/8$

$|f^(3)(c)| <= |f^(3)(0)| = 3/8$

Therefore $|f(1)-T_(2, 0)(1)| <= (3/8)/6 = 1/16$
\
\

2. Find Taylor Polynomial for $f(x) = x^2 + x+1$ centered at $x = 1$

  $3 + 3(x-1) + (x-1)^2$

3. Suppose that $T_(3, -1)(x)$ for a function $f$ is given by $T_(3, -1) =2 - 3(x+1)^2 + 1/5 (x+1)^3$.

  Find $f'(-1), f''(-1)$

  $f'(-1) = 0$

  $f''(-1) = -3 * 3! = -6$

4. $f(x) = x^3 e^x^2, f^(63) (0)$

  $e^x = sum_(n=0)^oo x^n / n! ==> x^3 e^x^2 = sum_(n=0)^oo x^(2n+3) / n!$, which is the Maclaurin Series for the given function which is unique.

  $f'(63)(0)/ 63! ==> 1/30! ==> 30!/63!$

5. Let $f(x) = x^(2/3)$. Determine $T_(2, 8)(x)$ to determine an upper bound on the error in using $T_(2, 8)$ to estimate $f(x), x in (5, 11)$

  Let $f(x) = x^(2/3), f'(x) = 2/3 x^(-1/3), f''(x) = -2/9 x^(-4/3), f'''(x) = 8/27 (x)^(-7/3)$

  $T_(2, 8) = 4 + 1/3 (x-8) - 1/144 (x-8)^2$

  Note that $f'''(x)$ is continuous on $I = (5, 11)$ containing 8.

  $|f^(3)(x)| = f^(3)(x) <= f^(3)(5) = 8/27 dot 1/5^(7/3)$

  Therefore, for all $x in I$, $|f(x) - T_(2, 8)(x)| <= frac(8/27 dot 1/5^(7/3), 3!) |x-8|^3 < frac(8/27 dot 1/5^(7/3), 3!) 3^3 = 4/(3 dot 5^(7/3))$

== Binomial Series

#info[*Binomial Coefficient*\

  Let $alpha$ be a real number and let $n$ be some positive integers

  $ binom(alpha, n) = frac((alpha)(alpha-1)(alpha-2) ... (alpha - n + 1), n!) = frac(alpha!, n! (alpha - n)!) $

  Note:

  $binom(alpha, 0) = 1, binom(alpha, -n) = 0$

  $binom(alpha, n+1)(n+1) + binom(a, n) n = binom(alpha, n) alpha$
]

#info[*Generalized Binomial Theorem*\

  Let $alpha$ be a real number. If $|x|<1$, then $(1+x)^alpha = sum_(n=0)^oo binom(alpha, n)x^n = 1+ alpha x + frac(alpha (alpha-1), 2)x^2 + ...$

  If $|x|>1$ and $alpha$ is a nonnegative integer, then the series diverges
]

Examples:

1. Use the generalized binomial theorem to derive the power series representation of $f(x) = frac(1, 1-x)$ centered at $x = 1$

  Note that using the binomial theorem for $|x|<1, (1+x)^(-1) = sum_(n=0)^oo binom(-1, n) x^n$

  $==> frac(1, 1-x) = sum_(n=0)^oo binom(-1, n) (-1)^n x^n = sum_(n=0)^oo frac((-1)(-2)...(-n), n!) (-1)^n x^n = sum_(n=0)^oo x^n$


2. Determine Maclaurin series for $f(x) = sqrt(1+x)$

  $(1+x)^(1/2) &= sum_(n=0)^oo binom(1/2, n) x^n \ 
  
  &= 1+ sum_(n=1)^oo frac((1/2)(1/2-1) ... (1/2 - (n-1)), n!) x^n = 1+1/2 + sum_(n=2)^oo frac((-1)^(n-1) (2n-3) ,2^n) x^n / n!$

  We often write the product $(2n-3) times (2n-5) times ... 3 times 1 = (2n-3)!!$ meaning that all the terms in the entire factorial have the same parity (even or odd) as the given term

3. Compute $f^(6)(0), f^(7)(0)$ for $f(x) = x sqrt(1+x^3)$

  $x (1+x^3)^(1/2) &= sum_(n=0)^oo binom(1/2, n) x^(3n+1)$

  $3n+1 = 6, n in.not NN ==> f^(6) (0)= 0$

  $(f^(7) (0))/n!  ==> n = 2 ==> binom(1/2, 2) = frac(-1/4, 2!) = -1/8 ==> f^7 (0) = -1/4$

 

== Applications of Taylor Series

Examples:

1. Finding sum of given series

  - $sum_(n=1)^oo frac(2^n, n!) = sum_(n=0)^oo frac(2^n, n!) - 1 = e^2 - 1$

  - $sum_(n=0)^oo frac((-1)^n pi^(2 n), 4^n (2n)!)  = sum_(n=0)^oo frac((-1)^n,(2n)!) (pi/2)^(2n)= cos(pi/2)=0$

  - $sum_(n=0)^oo frac(1, n 3^n) = sum_(n=1)^oo frac((-1)^(2n-1), n)(1/3)^n= sum_(n=1)^oo frac(-1, n)(1/3)^n= -ln(2/3) = ln 3 - ln 2$

  - $sum_(n=0)^oo frac(n+1, n!) x^n, forall x in RR$

    $sum_(n=0)^oo frac(n, n!) x^n + sum_(n=0)^oo frac(1, n!) x^n = sum_(n=1)^oo frac(n, n!) x^n + e^x  = sum_(n=0)^oo frac(x^(n+1), n!)  = x e^x + e^x$

2. Express $integral sin(x^2) dif x$

  $sin(x) &= sum_(n=0)^oo frac((-1)^n x^(2n+1), (2n+1)!) $

  $sin(x^2) = sum_(n=0)^oo frac((-1)^n x^(4n+2), (2n+1)!)$

  $integral sin(x^2)dif x = C +sum_(n=0)^oo frac((-1)^n , (2n+1)!) frac(x^(4n+3), 4n+3) = C +sum_(n=0)^oo frac((-1)^n , (2n+1)! dot 4n+3 )x^(4n+3)$

3. Express numerical series of $integral_0^1 sin(x^2) dif x$

  $integral_0^1 sin(x^2) dif x = sum_(n=0)^oo [integral_0^1 frac((-1)^n x^(4n+2), (2n+1)!)] = sum_(n=0)^oo eval((frac((-1)^n x^(4n+3), (2n+1)! dot (4n+3))),0, upper: #1) = sum_(n=0)^oo frac((-1)^n, (2n+1)! dot (4n+3))$

4. Use power series to evaluate $lim_(x->0) frac(e^x - 1, x)$

  $lim_(x->0) (sum_(n=0)^oo x^n/n! - 1)/x = lim_(x->0) (sum_(n=0)^oo x^n/n! - 1)/x = lim_(x->0) (sum_(n=0)^oo  x^(n-1)/n!)= 1$ 


== Big-O Notation

#info[*Big-O Notation*\

Let $a$ denote a real number or $oo$. Assume that $f(x)$ and $g(x)$ are two functions that are defined for all real $x$ values that are near $a$ but are not necessarily defined when $x = a$. More precisely, if $a in RR$, we assume that $f(x)$ and $g(x)$ are both defined for all $x$ in the union $ I = (a- delta, a) union (a, a+delta) = {x in RR | 0< |x-a|<delta}, $

where $delta$ is some strictly positive real number. If $a = oo$, we assume that $f(x)$ and $g(x)$ are both defined for all $x$ in some open interval $I = (c, oo)$, where $c in RR$ denoted $ f(x) = O(g(x)) "as" x->a $

if there exists a real constant $M>0$ s.t. $ |f(x)|<=M|g(x)| $ for every $x in I$.
]
Examples:

1. $x = O(x^2) "as" x->oo$. 

  Let $M = 1$ and $D = (1, oo)$. Then $|x|=1|x|<|x||x|=|x|^2 = 1|x^2|, x in D$

2. $x^2 = O(x) "as" x->0$. 

  Let $M = 1$ and $D = (-1, 0) union (0, 1)$. Then $|x^2| = |x|^2= |x||x| < 1|x|, x in D$


#info[*Theorems*\

1. Let $a$ denote a real number or $oo$. If $f(x)=O(g(x))$ as $x->a$ and $g(x) = O(h(x))$ as $x->a$, then $f(x)=O(h(x))$ as $x->a$

2. If $f(x) = O(g(x))$ as $x->a$ and $lim_(x->b) h(x)=a$, then $ f(h(x)) = O(g(h(x))) "as" x->b $
]

#info[*Properties*\
Let $m, n$ be nonnegative integers. As $x ->0$, the following statements hold.

1. $O(x^m) dot O(x^n) = O(x^(m_n))$

2. $O(x^m) plus.minus O(x^k), k = min{m, n}$

3. $x dot O(x^n) = O(x^(n+1))$

4. $1/x dot O(x^n) = O(x^(n-1)), n >=1$

5. $C dot O(x^n) = O(C x^n) = O(x^n), C in RR$

6. $lim_(x->0) O(x^n) = 0, n>=1$
]

#info[*Taylor's Inequality, Big-O*\

Let $m$ be a nonnegative integer. Suppose that $f^(m+1)$ is continuous on an open interval $I$ that contains $a in RR$. If there is a real constant $K > 0$ s.t. $|f^(m+1)(x)|<=K$ for every $x in I$ $ f(x) - T_(m, a) (x) = O((x-a)^(m+1)) $

as $x ->a$. Moreover, if $P(x)$ is a polynomial of degree less than or equal to $m$ with the property that $f(x)-p(x) = O((x-a)^(m+1))$ as $x->a$, then $p(x) = T_(m, a)(x)$
]

Examples:

1. Show that $sin x = O(x), x->0; sin x !=O(x^2), x->0$

  $sin x - T_(0, 0)(x) = O(x), x->0$

  Since $T_(0, 0) = sin 0 = 0 ==> sin x = O(x), x->0$

  Suppose that $sin x = O(x^2), x->0$

  Then, $p(x) equiv 0 ==> sin x - p(x) = O(x^2), x->0$

  $T_(1, 0)(x)=x!= p(x)$, by contradiction, $sin x != O(x^2), x->0$

  
2. Show that $arctan 5x^2 = 5x^2 -125/5 x^6 + O(x^10), x->0$

3. 

  - $lim_(x->0) frac(cos x - 1, x^2)$

    $cos x -T_(3, 0)(x) = O(x^4), x->0$

    $cos x = (1-x^2/2) + O(x^4), x->0$

    $frac(cos x - a, x^2) = -1/2 + O(x^2) = -1/2$

    $lim_(x->0) frac(cos x - 1, x^2) = -1/2$

  - $lim_(x->0) frac(sin x cos x^2 - x, x^3)$

  

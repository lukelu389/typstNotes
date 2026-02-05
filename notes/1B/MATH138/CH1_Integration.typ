#import "../../../preamble.typ": *
#import "@preview/diverential:0.2.0": *
#let strut(h) = box(height: h, width: 0pt)

#let Title = "CH 1 — Integration"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== Definite Integrals

#info[*Riemann Sums*\

Given $f(x)$ that is defined over $[a, b]$ with $a<b$, the area under function $f(x)$ can be found by

1. *Left-Endpoint Riemann Sum*

  $ L_n = sum_(i=0) ^(n-1) f(x^*_i) Delta x $
   - Underestimates Increasing Funcitons

2. *Right-Endpoint Riemann Sum*

  $ R_n = sum_(i=1) ^(n) f(x^*_i) Delta x $
  - Overestimates Increasing Functions

where 
- $Delta x = (b-a)/n$ under regular partition
  
- $x_i^* = a + i Delta x  = a + i frac(b-a, n)$


$lim_(n->oo) R_n = lim_(n->oo) L_n$ for $f(x)$ on interval $[a, b]$

Regular Parition means interval $[a, b]$ is equally partitionined into $n$ rectangles with identical width
]

Example:

Estimate area under the curve for $f(x) = x^2$ on $x in [0, 1]$\

  $R_n = sum_(i=1)^n 1/n f(i/n) = sum_(i=1)^n 1/n (i/n)^2 = 1/n^3 sum_(i=1)^n i^2 = ((n+1)(2n+1))/(6n)$ 


  $lim_(n->oo) R_n = lim_(n->oo) frac((n+1)(2n+1), 6n) = 1/3$ 



#info[*Definite Integral*\

$f(x)$ defined on $x in [a, b]$ with regular partition with n subintervals

The definite integral of $f(x)$ on $[a, b]$ is defined


$ integral_a^b f(x) dif x = lim_(x->oo) sum_(i=1)^n f(x^*_i) Delta x  = lim_(n->oo) sum_(i=1)^n f(a+i Delta x) Delta x $

A function is integrable on $x in [a, b]$ provided that the limit of Riemann Sum exists and has the same value regardless of the choice of $x^*_i$

]

#info[*Integrability Theorem for Continuous Functions*\

Integrability: $lim_(n->oo) R_n = lim_(n->oo) L_n$

1. If $f$ is continuous of $[a, b]$ then $f$ is integrable on $[a, b]$

2. $f$ is bounded on $[a, b]$ and has a *finite* number of discontinuities, then $f$ is integrable on $[a, b]$

That is continuity implies integrability and the other way is false
]

Examples:
1. $f(x) = x^2$

2. $f(x) = cases(2 "if" x <= 3, 1 "if" x > 3)$, note that $f(x)$ is discontinuous

3. $f(x)= cases(1 "if" x in QQ, 0 "if" x in.not QQ) space$ on $[0, 1]$
 - $x^*_i$ is rational

  $integral_0^1 f(x) dif x = lim_(n->oo) sum_(i=1)^n f(x^*+i) Delta x = 1$ 
 - $x^*_i$ is irrational
  $integral_0^1 f(x) dif x = lim_(n->oo) sum_(i=1)^n f(x^*+i) Delta x = 0$ 
 Thus not integrable


For geometric interpretation, Riemann Sums and Definite Integrals measures the "signed" area where there is no more than 1 inflection point

- A positive result of $w$ implies the area under the curve above $x$-axis is $w$

- A negative result of $w$ implies the area under the curve under $x$-axis is $w$

#info[*Parity of Functions and Definite Integrals*\
Let $f(x)$ be bounded and integrable on $[-a, a]$

1. If $f(x)$ is odd function, then $ integral_(-a)^a f(x) dif x = 0 $ 

2. If $f(x)$ is even function where $integral_0^a f(x) dif x = w$ $ integral_(-a)^a f(x) dif x = 2 w $ 

]

Examples:

1. $integral_1^3 x^2 - 3x dif x = lim_(n->oo) sum_(i=1)^n f(1 + frac(2 i, n)) dot 2/n = im_(n->oo) sum_(i=1)^n [(1 + frac(2 i, n))^3 - 3(1 + frac(2 i, n)) ]dot 2/n $

$= lim_(n->oo) sum_(i=1)^n (-frac(4 i, n^2)+frac(8 i^2, n^3)-4/n) = -10/3$

2. $integral_0^5 x^3 - 2 dif x = lim_(n->oo) sum_(i=1)^n f(i 5/n) 5/n = lim_(n->oo) sum_(i=1)^n [(5/n)((i 5 /n)^3 - 2)] = 583/4$


#info[*Basic Property of Definite Integral*\
\

Let $f(x), g(x)$ be integrable on $[a, b]$
\

1. For any $c in RR$, the function $c f(x)$ is integrable and $ integral_a^b c f(x) dif x = c integral_a^b f(x) dif x $ 

2. The function $f + g$ is integrable and $ integral_a^b (f+g)(x) dif x = integral_a^b f(x) dif x + integral_a^b g(x) dif x $ 

3. If $m, M in RR$ and $m <= f(x) <= M forall x in [a, b]$, then $ m(b-a)<= integral_a^b f(x) dif x <= M(b-a) $

4. If $f(x)>=0 forall x$, then $ integral_a^b f(x) dif x >=0 $

5. If $f(x) <= g(x) forall x in [a, b]$, then $ integral_a^b f(x) dif x <= integral_a^b g(x) dif x $

6. The function $|f|$ is integrable on $[a, b]$ and $ abs(integral_a^b f(x) dif x)<= integral_a^b |f(x)| dif x $

7. Bound fliping $ integral_a^b f(x) dif x = - integral _b^a f(x) dif x $

8. $ integral_a^a f(x) dif x = 0 $ 

]

#info[*Separation of Domain of Definite Integral*\

If $f(x)$ is also integrable on an interval containing $a, b, c$, then $ integral_a^b f(x) dif x = integral_a^c f(x) dif x + integral_c^b f(x) dif x $
]
#info[*Average Value of Function*\

Let $f$ be a function that is continuous on an interval $[a, b]$ with $a<b$. The *average calue of $f$ on $[a, b]$* is defined as $ f_"avg" = frac(1, b-a) integral_a^b f(x) dif x $

]

Examples:

1. Determine the average value of $f(x)=1-x^2$ on [-1, 1]

 $f_"avg" = 1/(1-(-1)) integral_(-1)^1 f(x) dif x = integral_(0)^1 f(x) dif x = lim_(x->oo) sum_(i=1)^n (1-(i/n)^2) /n$

 $lim_(n->oo) 1/n sum_(i=1)^n 1- i^2/n^2 = lim_(n->oo)1/n (n-1/n^2(frac(n (n+1) (2n+1), 6))) = 1 - 1/3 = 2/3$

2. Suppose that $f, g$ are integrable on $[-1, 1], integral_1^(-1) f(t) dif t = 5$, and $g$ is an evern function with $integral_0^1 g(t) dif t = 2$. 

  $integral_(-1)^1 3f(x)-g(x) dif x = 3 integral_(-1)^1 f(x) dif x - integral_(-1)^1 g(x) dif x = -3 integral_1^(-1) f(x) dif x - 2 integral_0^1 g(x) dif x = -19$

\
#info[*Fundamental Theorem of Calculus (FTC - 1)*\

Let $a in RR$. If $f$ is continuous on an open interval $I$ containing $a$, then the funciton $ G(x) = integral_a^x f(t) dif t $ is differentiable $forall x in I$ and $G'(x) = f(x)$. That is, $ dvs(integral_a^x f(t) dif t, x) = f(x) $

*General Extended FTC 1*\


Let $f$ be continuous, $g, h$ be differentiable

$ dvs(integral_g(x)^h(x) f(t) dif t, x) = f(h(x))h'(x) - f(g(x))g'(x) $
]

#proof[
Given $x in I$, from the definition of the derivative, we have $ G'(x) &= lim_(h->oo) frac(G(x+h)-G(x), h) \
&= lim_(h->0) frac(integral_a^(x+h) f(t) dif t - integral_a^x f(t) dif t, h) &= lim_(h->0) frac(integral_a^(x) f(t) dif t + integral_x^(x+h) f(t) dif t - integral_a^x f(t) dif t, h) &= lim_(h->0) 1/h integral_x^(x+h) f(t) dif t$.

For all $h!=0$, sufficiently close to 0, and $h>0$ $f$ is continuous on $[x, x+h]$. 

$forall h, exists c = c(h)$ in $[x, x+h]$ s.t. $ f(c(h)) = 1/h integral_x^(x+h) f(t) dif t $

Since $x<=c(h)<= x+h$, by Squeeze Theorem, $lim_(h->0) c_h = x$, thus $ G'(x) = lim_(h->0) 1/h integral_x^(x+h) f(t) dif t = lim_(h->0) (c_h) = f(x) $

#align(right)[$square$]
]

Examples

1. $G(x) = integral_0^x frac(1, 1+t^2) dif t$

  Since $f(t) = frac(1, 1+t^2)$ is continuous on $RR$, by FTC 1

  $G'(x) = dvs(integral_0^x frac(1, 1+t^2) dif t, x) = frac(1, 1+t^2)$

2. $H(x) = integral_2^(e^x) cos(t^2) dif t$

  Since $f(t) = cos(t^2)$ is continuous on $RR$, by FTC 1

  $H'(u) = dvs(integral_2^(u) cos(t^2) dif t, u) dot dv(u, x) =  dv(u, x) cos(u^2) =^(u = e^x) e^x cos(e^(2x))$

3. Assume $f$ is continuous and $g, h$ differentiable

  $G(x) = f_g(x)^h(x)f(t) dif t = integral_g(x)^0 f(t) dif t + integral_0^h(x)f(t) dif t = -integral_0^g(x) f(t) dif t + integral_0^h(x)f(t) dif t$

  $G'(x) = -dvs(integral_0^g(x) f(t) dif t, x) + dvs(integral_0^h(x)f(t) dif t, x) =^("by FTC 1") -f'(g(x))g'(x) + f'(h(x))h'(x)$
#info[*Fundamental Theorem of Calculus (FTC - 2)*\

If $f, F$ are continuous on $[a, b]$ and $F'(x) = f(x) space forall x in (a, b)$, then $ integral_a^b f(x)dif x = F(b) - F(a) $
]

#proof[
  Let $F$ be any antiderivative of $f$. Then $F(x)$ and the antiderivative $G(x) = integral_a^x f(t) dif t$ have the relation that $G(x) = F(x) + C$

  $ integral_a^b f(x) dif x &= integral_a^b f(t) dif t - integral_a^a f(t)dif t \
  &= G(b) - G(a) \
  &= [F(b)+C] - [F(a)+C] \
  &= F(b) - F(a) $

#align(right)[$square$]
]

Example 

If $H(x) = integral_5^x x^2 dif x$, $integral_1^2 = H(2) - H(1) = integral_5^2 x^2dif x - integral_5^1 x^2 dif x = integral_1^2 x^2 dif x$

#info[*Basic Integraion Rules*\

$ integral x^r dif x= x^(r+1)/(r+1) + C space forall r !=-1 $

$ integral x^(-1) dif x= ln|x| + C $

$ integral sin x dif x = -cos x + C $

$ integral cos x dif x = sin x + C $

$ integral sec^2 x dif x = tan x + C $

$ integral -csc^2 x dif x = cot x + C $

$ integral sec x tan x dif x= sec x + C $ 

$ integral csc x cot x dif x= - csc x + C $

$ integral e^x dif x = e^x + C $

$ integral -1/sqrt(1-x^2) dif x= arccos x + C $

$ integral 1/sqrt(1-x^2) dif x= arcsin x + C $

$ integral 1/(1+x^2) dif x= arctan x + C $

$ integral a^x dif x= a^x / (ln a) + C $

$ integral sec x dif x = ln|sec x + tan x| +C $
$ integral csc x dif x = -ln|csc x + cot x| + C $
]

Examples:

1. $integral e^(5x) dif x = e^(5x) / 5 + C$

2. $integral frac(t, t+1) dif t = integral 1 - 1/ (t+1)dif t = t -ln|t+1|+C$

Examples:

1. $ integral_0^4 2x^2 - x dif x = eval(2/3 x^3 - x^2/2, 0, upper:4) = 2/3(4)^2 - 4^3/2 - 0 = 128/3 - 8 = 104/3 $

2. $ integral_1^3 frac(x+|x-2|, x) dif x &= integral_1^2 frac(2, x) dif x + integral_2^3 frac(2x-2, x) dif x \
  &=  eval(2 ln|x|, 1, upper:2) + integral_2^3 2-2/x dif x \
  &= 2 ln 2 + eval( 2x - 2 ln|x|, 2, upper:3) \
  &= 2 ln 2 + 6 - 2ln 3 - 4 + 2 ln 2 \
  &= 4ln 2 + 2 - 2 ln 3 $


== Substitution Rule / U-Substitution

#info[*U-Substitution*\

Let $f, g$ be functions s.t. $g'(x)$ is continuous on $[a, b]$ and $f$ is continuous on range of $g$

$ integral f(g(x))g(x) dif x = eval(integral f(u) dif u, u=g(x)) $

]

Example:

1. $integral 2x sqrt(1+x^2) dif x $

  Let $u = 1+x^2 ==>dif u = 2x dif x ==> dif x = frac(dif u, 2x) ==>^(u=1+x^2) integral u^(1/2) dif u = 2/3 u^(3/2) ==>^(u=1+x^2)+C $
  
  $=2/3(1+x^2)^(3/2) + C$


2. $integral x^2 e^x^3 dif x $\

  Let $u =x^3 ==> dif u = 3x^2 dif x ==> dif x = frac(dif u, 3x^2) ==>^(u=x^3) integral 1/3 e^u dif u = 1/3 e^u ==>^(u=x^3) + C= 1/3e^x^3 + C$

3. $integral frac(cos(ln x), x) dif x $

  Let $u = ln x ==> dif u = 1/x dif x ==> dif x = x dif u ==>^(u=ln x) integral cos u dif u = sin u ==>^(u=ln x)+ C = sin (ln x) + C$

4. $integral frac(x, 3 root(3,x+2)) dif x$

  Let $u = x+2==>dif u = dif x $

  $==>^(u = x+2) integral frac(u-2, root(3, u)) dif u = integral u^(2/3) dif u - 2 integral u^(-1/3) dif u = 3/5 u^(5/3) + 3 u^(2/3) ==>^(u=x+2) + C= (x+2)^(5/3) + 3 (x+2)^(2/3) + C$

5. $integral_0^(pi/2) frac(cos x, 1 + sin x) dif x$

  Let $u = 1 + sin x ==> dif u = cos x dif x ==> dif x = frac(dif u, cos x) ==>integral_1^2 1/u dif u = eval(ln u, 1, upper:2) = ln 2 $

6. $integral_(0)^(pi/3) tan x dif x = integral_0^(pi/3) frac(sin x, cos x) dif x$

  Let $u = cos x ==> dif u = - sin x dif x ==> integral_1^(1/3) -1/u dif u = eval(ln u, 1/3, upper:1)=- ln 1/3$


#info[*$f(a x)$*\
Let $a in RR, a!=0$ If $integral f(x) dif x = F(x) + C$, then $ integral f(a x) dif x = 1/a F(a x) + C $
]

== Trigonometry Substitution
\
#info[*Trig-Sub*\
#align(center)[#image("../../../pictures/cal2ch1_1.png")]
]

#tip[*Half-Angle*\
$ cos^2 x = (1+cos(2x))/2 $

$ sin^2 x = (1+sin(2x))/2 $
]

Example:

1. $integral_0^1 sqrt(1-x^2) dif x$

  Let $u = arcsin x ==> x = sin u, forall u in [-pi/2, pi/2] ==> dif x = cos u dif u ==> $
  
  $integral_0^(pi/2) sqrt(1-sin^2 u) cos u dif u = integral_0^(pi/2) cos^2 u dif u = integral_0^(pi/2) 1/2 (1+cos(2 u)) dif u eval(1/2(u+sin(2u)), 0, upper:pi/2) = pi/4$

2. $integral sqrt(1-x^2) dif x$

  Let $u = arcsin x ==> x = sin u space forall u in [-pi/2, pi/2] ==> dif x = cos u dif u ==> $

 $integral sqrt(1-sin^2 u) cos u dif u = integral cos^2 u dif u = integral frac(1+cos 2x, 2) dif u ==>^(u = arcsin x) 1/2(arcsin x + sqrt(1-x^2))) + C$

3. $integral frac(1, sqrt(x^2+9))$

  Let $x = 3 tan theta space forall theta in (-pi/2, pi/2) ==> dif x = 3 sec^2 theta dif theta ==> integral frac(1, sqrt(9tan^theta + 9)) 3 sec^2 theta dif theta = integral sec theta dif theta$ \
  \

  $integral sec theta dot frac(sec theta + tan theta, sec theta + tan theta) dif theta = integral frac(sec^2 theta + sec theta tan theta, sec theta+tan theta) dif theta ==>^(u= sec theta + tan theta) integral 1/u dif u = ln |sec theta + tan theta| + C $

  $==>^(theta = arctan x/3) ln|sec arctan x/3 +tan arctan x/3|+ C = ln(sqrt(x^2+9)/3 +x/3)+C$ 

4. $integral_1^2 sqrt(x^2-1)/x dif x$

  Let $x = sec theta space forall theta in [0, pi/2) union [pi, 3pi/2) $

  $= integral_0^(pi/3) sqrt(sec^2 theta-1)/(sec theta) sec theta tan theta dif theta = integral_0^(pi/3) tan^2 theta dif theta= integral_0^(pi/3) sec^2 theta -1 dif theta = eval(tan theta - theta, 0, upper:pi/3) = sqrt(3)-pi/3$

5. $integral frac(1, (5-4x-x^2)^(5/2)) dif x = integral 1/(1-(2-x)^2)^(5/2) dif x$

  Let $2-x = sin theta, space forall theta in [-pi/2, pi/2] ==> dif x = - cos theta dif theta$

  $= integral (-cos theta)/(1-(sin theta)^2)^(5/2) dif theta=integral frac(- cos theta, cos^5 theta) dif theta = integral - sec^4 theta dif theta = - integral (sec^2theta)^2 dif theta = -2/7 sec^(7/2) theta + C = -2/7 (1/sqrt(5-4x-x^2))^(7/2)+C$ 

== Integration By Parts

#info[*Integration by Parts*\

If $f$ and $g$ are differentiable functions of $x$, then $ integral f(x)g'(x) dif x = f(x)g(x) - integral f'(x)g(x) dif x $

The rule of choosing parts being $f(x)$ is
1. Logarithmic

2. Inverse trigonometric 
3. Algebraic
4. Trigonometric
5. Exponential
]

Examples

1. $integral x e^x dif x$


  Let $cases(u = x, dif v=e^x dif x) ==> cases(dif u = dif x, v = e^x) ==> x e^x -integral e^x =x e^x -e^x +C$

2. $integral x^2 sin x dif x$

  Let $cases(u = x^2, dif v = sin x dif x) ==> cases(dif u = 2x dif x, v = -cos x) ==> -x^2cos x + 2 integral x cos x dif x = $
  
  $-x^2cos x+2(x sin x + cos x)+C = -x^2 cos x+ 2x sin x + 2 cos x + C$

3. $integral x ln x dif x$

  Let $cases(u = ln x, dif v = x dif x) ==> cases(dif u = 1/x dif x, v = x^2/2) ==>x^2/2 ln x - 1/2 integral x dif x= x^2/2 ln x - x^2/4+C$

4. $integral_1^e ln x dif $

 Let $cases(u = ln x, dif v = dif x)==>cases(dif u = 1/x dif x, x)==> eval(x ln x, 1, upper:e) - integral_1^e dif x = e-(e-1)=1$

5. $integral_0^1 e^x cos x dif x$

  Let $cases(u = cos x, dif v =e^x dif x) ==> cases(dif u = -sin x dif x, e^x) = eval(e^x cos x, 0, upper:1) + integral_0^1 e^x sin x $

  Let $cases(a = sin x, dif b = e^x dif x) ==> cases(dif a = cos x dif x, b = e^x) = eval(e^x sin x, 0, upper:1) - integral_0^1 e^x cos x dif x$

  $integral_0^1 e^x cos x dif x= eval(e^x cos x, 0, upper:1) + eval(e^x sin x, 0, upper:1) - integral_0^1 e^x cos x $
  
  $ ==> integral_0^1 e^x cos x dif x = 1/2(eval(e^x cos x, 0, upper:1) + eval(e^x sin x, 0, upper:1))= 1/2 e sin(1) + 1/2e cos(1)-1/2$


#tip[*Reduction Formula for $integral cos^n x dif x$*\

For any $n>=2$

$ integral cos^n x dif x = 1/n cos^(n-1) sin x + frac(n-1, n) integral cos^(n-2) x dif x $
]

== Partial Fractions

#info[*Partial Fractions*\

For rational functions which is $P(x)/(Q(x)) space forall P(x), Q(x)$ be polynomials and $P(x)!=0$

1. Perform long division to ensure the topside is in irreducibe linear/quadratic term\
  i.e.

  $ frac(x^2+1, x^2 + 3x + 4) $

2. Rewrite the rational function into individual irreducible linear/quadratic terms (there are exceptions for duplicate terms)
  $ frac(U x^2 + V x + W, E x^2 + F x + G) = frac(A x, (K x + L)^k) + frac(A x, (K x + L)^(k-1)) + ... + frac(B, H x + I) + C/(J x + M) $

3. Solve for system of equations to determine $A, B, C$

4. Integrate individually
]

#tip[*Breakdown of Irreducible Linear/Quadratic terms*\

#align(center)[#image("../../../pictures/cal2ch1_2.png", width: 12cm)]

Note that $n$ is the time the term that has appeared in the fully factorized numerator and denominator.
]
\

Examples

1. $integral frac(x^4+x^3+2x^2+4x+2, x^3+x) dif x$


2. $integral frac(1, x(x-1)^2) dif x$

3. $integral frac(x^2+2, 4x^5+4x^3+x) dif x$

== Improper Integrals

#info[*Improper Integral (Type I)*\

1. Let $f$ be integrable on $[a, t] space forall t >= a$. 

 If $lim_(t->oo) integral_a^t f(x) dif x$ exists, we say that Type I improper integral $integral_a^oo f(x) dif x $ converges and define $ integral_a^oo f(x) dif x = lim_(t->oo) integral_a^t f(x) dif x $

  If $lim_(t->oo) integral_a^t f(x) dif x$ does not exist, we say $integral_a^oo f(x) dif x$ diverges

2. Let $f$ be integrable on $[t, b] space forall t <= b$. 

 If $lim_(t->-oo) integral_a^t f(x) dif x$ exists, we say that Type I improper integral $integral_a^(-oo) f(x) dif x $ converges and define $ integral_a^(-oo) f(x) dif x = lim_(t->-oo) integral_a^t f(x) dif x $

  If $lim_(t->-oo) integral_a^t f(x) dif x$ does not exist, we say $integral_a^(-oo) f(x) dif x$ diverges

3. Let $f$ be integrable on $[a, b] space forall a, b in RR$ with $a<=b$. 

  $ integral_(-oo)^oo f(x) dif x = integral_(-oo)^0 f(x) dif x + integral_0^oo f(x) dif x$ 

  If $integral_(-oo)^0 f(x) dif x "and" integral_0^oo f(x) dif x$ both converges, then $integral_(-oo)^oo f(x) dif x$ converges.

  If one of the improper integrals diverges, $integral_(-oo)^oo f(x) dif x$ diverges
]

#tip[*$p$-Integrals*\
If $p >1$, the improper integral $integral_1^oo 1/x^p dif x$ converges and $ integral_1^oo 1/x^p dif x = 1/(p-1) $

If $p <= 1$, the improper integral $integral_1^oo 1/x^p dif x$ diverges.

]

Examples:

1. $integral_(-oo)^oo sin x dif x = integral_(-oo)^0 sin x dif x + integral_0^oo sin x dif x$

  $ forall t in RR, integral_0^t sin x dif x = eval(-cos x, 0, upper:t) = 1- cos t ==> lim_(t->oo) 1-cos t = "DNE" $ 
  
  Therefore $integral_(-oo)^oo sin x dif x$ diverges

  *Note that $lim_(t->oo) integral_t^t sin x dif x = 0 != integral_(-oo)^oo sin x dif x$*

  The explanation is that there $oo$ is not a number, there are always $oo$ that is bigger. However, if we have $t = oo ==> -oo = t$ enforces the same $oo$, resulting into a symmetry 

2. $integral_(-oo)^0 1/(1+4x^2) dif x$

  $ forall t in RR, integral_t^0 frac(1, 1+4x^2) = eval(1/2 arctan(2x), t, upper:0) = -1/2(arctan 2t) $

  $lim_(t->-oo)-1/2(arctan 2t) = pi/4 $

  Therefore, the improper integral converges


#info[*Improper Integrals (Type II)*\
Let $a, b in RR, a<b$

1. Let $f$ b integrable on $[t, b] space forall t in (a, b]$ and suppose that $f$ has an infinite discontinuity at $x = a$. If $lim_(x->a^+) integral_t^b f(x) dif x$ exists, we say that the Type II improper integral $integral_a^b f(x) dif x$ converges and define $ integral_a^b f(x) dif x = lim_(t->a^+) integral_t^b f(x) dif x $

  If $lim_(t->a^+) integral_t^b f(x) dif x $ does not exist, we say $ integral_a^b f(x) dif x$ diverges

2. Let $f$ b integrable on $[a, t] space forall t in [a, b)$ and suppose that $f$ has an infinite discontinuity at $x = b$. If $lim_(x->b^-) integral_a^t f(x) dif x$ exists, we say that the Type II improper integral $integral_a^b f(x) dif x$ converges and define $ integral_a^b f(x) dif x = lim_(t->b^-) integral_a^t f(x) dif x $

  If $lim_(t->b^-) integral_a^t f(x) dif x $ does not exist, we say $ integral_a^b f(x) dif x$ diverges

3. Suppose that $f$ has an infinite discontinuity at $x = c, a<c<b$. We say that the Type II improper integral $integral_a^b f(x) dif x$ converges if both  $integral_a^c f(x) dif x "and" integral_c^b f(x) dif x$ converges. We can have that  $  integral_a^b f(x) dif x = integral_a^c f(x) dif x + integral_c^b f(x) dif x $
  
  If one of the improper integrals diverges, $integral_a^b f(x) dif x$ diverges

]

Example:

$ integral_0^3 frac(1, sqrt(|x-2|)) dif x &= integral_0^2 frac(1, sqrt(-(x-2))) dif x + integral_2^3 frac(1, sqrt(x-2)) dif x \

&= lim_(t->2^-) integral_0^t frac(1, sqrt(2-x)) dif x + lim_(s->2^+)integral_t^3 frac(1, sqrt(x-2)) dif x \

&= lim_(t->2^-) eval(-2sqrt(2-x), 0, upper:t) + lim_(s->2^+) eval(2sqrt(x-2), s, upper:3) \

&= lim_(t->2^-) (-2 sqrt(2-t)+2sqrt(2)) + lim_(s->2^+) (2 - 2sqrt(s-2))\

&= 2sqrt(2) + 2

$

The integral converges

== Area 

#info[*Area Between Curves*\

Let $f, g$ be integrable functions defined on $[a, b]$. If $f(x)>=g(x) space forall x in [a, b],$ then the area between the graphs of $f$ and $g$ for $x in [a, b]$ is given by $ integral_a^b (f(x)-g(x)) dif x $
]

An alternate way of expressing is let $y = y_"upper"(x)$ be the upper curve and $y = y_"lower"(x)$ for $x in [a, b]$. $ "Area" = integral_(x=a)^(x=b) (y_"upper"(x) - y_"lower"(x)) dif x $

#info[*Area Between Curves interms of Y*\

If a region is bounded between a rightmost curve $x = x_r(y)$ and a leftmost curve $x=x_l(x)$ for $y in [c, d]$. The area of the region can be expressed as $ A = integral_(y=c)^(y=d) (x_r(y) - x_l(y)) dif y $
]


== Volume

=== Washer Method
#info[*Disk Method* \

Let $f(x)$ be an integrable function on $[a, b]$

#align(center)[#image("../../../pictures/cal2ch1_3.png", width:6cm)]

We have the function $f(x)$ rotate around the $x$-axis

Notice $Delta x$ is the thickness of the disk expressed as *$A(x) = pi f(x)^2$*

Hence the volume using the disk method is $ V =  integral_a^b A(x) dif x = integral_a^b pi f(x)^2 $

]

The Washer Method is when there is a vaccum area inside the disk. A trick we can do is have to compute the outer disk volume subtract the inner disk volume

#info[*Washer Method*\

Let $R(x), r(x)$ be integrable functions on $[a, b]$ where $R(x)>=r(x) space forall x in [a, b]$ 

The volume obtained by the area bounded by $R(x), r(x)$, around the $x$-axis is $ integral_a^b pi (R(x)^2 - r(x)^2) dif x $

The idea is to have the *outer function squared subtract the inner function squared* to be the Area function
]

Example:

Consider the region bounded by the curve $y = 2x-x^2$ and the lines $y=0, x=0, x=1$

1. The volume of the solid obtained by revolving about the $x$-axis

  $integral_0^1 pi (2x-x^2)^2 dif x = pi integral_0^1(4x^2-4x^3+x^4) dif x = pi (eval(4/3x^3-x^4+x^5/5, 0, upper:1)) = (8 pi)/15$

2. The volume of the solid obtained by revolving about the $y$-axis

  $integral_0^1 pi (1 - (1-sqrt(1-y))^2) dif y = frac(5 pi, 6)$

3. The volume of the solid obtained by the region enclosed by $y=x, y=x^2$ about $y = 1$

  $integral_0^1 pi [(1-x^2)^2 - (1-x)^2] dif x$

4. The volume of the solid obtained by the region enclosed by $y=x, y=x^2$ about $y = -1$

  $integral_0^1 pi [(x+1)^2 - (x^2+1)^2] dif x$
=== Cylindrical Shell Method

#info[*Cylindrical Shell*\

Let $f(x)$ be an integrable function on $[a, b]$
#align(center)[#image("../../../pictures/cal2ch1_5.png", width:8cm)]

We have the function $f(x)$ rotate around the $x = p$.

The formula $ V = integral_a^b 2 pi r(x) f(x) dif x,  quad r(x) = (x-p) $

]
#tip[*Summary*\

#align(center)[#image("../../../pictures/cal2ch1_4.png", width:8cm)]

]

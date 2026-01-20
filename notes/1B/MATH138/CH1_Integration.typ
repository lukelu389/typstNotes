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

$ dvs(integral_g(x)^h(x) f(t) dif t, x) = f'(h(x))h'(x) - f'(g(x))g'(x) $
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
  Let $F$ be any antiderivative of $f$. Then $F(x)$ and the antiderivative $G(x) = f_a^x f(t) dif t$ have the relation that $G(x) = F(x) + C$

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

$ integral x^-1 dif x= ln|x| + C $

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

Let $f, g$ be functions s.t. $g'(x)$ is continuous on $a, b]$ and $f$ is continuous on range of $g$

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

  Let $u = arcsin x ==> x = sin u, forall u in [-pi/2, pi/2] ==> dif x = cos u dif u ==> $

 $integral sqrt(1-sin^2 u) cos u dif u = integral cos^2 u dif u = integral frac(1+cos 2x, 2) dif u ==>^(u = arcsin x) 1/2(arcsin x + sqrt(1-x^2))) + C$

3. $integral frac(1, sqrt(x^2+9))$

  Let $x = 3 tan theta ==> dif x = 3 sec^2 theta dif theta ==> integral frac(1, sqrt(9tan^theta + 9)) 3 sec^2 theta dif theta$
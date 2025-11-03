#import "../../preamble.typ": *
#import "@preview/diverential:0.2.0": *

#let Title = "CH 4 - Derivatives"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== Velocity

#info[*Average Velocity and Instantaneous Velocity*\
$ v_(a v g) = (s(t_1)-s(t_0))/(t_1-t_0) $ 

$ v_(i n s t) = lim_(t->t_0) (s(t)-s(t_0))/(t-t_0) = lim_(h->0) (s(t_0+h) - s(t_0))/h $
]

== Definition of Derivatives

#info[*Average Rate of Change and Instantaneous Rate of Change (Derivative)*\
$ f_(a v g) = (f(b)-f(a))/(b-a) $
$ f'(a) = lim_(x->a) frac(f(x)-f(a), x-a) = lim_(h->0) frac(f(a+h)-f(a), h) $ \
If $f'(x)$ exists at $x=a$, then $f(x)$ is *differentiable* at $x=a$ 
]
\

#info[*Tangent Line*\
If $f(x)$ is differentiable at $x=a$, then the *tangent line* to $f(x)$ at $x=a$ is the line passing through $(a, f(a))$ with slope $f'(a)$\
The equation of the tangent line
$ y = f'(a)(x-a)+ f(a) $
$(a, f(a))$ is the *point of tangency*
]
\
\

#align(center)[#image("../../pictures/tangentLine.png", width:8cm)]
\


\
Examples: \
\
Find the tangent line to $f(x)= 1/(x+5) "at" x = 3$\
$f(3) = 1/8$\
$f'(3) = f'(a)= lim_(h->0) (f(a+h)-f(a))/h = lim_(h->0) frac(1/(a+h+5)-1/(a+5), h) = \ lim_(h->0) 1/h frac(a+5-(a+h+5),(a+5)(a+h+5)) = lim_(h->0) -1/((a+5)(a+h+5))=-1/(a+5)^2 = -1/64$ \

$y = -1/64 (x-3)+1/8$\

#info[*Differentiability Implies Continuity*\
If a function $f$ is differentiable at $x = a$, then $f$ is continuous at $x=a$
]

#proof[$f$ is differentiable at $x=a$ then, $lim_(h->0) frac(f(a+h)-f(a), h)$ exists 
\ $lim_(h->0) [f(a+h) - f(a)] = 0 ==> lim_(h->0) [f(a+h) - f(a) + f(a)] = lim_(h->0) f(a) ==> lim_(h->0) f(a) = f(a)$]

#warn[*Continuity Not Implies Differentiability*\
$f(x) = |x| = cases(-x "if" x < 0, x "if" x >= 0)$ \

$lim_(h->0^+) frac(f(0+h) - f(0), h) = (h-0)/h = 1$ \

$lim_(h->0^-) frac(f(0+h) - f(0), h) = (-h-0)/h = -1$ \

Thus $lim_(h->0) frac(f(0+h) - f(0), h) = "DNE"$ but continuous.

$therefore "continuity does not impliy differentiability"$
]

#info[*Differentiability of Funciton* \
We say that $f$ is *differentiable* on an interval $I "if" f'(a) "exists" forall a in I$. 

We define the derivative funciton $f'(x) = lim_(h->0) frac(f(x+h)-f(x), h)$

We sometimes also write $f'(x) "as" d/(d x) f(x), "and" f'(a) = dvs(f(x), x, eval: a)$
]

#info[ Constant Function \
$f(x) = c$\

$f'(x) = lim_(h->0) frac(f(x+h) - f(x), h) = lim_(h->0) (c-c)/h = lim_(h->0)0/h = 0$]

#info[ Linear Function\ 
$f(x) = m x + b$\

$f'(x) = lim_(h->0) frac(f(x+h) - f(x), h) = lim_(h->0)frac(f(m(x+h)+b) - f(m x + b), h) = lim_(h->0) m h / h = m$]

#info[ Quadratic Function \
$f(x) = p x ^2 + s x + c $

$f'(x) = lim_(h->0) frac(f(x+h) - f(x), h) = lim_(h->0) frac([p(x+h)^2 + s (x+h) + c] - [p x^2 + s x + c], h) = lim_(h->0) (2x p h + x h^2 + s h)/h = lim_(h->0) 2 x p + x h + s = 2 x p + s$
]

#info[ Basic Trig\
$f(x) = sin x$ \

$f'(x) = lim_(h->0) frac(f(x+h) - f(x), h) = lim_(h->0) frac(sin(x+h) - sin(x), h) = lim_(h->0) (sin x cos h + cos x sin h - sin x)/h = 

\ lim_(h->0) [sin x (cos h - 1)]/h+ lim_(h->0) cos x (sin h) / h = sin x dot lim_(h->0) (cos^2 h - 1)/ (h dot (cos h + 1)) + cos x = 

\ sin x dot lim_(h->0) (sin^2 h) / (h dot (cos h + 1))  =sin x dot lim_(h->0) (sin h)/h dot lim_(h->0) frac(sin h, cos h + 1) + cos x = cos x
$
]

We define $e$ to be the unique base of an exponential function with slope 1 through (0, 1)

#info[*Derivative Rules*\

Let $f(x) "and" g(x)$ be differentiable at $x = a$
1. $w(x) = c f(x) ==> w'(x) = c f'(x)$

2. $w(x) = f(x) plus.minus g(x) ==> w'(x) = f'(x) plus.minus g'(x)$

3. $w(x) = f(x)g(x) ==> w'(x) = f'(x)g(x) + f(x)g'(x)$

4. If $g(x) != 0, w'(x) = f(x)/g(x) ==> w'(x) = frac(f'(x)g(x) - f(x)g'(x), g^2(x))$

5. If $f(x) = x^alpha$ for some $alpha in RR \\ {0} ==> f'(x) = alpha x ^ (alpha -1)$
6. $w(x) = (g compose f) (x) = g(f(x)) ==> w'(x) = g'(f(x)) dot f'(x) ~ dv(z, x) = dv(z, y) dot dv(y, x)$
]

#warn[Power Rule\
If $x = 0, x^-1$ does not make sense so that is why $alpha in RR \\ {0}$ 
]

#proof[
We suppose that $f(x), g(x)$ are differentiable, so that the limits:\

$lim_(h->0) frac(f(x+h)-f(x), h), lim_(h->0) frac(g(x+h)-g(x), h)$ exists 

1. Product rule:
$lim_(h->0) frac(w(x+h)-w(x), h) = lim_(h->0) frac(f(x+h) g(x+h) - f(x) g(x), h) =$ \ 

$lim_(h->0) frac(f(x+h)g(x+h) - f(x)g(x+h) + f(x)g(x+h)-f(x)g(x), h) = lim_(h->0) frac((f(x+h) - f(x)) g(x+h), h) + frac((g(x+h)-g(x)) f(x), h)$\

$= lim_(h->0) frac(f(x+h)-f(x), h) dot lim_(h->0)g(x+h) + lim_(h->0) frac(g(x+h)-g(x), h) dot lim_(h->0) f(x) $\

$= f'(x)g(x) + f(x)g'(x)$

2. Quotient rule
$lim_(h->0) frac(w(x+h)-w(x), h) = lim_(h->0) frac(f(x+h)/g(x+h) - f(x)/g(x), h)=$
$lim_(h->0) frac((f(x+h)g(x))/(g(x+h)g(x)) - (f(x)g(x+h))/(g(x+h)g(x)), h) = lim_(h->0) frac((f(x+h)g(x)-f(x)g(x+h))/ (g(x)g(x+h)), h)$\

$= lim_(h->0) frac(f(x+h)g(x)-f(x)g(x)+f(x)g(x)-f(x)g(x+h), h g(x+h)g(x)) = lim_(h->0) frac(g(x)(f(x+h)-f(x)), h/(g(x)g(x+h))) - frac(f(x)(g(x+h)-g(x)), h/(g(x)g(x+h)))$ \

$= frac(lim_(h->0) frac(f(x+h)-f(x), h) dot lim_(h->)g(x) - lim_(h->0) f(x) dot lim_(h->0) frac(g(x+h)-g(x), h), lim_(h->0)g(x+h)g(x)) = frac(f'(x)g(x) - g'(x)f(x), g^2(x))$
]
#align(right)[$square$]

== Basic Derivatives
\
#info[ *Basic Trig Derivatives* \

$dvs(tan x, x) = dvs((sin x)/cos x, x)= frac(sin'x cos x - sin x cos' x, cos^2 x) = frac(1, cos^2x) = sec^2x$\

$dvs(csc x, x) = dvs(1/(sin x), x) = frac(0 dot sin x - 1 dot cos x, sin^2 x) = frac(- cos x, sin^2x) = - csc x cot x$\

$dvs(sec x, x) = dvs(1/(cos x), x) = frac(0 dot cos x - 1 dot (- sin x), cos^2x) = (sin x)/(cos^2x) = sec x tan x$\

$dvs(cot x, x) = dvs((cos x)/(sin x), x) = frac(cos'x sin x- cos x sin' x, sin^2x) = (- (sin^2x + cos^2x))/(sin^2x) = - csc^2 x$
]

#info[*Exponential/Logarithmic Derivatives*\
For $a^x, x >0$:\

$dvs(a^x, x) = dvs(e^(x  ln(a)), x) = e^(x ln a) dot ln a = a^x ln a$

$dvs(log_a x, x) = dvs(ln(x)/ln(a), x) = 1/x dot 1/(ln a) = 1/(x ln a)$
]\

Example: \

1. $dvs(x^3 e^(2x) cos x, x) = 3x^2e^(2x)cos x+ 2x^3e^(2x)cos x - x^3e^(2x)sin x $

2. $dvs(3^(csc x), x) = 3^(csc x) ln 3 dot - csc x cot x = -3^(csc x) csc x cot x ln 3$

3. $dvs(sin x, x, deg:67)$. Note that $sin'x = cos x, sin''x = -sin x, sin''' -cos x, dvs(sin x, x, deg: 4) = sin x$/

$67 mod 4 equiv 3$, that is $dvs(sin x, x, deg:67) = -cos x$

4. $dvs(frac(x, (1+e^x^2)^3), x) = dvs(x dot (1+e^x^2)^(-3), x) = 1/(1+e^x^2)^3 -3 ((1+e^x^2)^(-4) dot x^2 e^x^2dot 2x = 1/(1+e^x^2)^3 -(6x^3e^x^2) / ((1+e^x^2)^(4)$ \

5. $dvs(x^x^x, x)$\
$dvs(x^x, x) = x^x ln x dot (ln x + 1)$ \

$dvs(x^f(x), x) = x^f(x) dot (ln x dot f'(x) +x) = x^x^x dot x^x (ln^2(x) + ln(x) +x^(x-1))$
\
\

== Linear Approximation

With the assumption of $f(x)$ is continuous ay $x=a$, we can derive \
$ f'(a) = lim_(x->a frac(f(x)-f(a), x - a)) <-> f'(a) (x-a) = f(x)-f(a) <-> f(x) = f'(a)(x-a) + f(a) $
Which is the linear approximation of $f(x)$ near $x=a$


#info[*Linear Approximation*\
Let $f(x)$ be differentiable at $x=a$. The *linear approximation* to $f(x)$ at $x=a$ is given by $ L_a^f (x) = f'(a)(x-a) + f(a) $ If it is clear what function $f$ we are talking about, we sometimes denote $L_a (x)$ instead.
]
\
#info[*Upper Bound Error of Linear Approximation*\
The error of linear approximation is defined as: 
$ "error" = |f(x) - L_a^f (x)| $ \
Assume that $f(x)$ is such that $|f''(x)| <= M$ for each $x$ in an interval $I$ containing $x=a$. Then, $ "error" = |f(x) - L_a^f (x)| <= M/2 (x-a)^2 $ forr each $x in I$
]

Examples:\

1. Find the linearization of $sqrt(x)$ at $x=4$ and use it ti estimate $sqrt(4.01)$\

  $L_a^f (x) = f'(a)(x-a) + f(a)$ where $f(x) = sqrt(x) ==> f'(x) = 1/(2 sqrt(x))$\

  $L_a^f (x)= 1/(2 sqrt(x))(x-4) + 2 ==> L_a^f (0.01) = 1/(2 sqrt(0.01))(0.1)+2 approx 2.0024984$\
  
2. What factors could affect the error in linear  approximation?
 - The distance from $x$ to $a$. (e.g. $f(x) = sin(x), x = 3pi/2, a = pi/4$.)
 #align(center)[#image("../../pictures/derivative1.png", width: 8cm)]
 - The curvature (e.g. $f(x)= e^x, g(x)=e^(x/10)$)

3. Find a upper bound on the error in using $L_9$ to appriximate $f(x) = sqrt(x)$ on $[5, 13]$\
 If $|f''(x)| <= M "on" I$ then: $"error" <= M/2 (x-a)^2 forall x in I$ \

 $f(x) = sqrt(x); f'(x) = 1/(2sqrt(x)); f''(x) = -1/(4x^(3/2))
 $ \

 $|f''(x)| = 1/(4x^(3/2)) <= = 1/(4(5)^(3/2)) = 1/(20 sqrt(5))$\

 So the error $<= 1/(40 sqrt(5)) (x-9)^2 = 1/(40 sqrt(5)) (13-9)^2 = 2/(5 sqrt(5))$
\
\
\

Example:\

A poor group of students is writing a midterm. A nefarious professor decides
to make things harder by cranking up the thermostat to uncomfortable levels. To make things as uncomfortable as possible, the professor increases the temperature according to an equation of the form $T(t) = 2t + c$ for some constant $c in R$, where t is the time elapsed in minutes. Initially, at t = 0, the room is a cool $21^compose$ C. Estimate the change in the room's
temperature 90 seconds after the professor alters the thermostat. 

ANS:\
$T'(t) = 2^t ln 2$\
$triangle T = T'(0) dot triangle t = ln 2 dot 1.5 = (3(ln 2)/2) ^ compose "C"$
\
\

 == Newton's Method
\
 #info[*Newton's Method*\
 1. Make an initial guess, $x_1$, of where the root of $f(x)$. IVT can be helpful.
 2. Take the linear appoximation, $L_(x_1)^f (x)$ and find its root and call it $x_2$\
 3. Repeat Step 3 at $x_2$ to find $x_3$

Note that NM converges faster than Bisection Method
 ]

The Visualization of the procedure
\
 #align(center)[#image("../../pictures/derivative2.png", width: 8cm)]
\
 #tip[*Root Finding Formula for NM*\
 $ x_(n+1) = x_n-f(x_n)/(f'(x_n)) $
 ]

#warn[*Flaws of Newton's Method*\

1. NM requires differentiability of at $x_n$
2. Not always converges
  1. Consider where $f'(x_n) = 0$. The formula is not computable, and this is the case of a horizontal tangent line - which would not have a root for the next iteration.
  2. Consider $f(x) = root(x, 5)$ for which Newton's Method will not work for any guess of root $x_1 != 0$, as the formula gives $x_(n+1) = -6x_n$
  3. Consider $f(x) = x^3 + x^2 -3x+3$ for which guess of $x_1 = 0, x_2 = 1, x_3 = 0, ...$ falls into an alternating cycle and unable to find a root.
  4. Some choices of $x_1$ might lead to convergence to a different root than desired.
]

#info[Comparison BM vs NM\
1. Bisection requires continuity, Newton requires differentiability
2. Bisection is guarenteed to converge, Newton does not guarentee
3. Newtons is faster if it works
]

\
 Example:\

$x^2-4x-7$ at $x=5$ to nearest thousandth\
  ANS: \
    Let $x_1 = 5$, given $f'(x)= 2x-4$\

    $x_2 = x_1 - frac(f(5),f'(5)) = 5 -(-1/3) = 16/3$ \

    $x_3 = x_2 - frac(f(16/3), f'(16/3)) = 16/3 - 1/60$

\

== Derivatives of Inverse Functions
#info[*Inverse Function Theorem*\
Assume that $f(x)$ is a continuous and invertible with inverse $f^(-1) (x)$ on $[c, d]$ and differentiable at $a in (c, d)$, where $f'(a) != 0$. Then $f^(-1)(x)$ is differentiable at $b = f(a)$ and 
$ (f^(-1))'(b) = 1/(f'(a)) = 1/(f'(f^(-1)(b))) $

Furthermore, $L^f_a (x)$ is also invertible and $ (L^f_a)^(-1) (x) = L^(f-1)_b (x) = L^(f^(-1))_f(a) (x)$
]

#tip[*Linearization of Inverse* \
$  L^(f^(-1))_b = (f^(-1))'(b)(x-b) + a $
$ L^(f^(-1))_b = 1/(f'(a))(x-b) + a $
]

\
Example:\

$f(x) = 5 sqrt(x)$ \
  $f(x)$ is continous and differentiable in $(0, oo)$\
  $b = f(a) <==> 5 = f(a) <==> a = 1$
  $f'(x) = 5/2 x ^(-1/2)$ \
  $(f^(-1))'(5) = 1/(f'(1)) = 1/(5/2) = 2/5$

#info[*$ln x$*\
$ f(x) = e^x, f^(-1)(x) = ln x $

$ (f^(-1))'(x) = 1/ (f'(f^(-1)(x))) $

$ (ln(x))'  = 1/(f'(ln(x))) $
$ = e^(1/ln(x)) $
$ dvs(ln x, x) = 1/x $
]

== Inverse Trigonometric Functions
\
(Inverse Trigonotmetric Function can be also can be proven by implicit differentiation)\

1. $dvs(arccos x, x) = 1/ (cos'(arccos x)) = -1/(sin(arccos x)) = -1/(sqrt(1-x^2))$ \

  $arccos(x) = theta ==> cos(theta) = x/1$\
  
  $sin(arccos(x)) = sin(theta) = sqrt(1-x^2)/1$

  -Domain $arccos x in (-1, 1)$\
 -Range $arccos x in (0, pi)$ 

2. $dvs(arcsin x, x) = 1/sqrt(1-x^2)$

  -Domain $arcsin x in (-1, 1)$\
  -Range $arcsin x in (-pi/2, pi/2)$ 

3. $dvs(arctan x, x) = 1/(x^2+1)$

  -Domain $arctan x in (-pi/2, pi/2)$\
  -Range $arctan x in (-oo, oo)$


Examples: \

1. $dvs(arcsin(2^(5x)), x) = (2^(5x) dot ln 2 dot 5)/(sqrt(1-(2^(5x))^2))$\

2. $dvs(ln(arctan(e^(sin(x)))), x) = frac(e^(sin(x)) dot cos(x),e^(2sin(x)) (arctan(e^(sin(x)))))$
\

== Implicit Differentiation

We can split a relation into individual pieces that are functions. The key to understanding implicit differentiation is that $y$ is implicitly a function of $x$, even if the actual equation of the function changes depending on which piece we choose.

#info[*Implicit Differentiation*\
Given $y = f(x)$, 
$ dvs(y, x) = dvs(f(x), x) $
$ dv(y, x) = dv(f, x) $ 

]

Examples: \

1. For circle $x^2 + y^2 = 25$\

  $dvs(x^2+y^2, x) = dvs(25, x) ==> 2x + 2y dv(y, x) = 0$\

  $dv(y, x) = -x/y$

2. $x^3 y^5 + 2x = y^3 +4$\

  $dvs(x^3 y^5 + 2x, x) = dvs(y^3 +4, x) ==> 3x^2y^5 + 5x^3y^4 dv(y, x) = 3y^2 dv(y, x)$\

  $5x^3y^4 dv(y, x) -  3y^2 dv(y, x) = - 3x^2y^5$\

  $dv(y, x)(5x^3y^4 - 3y^2) = -3x^2y^5 ==> dv(y, x) = frac(-3x^2y^5, (5x^3y^4 - 3y^2))$

3. $dvs(e^(x y), x) = dvs(e^u, u) dot dv(u, x) = e^u dot dv(u, x) = e^(x y) dot dvs(x y, x) = e^(x y) (y+x dv(y, x))$
\
#warn[*Non-sense relations*\

For Implicit Differentiation to make sense, the relation has to exist for some pairs $(x, y)$\

i.e. $x^2 + y^2 = -9$
]
\
\
== Logarithmic Differentiation

#info[*Logarithmic Differentiation*\

Notice that $ y = f(x) <--> ln(y) = ln(f(x)) $
Then we can differentiate the relation implicitly 
]

#tip[*When to Use Logaritmic Differentiation*\

1. If we have a function of the form $g(x)^f(x), g(x) >0$
2. If the numerator and denominator of function are both products of several functions
]

Examples: \

1. $dvs(x^x, x)$\
  $y =x^x ==> ln y = x ln x ==> dvs(ln y, x) = dvs(x ln x, x) ==> 1/y y' = ln x + x dot 1/x$\

  $y' = y (ln x + 1) = x^x (ln x +1 )$

2. $dvs(x^x^x, x)$
  $y = x^x^x ==> ln y = x ln x ==> dvs(ln y, x) - dvs(x^x ln x, x)$ \

  $==> 1/y y' = dvs(x^x, x) ln x + x^(x-1) ==> 1/y y' = x^x (ln x +1) ln x + x^(x-1) $\

  $y' = x^x^x (x^x ln x(ln x +1) + x^(x-1))$\


3. $dvs(frac((x-3)^3 (x+4)^2 (x-1), (x+1)^2(x^2+x+1)^3), x)$\

  $y = frac((x-3)^3 (x+4)^2 (x-1), (x+1)^2(x^2+x+1)^3) ==> $\
  
  $ln y =3ln(x-3)+2ln(x+4)+ln(x-1)-2ln(x+1)-3ln(x^2+x+1)$\

  $dvs(ln y, x) = dvs(3ln(x-3)+2ln(x+4)+ln(x-1)-2ln(x+1)-3ln(x^2+x+1), x)$\

  $1/y y' = 3/(x-3) +2/(x+4) + 1/(x-1)-2/(x+1) -(6x+3)/(x^2+x+1)$\

  $y' = frac((x-3)^3 (x+4)^2 (x-1), (x+1)^2(x^2+x+1)^3) dot (3/(x-3) +2/(x+4) + 1/(x-1)-2/(x+1) -(6x+3)/(x^2+x+1))$

  

  \

  *END OF CHAPTER*
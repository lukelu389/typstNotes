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
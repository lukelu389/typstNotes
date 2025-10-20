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

We sometimes also write $f'(x) "as" d/(d x) f(x), "and" f'(a) = dv(f, x, eval: a)$
]

#info[ Constant Function \
$f(x) = c$\

$f'(a) = lim_(h->0) frac(f(a+h) - f(a), h) = lim_(h->0) (c-c)/h = lim_(h->0)0/h = 0$]

#info[ Linear Function\ 
$f(x) = m x + b$\

$f'(a) = lim_(h->0) frac(f(a+h) - f(a), h) = lim_(h->0)frac(f(m(a+h)+b) - f(m a + b), h) = lim_(h->0) m h / h = m$]

#info[ Quadratic Function \
$f(x) = p x ^2 + s x + c $

$f'(a) = lim_(h->0) frac(f(a+h) - f(a), h) = lim_(h->0) frac([p(a+h)^2 + s (a+h) + c] - [p a^2 + s a + c], h) = lim_(h->0) (2a p h + a h^2 + s h)/h = lim_(h->0) 2 a p + a h + s = 2 a p + s$
]

#info[ Basic Trig\
$f(x) = sin x$ \

$f'(a) = lim_(h->0) frac(f(a+h) - f(a), h) = lim_(h->0) frac(sin(a+h) - sin(a), h) = lim_(h->0) (sin a cos h + cos a sin h - sin a)/h = 

\ lim_(h->0) [sin a (cos h - 1)]/h+ lim_(h->0) cos a (sin h) / h = sin a dot lim_(h->0) (cos^2 h - 1)/ (h dot (cos h + 1)) + cos a = 

\ sin a dot lim_(h->0) (sin^2 h) / (h dot (cos h + 1))  =sin a dot lim_(h->0) (sin h)/h dot lim_(h->0) frac(sin h, cos h + 1) + cos a = cos a
$
]
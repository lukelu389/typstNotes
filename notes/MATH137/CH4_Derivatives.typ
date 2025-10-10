#import "../../preamble.typ": *

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
Find the tangent line to $f(x)= 1/(x+5) "at" x = 2$\
$f(3) = 1/8$\
$f'(3) = f'(a)= lim_(h->0) (f(a+h)-f(a))/h = lim_(h->0) frac(1/(a+h+5)-1/(a+5), h) = \ lim_(h->0) 1/h frac(a+5-(a+h+5),(a+5)(a+h+5)) = lim_(h->0) -1/((a+5)(a+h+5))=-1/(a+5)^2 = -1/64$ \

$y = -1/64 (x-3)+1/8$


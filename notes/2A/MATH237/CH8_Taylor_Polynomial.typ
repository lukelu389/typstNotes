#import "../../../preamble.typ": *
#show: conf
#import "@preview/diverential:0.2.0": *
#import "@preview/physica:0.9.8": *
#let strut(h) = box(height: h, width: 0pt)
#let Title = "CH 8 — Taylor Polynomial and Taylor Theorem"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

Recall: For a single variable function, $f(x)$, the second-order Taylor Polynomial at $x =a$ is $ P_(2, a) (x) = f(a) + f'(a)(x-a)+1/2f''(a)(x-a)^2 = L_a (x) +1/2 f''(a)(x-a)^2  $

This is the 2nd order polynomial which agrees with $f(x)$ at $x=a$ up to the 2nd order derivative, i.e.

$ P_(2, a)(a) = f(a) \ P'_(2, a) = f'(a) \ P''(2, a)(a) = f''(a) $


#defn[*Taylor Polynomial* \

If $f(x, y) in C^2$ at $(a, b)$, then second-order Taylor Polynomial is defined of $f$ at $(a, b)$ by $ P_(2, (a, b))(a, b) = L_((a, b))(x, y)  
+1/2(f_(x x)(x-a)^2 +2 f_(x y)(a, b)(x-a)(y-b)+f_(y y)(y-b)^2) $

]

#defn[*Hessian Matrix* \ 

The *Hessian Matrix* of $f(x, y)$ is $ H f(x, y) = mat(f_(x x)(x, y), f_(x y)(x, y); f_(y x)(x, y), f_(y y)(x, y)) $
]

Examples:

1. Use both linearization and the second order Taylor Polynomial of $f(x, y) = e^(x+y)$ at $(0, 0)$ to approximate $f(0.1, 0.2)$

  $L_((0, 0))(0.1, 0.2) = eval(1+x+y, (x, y)=(0.1, 0.2)) = 1.3$

  $P_(2, (0, 0)) = L_((0, 0))(0.1, 0.2) + eval(1/2((x)^2+2(x)(y)+(y)^2), (x, y)=(0.1, 0.2))  \
  
  = 1.3+1/2((0.1)^2+2(0.1)(0.2)+(0.2)^2) = 1.3+(0.005+0.02+0.02) = 1.345$

2. Use the linearizatio and second-order Taylor polynomial of $f(x, y) = 1/2 x -y+x^5$ at $(0, 0)$ to approximate $f(0.1, 0.1)$

  $L_(0, 0)(x, y) = 0+(1/2+5(0)^4)(x)+ (-1)(y) = 1/2x-y$

  $L_(0, 0)(0.1,0.1) = 1/2(0.1)-0.1 = -0.05$

  $P_(2, (0, 0))(x, y) = -0.05+1/2[(20(0)^3)(x)^2 + 2 (0)(x)(y) + (0)(y)^2] = -0.05$

  $P_(2, (0, 0)) = -0.05$


In practical application, we don't know the value of what we are trying to approximate, so we cannot calculate the approximate the approximation error exactly.

#thm[*Taylor's Polynomial 1D* \ 

If $f''(x)$ exists on $[a, x]$, then $exists a in RR$ s.t $c in (a, x)$ and $ f(x) = f(a)+f'(a)(x-a)+R_(1, a)(x) $ where $R_(1, a)(x) = 1/2 f''(c)(x-a)^2$
] 

#thm[*Taylor's Polynomial 2D* \ 

If $f(x, y) in C^2$ in some neighbourhood $N(a, b)$ of $(a, b)$, then $forall (a, b) in N(a, b), exists (c, d)$ on the line segment joining $(a, b)$ and $(x, y)$ s.t. $ f(x, y) = f(a, b)+f_x (a, b)(x-a)+f)y (a, b)(y-b)+R_(1, (a, b))(x, y) $ where 

$ R_(1, (a, b)) (x, y)= 1/2[f_(x x)(c, d)(x-a)^2+2f_( x y) (c, d)(x-a)(y-b)+f_(y y)(c, d) (y-b)^2] $
]

\

#thm[*Corollary of Upper Bound of 2D Tayloyr Polynomial* \ 
If $f(x, y) in C^2$ in some neighbourhood $N(a, b)$ of $(a, b)$, then $exists M in RR_(>=0)$ s.t. 
$ R_(2, (a, b))(x, y) <= M||(x, y)-(a, b)||^2 quad forall (x, y) in N(a, b) $

]

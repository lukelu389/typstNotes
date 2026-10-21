#import "../../../preamble.typ": *
#show: conf
#import "@preview/diverential:0.2.0": *
#import "@preview/physica:0.9.8": *
#let strut(h) = box(height: h, width: 0pt)
#let Title = "CH 6 — Chain Rule"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== 6.1 Chain Rule
*Recall* we use the chain rule to take derivatives of composite functions.

Consider $ T(t) = f(x(t)) $ where $x(t)$ represents the position of an ant crowling along a log and $T(t)$ represents the remperature of the log as the ant moves along. 

By the chain rule the change in the temperature can be obtained  $ T'(t) = f'(x(t)) dot x'(t) $

In 2D, if we allow the ant to move in any direction, that is $f(x, y)$ is the temperature at the point $(x, y)$ and $vec(x)(t) = (x(t), y(t))$ represents the position of the ant as a function of time. 

Then, $ T(t) = f(x(t), y(t)) $ represents the temperature experienced by the ant as it moves along its path.

Let $t$ change by a small amount $Delta t$, then $cases(Delta x = x(t+Delta t)-x(t), Delta y = y(t+Delta t)-y(t))$. 

By the increment form of linear approximation, 

$ Delta T &approx pdv(T, x) Delta x + pdv(T, y) Delta y  \
\

  lim_(Delta t->0) (Delta T)/(Delta t) &approx lim_(Delta t->0) [pdv(T, x) (Delta x)/(Delta t) + pdv(T, y) (Delta y)/(Delta t)] \
\

  dv(T, t) &approx pdv(T, x) dv(x, t) + pdv(T, y) dv(y, t)

$

If $T(x, y)$ is differentiable, we can show that the error in the linear approximation gives 0

#defn[*Chain Rule*


Let $T(t)=f(x(t), y(t))$ and $a = x(t_0), b = y(t_0)$. If $f$ is differentiable at $(a, b)$ and both $x'(t_0)$ and $y'(t_0)$ exist.
Then $T'(t)$ exists and given by $ T'(t_0) = f_x (a, b) dot x'(t_0) + f_y (a, b) dot  y'(t_0) $
]

Example:

Given $T(x, y) = x^2+2y^2, x(t) = e^t sin t, y(t) = cos t$, find $T'(t)$

  $T'(t) = [e^(2t) sin^2 t + 2cos^2 t]' = 2t e^(2t) sin ^2 t + 2e^(2t) sin t cos t - 4 cos t sin t$

  Alternatively,

  $T'(t)= 2(e^t sin t)(e^t sin t + e^t cos t) + 4(cos t)(-sin t) = 2e^(2t)sin ^2 t(sin t + cos t) - 4 cos t sin t$


== 6.2 Generalization to $RR^n$


#defn[*Generalization of Chain Rule*

The definition of a differentiable fucntion and all the theorems on differentiablility generalize to $RR^n$

Let $vec(x)(t) in RR^n, T(t) = f(vec(x)(t))$, we have $ dv(T, t) = dv(f(vec(x)(t)), t) = grad f(vec(x)(t)) dot dv(vec(x)(t), t) $
]

Example

Let $f(x, y, z)$ be a differentiable function and $g(t) = f(x(t), y(t), z(t))$ 

where $x(t)=t, y(t)=t^2, z(t) = t^3$. If $grad f(1, 1, 1) = (2, 1/2, 1)$, find $g'(1)$

$g'(t) = grad f(vec(x)(t)) dot dv(vec(x)(t), t) ==>^(t=1) g'(1) = grad f(vec(x)(1)) dot dv(vec(x)(1), t)  = grad f(1, 1, 1) dot mat(1;2;3) = mat(2; 1/2; 1) dot mat(1;2;3) = 6$

== 6.3 Graphic Method

Consider $T(x) = f(x(t), y(t))$

#table(
    columns: 3, 
    align: center,
    stroke: 0.5pt,
    inset: 6pt,
    [$T$], [], [Dependent variable],
    [$x$], [$y$], [Intermediate variables],
    [$t$], [$t$], [Independent variables]
)
To find $dv(T, t)$, find all paths which connects $T$ to $t$. For each path, write down the corresponding derivatives and sum the results.

$dv(T, t) = pdv(T, x) dv(x, t) + pdv(T, y) dv(y, t)  $


Examples:

1. Let $f$ be a differentiable function s.t $grad f(1, 0) = (3, -2)$. and let $z = g(x, y) = f(x y, x^2-y^2)$. Find $dv(z, x) "at" (1, 1)$


  Let $u = x y$ and $ v = x^2-y^2$ so that $g(x, y) = f(u, v)$

  #table(
      columns: 4, 
      align: center,
      stroke: 0.5pt,
      inset: 6pt,
      [$z$], [], [], [],
      [$u$], [], [$v$], [],
      [$x$], [$y$], [$x$], [$y$]
  )

  $dv(z, x) = pdv(z, u) pdv(u, x)+ pdv(z, v)pdv(v, x) = pdv(f, u)(y)+pdv(f, v)(2x)$


  Let $(x, y) = (1, 1)$
  \

  $eval(pdv(z, x), (1, 1)) &= pdv(f, u)(u(1, 1), v(1, 1)) + pdv(f, v)(u(1, 1), v(1, 1)) dot (2)(1) = pdv(f, u)(1, 0) +2 pdv(f, v)(1, 0) \
  
  &= (1)(3)+(2)(-2)=-1 $


\
2. $z = x^2 y^4 - 2y, y = sin x^2$. Find $dv(z, x)$


  Let $u = x^2 y^4$
  $==> z = x^2(sin x^2)^4 - 2(sin x^2)$ 

  #table(
      columns: 2, 
      align: center,
      stroke: 0.5pt,
      inset: 6pt,
      [$z$], [],  
      [$x$], [$y$], 
      [],  [$x$]
  ) 

  $dv(z, x) = pdv(z, x) + pdv(z, y)dv(y, x)= 2y^4 + (4y^3 x^2 - 2) 2x cos x^2 = 2 sin^4 (x^2) + 8x^3 sin^3(x^2)cos x^2 - 4x cos x^2$

3. $u = f(v, w, t)$, where $v = g(x, y, z), w = h(x, y), x =x(t), y=y(t)$. Find $pdv(u, t)$.
  
   #table(
      columns: 6, 
      align: center,
      stroke: 0.5pt,
      inset: 6pt,
      [$u$], [], [], [], [], [],
      [$v$], [$$], [$$], [$w$], [$$], [$t$],
      [$x$], [$y$], [$z$], [$x$], [$y$], [],
      [$t$], [$t$], [], [$t$], [$t$]
  )

  $pdv(u, t) = pdv(u, v)(pdv(v, x)dv(x, t) + pdv(v, y)dv(y, t) ) + pdv(u, w)(pdv(w, x)dv(x, t)+ pdv(w, y)dv(y, t)) + (pdv(u, t))_(v, w) $

  Notice the above there are two $pdv(u, t)$, but they are actually different. 
  
  $pdv(u, t)$ on LHS is the partial derivative of $u$ with respect to $t$ taking into account of all dependence 

  $pdv(u, t)$ on the RHS which is can be denoted for holding $v, w$ constant: $(pdv(u, t))_(v, w)$
  

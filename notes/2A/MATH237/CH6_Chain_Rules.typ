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

\
#defn[*Generalization of Chain Rule*

The definition of a differentiable fucntion and all the theorems on differentiablility generalize to $RR^n$

Let $vec(x)(t) in RR^n, T(t) = f(vec(x)(t))$, we have $ dv(T, t) = dv(f(vec(x)(t)), t) = grad f(vec(x)(t)) dot dv(vec(x)(t), t) $
]

Example

Let $f(x, y, z)$ be a differentiable function and $g(t) = f(x(t), y(t), z(t))$ 

where $x(t)=t, y(t)=t^2, z(t) = t^3$. If $grad f(1, 1, 1) = (2, 1/2, 1)$, find $g'(1)$

$g'(t) = grad f(vec(x)(t)) dot dv(vec(x)(t), t) ==>^(t=1) g'(1) = grad f(vec(x)(1)) dot dv(vec(x)(1), t)  = grad f(1, 1, 1) dot mat(1;2;3) = mat(2; 1/2; 1) dot mat(1;2;3) = 6$

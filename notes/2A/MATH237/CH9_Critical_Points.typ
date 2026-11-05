#import "../../../preamble.typ": *
#show: conf
#import "@preview/diverential:0.2.0": *
#import "@preview/physica:0.9.8": *
#let strut(h) = box(height: h, width: 0pt)
#let Title = "CH 9 — Critical Points"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== 9.1 Critical Points and Local Extrema

Recall: In single -variable calculus, local extrema occur when $f'(x) = 0$ or when $f'(x)$ does not exist

#defn[*Local Extrema* \ 

In two dimensions, $(a, b)$ is a 

- *Local Maximum* of $f$ if $f(x, y)<=f(a, b)$ in some neighborhood of $f(a, b)$

- *Local Minimum* of $f$ if $f(x, y)>=f(a, b)$ in some neighborhood of $f(a, b)$
]

Examples:

Local Minimum:
#align(center)[#image("../../../pictures/yr2/cal3ch9_1.png", width:10cm)]

#thm[*Local Extrema* \

If $f(a, b)$ is a local extrema of $f(x, y)$, then $ f_x (a, b)=0 "or DNE"  $ and $ f_y (a, b) = 0 "or DNE" $
]

#proof[
  Consider $g(x) = f(x, b)$. If $(a, b)$ is a local extrema of $f, x=a$ must be a local extrema of $g(x)$. Therefore, $g'(a) = 0 "or DNE" = f_x (a, b)$. 
  
  Similar argument can be applied for $g(x) = f(a, y)$
]
#align(right)[$square$]

#defn[*Critical Points* \ 

A point $(a, b) in "dom"f$ is a critical point of $f$ if 

$ f_x (a, b) = 0 "or DNE" $ and $ f_y(a, b)= 0 "or DNE" $

A local extrema must occur at a critical point BUT the reverse is not true.
]

#defn[*Saddle Point* \

A critical point $(a, b)$ is a *saddle point* of $f(a, b)$ if in every neighborhood of $(a, b) exists (x_1, y_1) "and" (x_2, y_2)$ s.t. $ f(x_1, y_1) >f(a, b) > f(x_2, y_2) $
]

#align(center)[#image("../../../pictures/yr2/cal3ch9_2.png", width:10cm)]

Example: 

Find all critical points of $f(x, y) = x^2 y-2x y^2+3x y+4$

  $f_x = 2x y-2y^2+3y, f_y = x^2+4x y+3x$. It is two continuous functions, so the critical points must have $f_x = f_y = 0$

  $2x y - 2y^2+3y = x^2 -4 x y +3x = y(2x-2y+3)= x(x-4y+3)$

  $y_1 = 0, x_1 = 0 : (0, 0)$

  $y_2 = 0, x+3 = 0 ==> x_2 = -3: (-3, 0)$

  $2x+2y+3 = 0, x_3 = 0 ==>-2y+3 = 0, y_3 = 3/2: (0, 3/2)$

  $2x-2y+3 =0, x-4y+3 = 0 ==> x_4 = -1, y_4 = 1/2: (-1, 1/2)$

  We have 4 critical points: $(0, 0), (-3, 0), (0, 3/2), (-1, 1/2)$
  

== 9.2 Second Derivative Test

== 9.3 Proof of the Second Partial Derivative Test
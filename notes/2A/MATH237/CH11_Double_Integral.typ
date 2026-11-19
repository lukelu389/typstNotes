#import "../../../preamble.typ": *
#show: conf
#import "@preview/diverential:0.2.0": *
#import "@preview/physica:0.9.8": *
#let strut(h) = box(height: h, width: 0pt)
#let Title = "CH 11 — Double Integral"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== Definition of Double Integral
*Recall*: The definite integral $ integral_a^b f(x) dif x = lim_(n -> oo) sum_i^n f(x_i) Delta x  $

\*(In this course, we consider only definite integrals and bounded functions over bounded integrals)
#defn[*Integrable* \

Consider $f(x, y)$ to be a bounded funciton, and $D subset.eq RR^2$ where $D$ is closed and bounded. Let $P$ to be a partition of $D$ and $|Delta P|$ denote the length of the longest side of all rectangles in the partition $P$. A function $f(x, y)$ which is bounded on $D$ is *integrable* on $D$ if all Riemann sums approach the same value as $|Delta P| ->0$, that is $ lim_(Delta P->0) sum_(i=0)^n f(x_i, y_i) dif A_i $

]


#defn[*Double Integral* \ 

If $f(x, y)$ is integrable on a closed and bounded $D$, then the *double integral* of $f "on" D$

$ integral.double_D f(x, y) dif A = lim_(Delta P->0) sum_(i=0)^n f(x_i, y_i) dif A_i $

]

- Any continuous functions on $D$ are integrable on $D$

- If $f$ is continuous everywhere on $D$ except at points which lie a piecewise continuous curve, then $f$ is integrable on $D$

== Interpretations on Double Integral

1. *rea*

  Assume $f(x, y) = c$ for all $(x, y) in D, c in RR$

  $ integral.double_D c dif A $ 
2. *Volume*

  Assume $f(x, y) >=0$ for all $(x, y) in D$

   $ integral.double_D f(x, y) dif A $ can be intepreted as $V(S), S ={(x, y, z):0<=z<=f(x, z), (x,y) in D}$

3. *Mass*


  $ integral.double_D f(x, y) dif A $

4. *Average Value of Function*

  $ f_"avg" = 1/(A(D)) integral.double_D f(x, y) dif A $


We can evaluate integrals as *iterated integrals*, stwo single integrals evaluated in succession.

*Properties of Double Integral*

If $D subset.eq RR^2$ is a closed and bounded set and $f$ and $g$ are two integrable functions on $D$ where $f(x, y)<=g(x, y) space forall (x, y) in D$, then for any constant $c$:

1. Linearity $ integral.double_D (c f+g) dif A = c integral.double_D f dif A + integral.double_D g dif A $

2. Basic Inequality $ integral.double_D f dif A <= integral.double_D g dif A $

3. Absolute Value Inequality $ abs(integral.double_D f dif A) <= integral.double_D abs(f) dif A $

4. Decomposition $ integral.double_D f dif A = integral.double_D_1 f dif A + integral.double_D_2 f dif A $ given that $D = D_1 inter D_2$


#thm[*Evaluation of Double Integral* \ 

Let $D subset.eq RR^2$ by $y_l (x) <= y <=y_u (x), x_l <=x<=x_u$ where $y_l (x), y_u (x)$ are continuous for $x_l <= x<=x_u$. If $f(x, y)$ is continuous on $D$ then $ integral.double_D f(x, y) dif A = integral_(x_l)^(x_u)integral_(y_l(x))^(y_(u) (x)) f(x, y) dif y dif x $
]

Example

$ &integral_0^1 integral_0^x x^2+e^y dif y dif x \

&= integral_0^1 eval(x^2 y+e^y, 0, upper:x)dif x = integral_0^1 x^3 +e^x -1 dif x = eval(x^4/4 + e^x-x, 0, upper:1) = 1/4+e-1-1 =e-7/4 $


The hard part becomes determining the boundes for apply double integration.

We can sketch by visualizing easier

Example:

Evaluate double integral with $D$ be the region in $RR^2$ bounded by $y=x "and" y=x^2$

#align(center)[#image("../../../pictures/yr2/cal3ch11_1.png", width:8cm)]

$ integral.double_D f(x, y) dif A = integral_0^1 integral_(x^2)^x f(x, y)dif y dif x =  integral_0^1 integral_y^(sqrt(y))  f(x, y) dif x dif y $

We set up by left to right, bottom to top for $x$ and right to left, bottom to top for $y$

How do we choose $dif x dif y$ or $dif y dif x$?

Consider:
#align(center)[#image("../../../pictures/yr2/cal3ch11_2.png", width:8cm)]

It is a bit easier to set up for $dif x dif y$ because $dif y dif x$ needed to changed to two double integrals due to the gap around the "waist" of the peanut in this case.

Sometimes it also equally easy to setup the funciton but harder to set up bounds for the integrand.

\


\
\
\
\
\
Example:

$ integral.double_D sin(x/y) dif A$ where $D$ is the region bounded by $y$-axis, $y=pi$ and $y=sqrt(x)$

#align(center)[#image("../../../pictures/yr2/cal3ch11_3.png", width:10cm)]

$integral integral sin(x/y) dif y dif x$, what is the $integral sin(x/y) dif y$...?

So we will use instead $integral integral sin(x/y) dif x dif y$ which is easier

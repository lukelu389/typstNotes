#import "../../../preamble.typ": *
#show: conf
#import "@preview/diverential:0.2.0": *
#import "@preview/physica:0.9.8": *
#let strut(h) = box(height: h, width: 0pt)
#let Title = "CH 11 — Double Integral"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== Definition of Double Integral
*Recall*:


The definite integral $ integral_a^b f(x) dif x = lim_(n -> oo) sum_i^n f(x_i) Delta x  $

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

4. *Probability*

5. *Average Value of Function*

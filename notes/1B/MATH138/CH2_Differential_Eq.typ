#import "../../../preamble.typ": *
#import "@preview/diverential:0.2.0": *
#let strut(h) = box(height: h, width: 0pt)

#let Title = "CH 2 — Differential Equations"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== Introduction to Differential Equations 

#info[*Differential Equations*

A differential equation (DE), is an equation involving an unknown function and its derivatives. The term ordinary differential equation (ODE) refers to a differential equation involving single-variable functions, whereas the term partial differential equation (PDE) refers to a differential equation involving multivariable functions (i.e., functions with multiple inputs). 

An ODE is expressed $ F(x, y, y', y'', ..., y^(n)) = 0 $ for some $n in NN$

The order of a DE is the order of the *highest derivative* that appears in the equation.
 \
 \
A function $y = phi(x)$ is a solution to the differential equation $F(x, y, y', y'', ..., y^(n)) = 0$ if $ F(x, phi(x), phi'(x), phi''(x), ..., phi^(n)(x)) = 0 $ The graph of a solution to a DE is called a *solution curve*
\
\

The complete collection of solutions to a DE, including any arbitrary constants, is called
its general solution. A particular solution to a DE is one in which all arbitrary constants
have been specified.


A differential equation together with one or more initial conditions is known as an initial value problem (IVP)
]

Examples:

1. First order differential equation $dv(y, x) = x+y$

2. Second order differential equation $dv(y, x) + x^2 dv(y, x, deg:2) = ln x+ y$

3. Solve $dv(y, x) = sin x ==> y = -cos x + C, c in RR$

4. $dv(y, x) = sin x, y(0)=2 ==> -cos x+C ==> -cos x + 3$

5. $y' = x+y$

  $y = -1-x+2e^x ==> y' = -1 + 2e^x ==> (x+y) = x+ (-1-x+2e^x) = -1+2e^x = y'$ 


6. $y = -1-x-5e^x$

  $y' = -1-5e^x ==> x+ (-1-x-5e^x) = -1-5e^x = y'$

7. $y = -5-x+2e^x$

  $y' = -1+2e^x ==> x+ (-5-x+2e^x) = -5+2e^x != y'$

Thus $y = -1-x+C e^x$, for $C in RR$ is always a solution

8. Determine all real numbers $k$ s.t. $x(t) = sin(k t)$ is a solution to the second-order differential equation $dv(y, x, deg:2) = -2x$

  $cases(x'(t) = k cos(k t), x''(t) = -k^2 sin(k t)) ==> -k^2 sin k t &= 02 sin k t \ (k^2-2)sin(k t) &= 0  \  k = plus.minus sqrt(2), k = 0$



== Direction Fields

== Separable Differential Equations

== Linear First-Order Differential Equations
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

#info[*Direction Field*\

A direction field for the different equation $y' = F(x)$ displays short line segments of slope$F(x, y)$ at various points in the Cartesian plane
]

#tip[Direction field plotter for DE: #link("https://www.desmos.com/calculator/p7vd3cdmei")]

Examples:

1. $dv(y, x) = x/y$
  #align(center)[#image("../../../pictures/cal2ch2_1.png", width:6cm)]

  We can obtain this when plugging-in numbers. 
  
  At $(-2, 1), eval(dv(y, x), (x, y) = (-2, 1)) = eval(x/y, (x, y) = (-2, 1))  ==> -2/1 = -2$ 
  
  Hence a slope of $-2$ at $(-2, 1)$ and other points have the same method
\
2. $y'x = x+y$ 
   #align(center)[#image("../../../pictures/cal2ch2_3.png", width:4cm)]

3. $y' = x y$
     #align(center)[#image("../../../pictures/cal2ch2_2.png", width:4cm)]

4. $y' = y$
  #align(center)[#image("../../../pictures/cal2ch2_4.png", width:4cm)]

== Separable Differential Equations

#info[*Separable Differential Equation*\

A first order differential equation is said to be separable if it is written in format $ dv(y, x)= g(x)h(x) $
]

Examples:

1. $y' = sin x$

2. $y' = x/y$

3. $y' = 5y$

4. $y^2 y' = 2y + x y$

5. $y' = x+y$ is not separable but linear, see in Linear First Order DEs

#tip[*Solving Separable DE*
We have two cases

1. Determine any solution $y$ with $h(y) = 0$

2. Find the solutions $y$ where $h(y)equiv.not 0$ by evaluating $ integral 1/h(y) dif y = integral g(x) dif x $ If possible, isolate $y$ as a function of $x$ in the resulting equation. 

The general solution is the collection of all solutions obtained in Case 1 together with all solutions obtained in Case 2.
]

Examples:

1. $y' = y$ \

  Case 1: $y = 0$


  Case 2: $ integral 1/y dif y &= integral 1 dif x \
    ln |y|  &= x + C_1 \
    |y| &= e^(x+C_1)
    y &= plus.minus e^(C_1) e^x = plus.minus C e^x, space C in RR
  $
  
  The general solution is $y = A e^x, space A in RR$
  
2. $y' = x/y$\

  Case 1: $h(y) = 1/y != 0$ \

  Case 2: 
  $ integral y dif y &= integral x dif x \
  y^2/2 &= x^2/2 + C \ y^2 &= x^2 + 2C \ y &= plus.minus sqrt(x^2+ 2C) $

  The general solution $y &= plus.minus sqrt(x^2+ D), space D in RR$

3. $y' = x y^2, y(0)=3$

  Case 1: $h(y) = 0 ==>y equiv 0$

  Case 2: $ integral 1/y^2 dif y &= integral x dif x ==> -1/y = x^2/2 +C ==> y = -2 frac(2, x^2+2 C) $

  The general solution is $y equiv 0$ or $y = frac(-2, x^2+D), space D in RR$

  For $y (0) = 3 ==> -2/D = 3 ==> D= -2/3$ ==> the unique solution is $y = frac(-2, x^2-2/3)$

4. $y' -x^2 -y^2 -2x y +1 = 0 ==> y' = (x+y)^2 - 1 ==>^(v = x+y) v' = v^2$
  
  Case 1: $h(v) = v^2 equiv 0 ==> v equiv 0$

  Case 2: $integral 1/v^2 dif v = x ==> -1/v = x+C ==> v = -1/(x+C), C in RR$

  The general solution $v equiv 0$ or $v = -1/(x+C), C in RR$

  $y=-x $ or $y = -x-1/(x+C), C in RR$



== Linear First-Order Differential Equations
#info[*First-Order Linear Differential Equation*

First order Linear DE has the form $ A_0(x) y + A_1(x)y' = B(x) quad A_1(x)equiv.not 0 $

Such an equation can be written inthe form $y'+ P(x)y = Q(x)$ called the standard form.
]



#info[*Integrating Factor*\
Given a DE of the form $y'+P(x)y = Q(x)$,

$ mu = e^(integral P(x) dif x) $ is called the integrating factor for the DE.
]

#tip[*Solving First-Order Linear DE*\
Given $A_1(x)y' +A_0(x)y = B(x)$

1. Divide by $A_1(x)$ to rewrite the DE in standard form

2. Multiply the equation by the integrating factor.
3. Rewrite LHS as $(mu(x)y)'$

4. Integrate in respext to x

5. Isolate $y$
]
CUTOFF Q5
== Applications


#tip[*Formula - Mixing Problem*\

$ dv(A, t) = ("rate of substance in") - ("rate of substance out") $
]

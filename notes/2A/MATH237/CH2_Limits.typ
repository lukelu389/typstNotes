#import "../../../preamble.typ": *
#show: conf
#import "@preview/diverential:0.2.0": *
#let strut(h) = box(height: h, width: 0pt)
#let Title = "CH 2 — Limits"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== Limits

=== 2.1 Definition of Limits

#defn[*Neighborhood* \

An $r$-*neighborhood* of a point $(a, b) in RR^2$ is a set

$ N_r (a, b) = {(x, y) in RR^2 : ||(x, y)-(a, b)|| < r} $
]

*Note*:

$||(x, y) - (a, b)||$ is the *Euclidean distance* or $sqrt((x-a)^2 + (y-b)^2)$

Visualize that neighborhood as an area of $(x, y)$ that is the interval for a 3D plane
\

#defn[*Limits* \ 

Assume that $f(x, y)$ is defined in some neighborhood of $(a, b)$, except possible at $(a, b)$. Then if for every $epsilon > 0, exists delta > 0$ s.t. $ 0< ||(x, y)-(a, b)|| < delta --> |f(x, y)-L|< epsilon $ We say that $lim_((x, y)->(a, b)) f(x, y) = L$
]

#align(center)[ #image("../../../pictures/yr2/cal3ch2_1.png", width: 10cm)]


=== 2.2 Limit Theorems
\
*Limit Theorems*
\

If $lim_((x, y)->(a, b)) f(x, y)$ and $lim_((x, y)->(a, b)) g(x)$ both exsits, then:

1. $lim_((x, y)->(a, b)) [f(x, y) plus.minus g(x, y)] = lim_((x, y)->(a, b)) f(x, y) plus.minus lim_((x, y)->(a, b)) g(x, y)$

2. $lim_((x, y)->(a, b)) [f(x, y)g(x, y)] = [lim_((x, y)->(a, b)) f(x, y)][lim_((x, y)->(a, b))g(x, y)]$

3. $lim_((x, y)->(a, b))frac(f(x, y), g(x, y)) = frac(lim_((x, y)->(a, b)) f(x, y), lim_((x, y)->(a, b)) g(x, y)), "for any" lim_((x, y)->(a, b)) g(x, y) != 0$

4. If $lim_((x, y)->(a, b)) f(x, y)$ exists, then it is also unique

\
\
\
#proof[
Uniqueness of a limit

Assume that $lim_((x, y)->(a, b)) f(x, y) = L_1$ and $lim_((x, y)->(a, b)) f(x, y) = L_2$

$L_1 - L_2 = lim_((x, y)->(a, b)) f(x, y) - lim_((x, y)->(a, b)) f(x, y) = lim_((x, y)->(a, b)) [f(x, y) - f(x, y)]  \

==> lim_((x, y)->(a, b)) 0 = 0 ==>L_1 - L_2 = 0 ==> L_1 = L_2$
]

#align(right)[$square$]

=== 2.3 Proving a Limit denoted

\
In $RR^2$ we can approach the point $(a, b)$ along an infinite number of paths.

For the limit to exsits, $f$ must approach $L$ along *ALL* paths


Examples:

1. Let $f(x, y) = frac(y^2 - x^2, y^2 + x^2)$, prove $lim_((x, y)->(0, 0)) f(x, y) =$ DNE 

  Try approaching $(0, 0)$ along straight lines of the form $y = m x$

  Along the line $y = m x$, 

  $lim_((x, y)->(0, 0)) f(x, y) = lim_(x -> 0) f(x, m x) = lim_(x->0) frac(m^2 x^2 - x^2, m^2x^2+ x^2) = lim_(x->0) frac(m^2 -1, m^2+1) = frac(m^2 - 1, m^2 + 1) $

  $f$ approaches different values depending on $m$, so the limit does not exists as it is not unique.

2. Let $f(x, y) = frac(|x|, |x|+y^2); (x, y) != (0, 0)$, show that $lim_((x, y)->(0, 0)) f(x, m x) = 1 space forall m in RR$, but $lim_((x, y)->(0, 0))f(x, y) = "DNE"$

  Try approaching $(0, 0)$ along straight lines of the form $y = m x$

  Along the line $y = m x$, 

  $lim_((x, y)->(0, 0))f(x, y) = lim_(x->0) f(x, m x) = lim_(x ->0) frac(|x|, |x|+m^2 x^2) $
  
  $==> lim_(x ->0^-) frac(-x, -x+m^2 x^2) = lim_(x->0^-) frac(-1, -1 + m^2 x) = 1$

   $==> lim_(x ->0^+) frac(x, x+m^2 x^2) = lim_(x->0^+) frac(1, 1 + m^2 x) = 1$

  $lim_((x, y)->(0, 0))f(x, y) = 1$

  Try approaching $(0, 0)$ along $x = 0$

  $lim_((x, y)->(0, 0))f(x, y) = lim_(x->0) f(0, y) = 0 != 1$
  

*Note*: the above approach cannot be used to prove the existence of limit.

3. Show that $lim_((x, y)-> (0, 0))  frac(x^2 y, x^4+y^2)$ does not exist. (*Exponent matching*)

  Try approaching $(0, 0)$ along the straight lines of the form $y = m x$

  $lim_((x, y)->(0, 0)) frac(x^2 (m x), x^4 + (m x)^2) = lim_((x, y)->(0, 0))frac(m x, x^2 + m^2) = 0, space forall (x, y) != (0, 0)$

  Try approaching $(0, 0)$ along $y = x^2$

  $lim_((x, y)->(0, 0)) frac(x^2 (x^2), x^4+x^4) = lim_((x, y)->(0, 0)) 1/2 = 1/2, space forall (x, y) in RR^2$

  Notice that $0 != 1/2$. Thus the limit does not exists.

#defn[*Squeeze Theorem* \ 

If there exists a function $B(x, y)$ s.t. $ |f(x, y)- L|<= B(x, y), space forall (x, y) != (a, b) $ in some neighborhood of $(a, b)$ and $ lim_((x, y)->(a, b)) B(x, y) = 0 $then $ lim_((x, y)->(a, b)) f(x, y) = L $
]

#proof[

Let $epsilon > 0$.

Since $lim_((x, y)->(a, b)) B(x, y) = 0$, $exists delta >0$ s.t. 
$0<= ||(x, y) - (a, b)|| <= delta --> |B(x, y)|< epsilon$

So, whenever $0<= ||(x, y) - (a, b)|| < epsilon, $ if $|f(x, y)-L| < B(x, y) = |B(x, y)| < epsilon$,

and so by definition $lim_((x, y)->(a, b)) f(x, y) = L$
]
#align(right)[$square$]

Example;

Show that $lim_((x, y)->(0, 0)) frac(x^2 y, x^2+y^2) = 0$
  
  We have $f(x, y) = frac(x^2 y, x^2+y^2)$ and $L = 0$

  $|f(x, y) - L| = |frac(x^2 y, x^2+y^2)| = frac(x^2, x^+y^2) |y| <= (x^2+y^2)/(x^2+y^2) |y| = |y|, space forall (x, y) != (0, 0)$

  $B(x, y) = |y|$

  Notice $lim_((x, y)->(0, 0)) B(x, y) = lim_(y->0) |y| = 0$.

  By Squeeze Theorem, $lim_((x, y)->(0, 0)) f(x, y) =0$

*Note*: add to the numerator and do not subtrat from the denominator because it will change the domain of the funciton.

#tip[*Useful Inequalities for Upper Bound*

1. $|a+b|<=|a|+|b|, space a, b in RR$

2. If $c>=0 ==> a<=a+c$

  Common use case, typically combined with Squeeze Theorem: $|x|= sqrt(x^2)<= sqrt(x^2+y^2)$

3. $2|x||y| <= x^2 +y^2$

]

*Note*: The Squeeze Theorem requires to have a limiting value $L$ in mind.

\
\
\
Example:

Determine $lim_((x, y)->(0, 0)) frac(x^2 -|x|-|y| , |x|+|y|)$

Try $y = m x$

$lim_(x->0) frac(x^2 - |x| - |m x|, |x|+|m x|) = lim_(x->0) frac(|x|-1-|m|, 1+|m|) = -1$

We now want to prove that $lim_((x, y)->(0, 0)) frac(x^2 - |x| - |y|, |x|+|y|) = -1$

$| frac(x^2-|x|-|y|, |x|+|y|) + 1 = |frac(x^2 - |x|-|y| +|x|+|y|, |x|+|y|)| = frac(x^2, |x|+|y|) <= frac(|x|(|x|+|y|), |x|+|y|) = |x|, space forall (x, y)!=(0, 0)$

$lim_((x, y)->(0, 0)) B(x, y) = lim_(x->0) |x| = 0$

By Squeeze Theorem, $lim_((x, y)->(0, 0)) frac(x^2 -|x|-|y| , |x|+|y|) = -1$


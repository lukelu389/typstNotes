#import "../../../preamble.typ": *
#show: conf
#import "@preview/diverential:0.2.0": *
#import "@preview/physica:0.9.8": *
#let strut(h) = box(height: h, width: 0pt)
#let Title = "CH 4 - Inner Product Spaces"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

We defined abstract vector spaces to model $RR^n$.

So far, the focus has been on algebra. Geometry is rarely discussed. 

In $RR^n$, we can talk about lengths, distance, and angles via DOT PRODUCT 

Recall that in $RR^n, vec(x) dot vec(y) = mat(x_1; ...; x_n) dot mat(y_1; ...; y_n) = x_1 y_1 + ... + x_n y_n$

*Observations*:

1. $vec(x) dot vec(x) = x_1^2 + ...+ x_n^2 = ||vec(x)||^2$

2. $"dist"(x, y) = ||vec(y)-vec(x)|| = sqrt((vec(x)-vec(y)) dot (vec(x)-vec(y)))$


3. $vec(x) dot vec(y) = ||x||||y|| cos theta ==> theta = arccos frac(vec(x) dot vec(y), ||vec(x)||||vec(y)||)$

We can view dot product as $f:V times V ->RR, f(x, y) = x dot y in RR$ that satisfies

1. $f(x, y) = f(y, x)$, symmetry

2. $f(c x + z, y) = c f(x, y) + f(z, y)$, linearity in the first argument(second argument is same by symmetry)

3. $f(x, x) >=0 space forall x$, $f(x, x) = 0 <==> x = 0$, positive-definite

4. $frac(f(x, y), ||x||||y||) in [-1, 1]$, can be obtained from the above 3 properties.
#defn[*Inner Product*]
$chevron.l chevron.r$
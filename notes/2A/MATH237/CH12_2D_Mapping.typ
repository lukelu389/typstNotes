#import "../../../preamble.typ": *
#show: conf
#import "@preview/diverential:0.2.0": *
#import "@preview/physica:0.9.8": *
#let strut(h) = box(height: h, width: 0pt)
#let Title = "CH 12 — Mapping"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

Polar coordinates is an example of a mapping from the plane to the plane. In this section, we will discuss some properties of mappings in general.

#defn[*Mapping* \ 

A *mapping* is a vector-valued function which maps subsets of $RR^n$ to subsets of $RR^n$. 

$ (u, v) = F(x, y) = (f(x, y), g(x, y)) $ is a mapping from $RR^2$ to $RR^2$.

Given a set $S subset.eq RR^2$, the image of $S$ under the mapping $F$ is defined as \

$F(S) = {(u, v) in RR^2: (x, y) in S}$.

#align(center)[#image("../../../pictures/yr2/cal3ch12_1.png", width:8cm)]
]

*Note*: For continuous mappings, (the component functions are continuous) map closed and bounded sets to closed and bounded sets. However, the converse is not true; that is, a mapping may map closed and bounded sets to closed and bounded sets without being continuous.


Example:

Let $S = {(x, y) : |x|<=1, |y|<=1}$ and $F(x, y) = (1/2 (x+y), 1/2 (y-x))$

$u = 1/2 (x+y), v = 1/2 (y-x); u-v = x, u+v = y$

$cases(x=-1 ==> u-v=-1, x=1 ==> u-v = 1, y=-1 ==>u+v=-1, y=1==>u+v=1)$

$A(S) = 2^2 = 4, A(F(S)) = 2$. The mapping scaled the area by a factor of $1/2$

#align(center)[#image("../../../pictures/yr2/cal3ch12_2.png", width:8cm)]


*Note*: $F(x, y)$ is a linear map

#defn[*Derivative Matrix* \ 

The *derivative matrix* of the mapping $F(x, y) = (u(x, y), v(x, y)) $ is $ "DF" = mat(pdv(u, x), pdv(u, y); pdv(v, x), pdv(v, y)) $
]

#defn[*Jacobian of Mapping* \ 

The *Jacobian* of $F(x, y) = (u(x, y), v(x, y))$ is

$ pdv((u ,v), (x, y)) = "det" mat("DF"(x, y)) = "det" mat(pdv(u, x), pdv(u, y);pdv(v, x), pdv(v, y)) $

In words, the Jacobian of a mapping $F$ describes the extent to which $F$ increases or decreases areas. 
]
#align(center)[#image("../../../pictures/yr2/cal3ch12_3.png", width:10cm)]


Example:

Given the mapping from polar to Cartesian coordinates
$(x, y) = F(r, theta) = (r cos theta, r sin theta)$. Find Jacobian $pdv((x, y), (r, theta))$

$"det" mat(pdv(x, r), pdv(x, theta); pdv(y, r), pdv(y, theta))  = "det" mat(cos theta, -r sin theta ; sin theta, r cos theta) = r cos^2 theta + r sin^2 theta = r $

#thm[*Change of Variable Theorem* \ 
Let $D_(u v), D_(x y)$ be closed and bounded sets with piecewise smooth boundary curves. Let $ (x, y) = G(u, v) = (g(u, v), h(u, v)) $ be a one-to-one mapping of $D_(u v)$ onto $D_(x y)$, with $g, h in C^1$ and $pdv((x, y), (u, v))!=0$(except for possibly on a finite collection of piecewise smooth curves in $D_(u v)$)

If $f(x, y)$ is continuous on $D_(x y)$, then $ integral.double_(D_(x y)) f(x, y)dif y dif x = integral.double_(D_(u v)) f(g(u, v), h(u, v)) abs(pdv((x, y), (u, v)))dif u dif v $

]

In order to use the Change of Variables Theorem, first we need to come up with a suitable mapping. It means mapping the original region to a *rectangular region*, boundes of integration are constant.

Example:

Let $D$ be the region bound by $cases(y=x, y=-x, y=-x+5, y=x-5)$. Find a mapping which maps $D$ to a rectangular region to evaluate $integral.double_D (x+y) dif A$


We have boundary curve

$cases(y=x, y=x-5) -> cases(y-x=0, y-x=-5) ->cases(x/5-y/5=0, x/5-y/5=1), u = x/5-y/5$ 

$cases(y=-x, y=-x+5) -> cases(y+x=0, y+x=5) -> cases(x/5+y/5 = 0, x/5+y/5 = 1), v = x/5+y/5$

$(u, v) = (x/5-y/5, x/5+y/5)$, the boundary curves becomes $u=0, u=1, v=0, v=1$

$abs(pdv((x, y), (u, v))) = "det"mat(5/2, 5/2; -5/2, 5/2) = 25/2$

$x+y = 5v ==> integral_0^1 integral_0^1  125/2v dif v dif u = integral_0^1 integral_0^1  125/4 v dif v dif u = integral_0^1 125/4 dif u = eval(125/4, 0, upper:1) = 125/4$

#thm[*Inverse Property of Jacobian* \ 

If $F(x, y)$ has continuous partial derivatives and $pdv((u, v), (x, y))!=0$ then the inverse mapping $F^(-1)(x, y)$ exists

$ pdv((x, y), (u, v)) = 1/pdv((u, v), (x, y)) $

$ "DF"^(-1)(vec(u)) "DF"(vec(x)) = I $

]


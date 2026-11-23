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

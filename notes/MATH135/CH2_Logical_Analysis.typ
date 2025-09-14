
#import "../../preamble.typ": meta, set-title

#let Title = "CH 2 — Logical Analysis"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")



== Truth Tables and Negation
$A$ is a statement with an assigned truth value and can be manipulated as a logical expression using the operators not, or, and, =>

     
=== Negation table

#align(center)[
  #table(
    columns: 3,
    align: (center, center, center),
    stroke: 0.5pt,
    inset: 6pt,
    [*A*], [*not A*], [*not(not A)*],
    [T],   [F],       [T],
    [F],   [T],       [F],
  )
]


== Compound Statements

A compound statement is built from simpler statements using or and and

- $or$ is disjunction
- $and$ is conjunction


=== Tables for 

#align(center)[
  #table(
    columns: 4,
    align: (center, center, center, center),
    stroke: 0.5pt,
    inset: 6pt,
    [*A*], [*B*], [*A or B*], [*A and B*],
    [T],   [T],   [T],        [T],
    [T],   [F],   [T],        [F],
    [F],   [T],   [T],        [F],
    [F],   [F],   [F],        [F],
  )
]

\
== Logical Laws

1. De Morgan’s Laws  
   for statements $A$ and $B$

    1. $not(A and B)  equiv  not A or not B$
    2. $not(A or B)   equiv  not A and not B$

2. Commutative, Associative, and Distributive Laws

    1. Commutative
        - $A or B  equiv  B or A$
        - $A and B equiv  B and A$

    2. Associative
        - $A and (B and C)  equiv  (A and B) and C$
        - $A or (B or C)    equiv  (A or B) or C$

    3. Distributive
        - $A and (B or C)   equiv  (A and B) or (A and C)$
        - $A or (B and C)   equiv  (A or B) and (A or C)$

\


*Truth-table proof of De Morgan Law*

#align(center)[
  #table(
    columns: 7,
    align: (center, center, center, center, center, center, center),
    stroke: 0.5pt,
    inset: 6pt,
    [*A*], [*B*], [*not A*], [*not B*], [*A and B*], [*not(A and B)*], [*not A or not B*],
    [T],   [T],   [F],       [F],       [T],         [F],             [F],
    [T],   [F],   [F],       [T],       [F],         [T],             [T],
    [F],   [T],   [T],       [F],       [F],         [T],             [T],
    [F],   [F],   [T],       [T],       [F],         [T],             [T],
  )
]

Since the columns for $not(A and B)$ and $not A or not B$ are identical in the table, they are logically equivalent.


=== Example: \
Truth table proof of Distributive $and$ over $or$

Show $A and (B or C)  equiv  (A and B) or (A and C)$

#align(center)[
  #table(
    columns: 8,
    align: (center, center, center, center, center, center, center, center),
    stroke: 0.5pt,
    inset: 6pt,
    [*A*], [*B*], [*C*], [*B or C*], [*A and (B or C)*], [*A and B*], [*A and C*], [*(A and B) or (A and C)*],
    [T],   [T],   [T],   [T],        [T],                [T],         [T],         [T],
    [T],   [T],   [F],   [T],        [T],                [T],         [F],         [T],
    [T],   [F],   [T],   [T],        [T],                [F],         [T],         [T],
    [T],   [F],   [F],   [F],        [F],                [F],         [F],         [F],
    [F],   [T],   [T],   [T],        [F],                [F],         [F],         [F],
    [F],   [T],   [F],   [T],        [F],                [F],         [F],         [F],
    [F],   [F],   [T],   [T],        [F],                [F],         [F],         [F],
    [F],   [F],   [F],   [F],        [F],                [F],         [F],         [F],
  )
]


== Implications

$=>$ is implication

B if A

B when A

B whenever A

A is a sufficient condition for B


=== Key equivalence

$(A => B)  equiv  (not A or B)$

#align(center)[
  #table(
    columns: 5,
    align: (center, center, center, center, center),
    stroke: 0.5pt,
    inset: 6pt,
    [*A*], [*B*], [*A => B*], [*not A*], [*(not A) or B*],
    [T],   [T],   [T],        [F],       [T],
    [T],   [F],   [F],        [F],       [F],
    [F],   [T],   [T],        [T],       [T],
    [F],   [F],   [T],        [T],       [T],
  )
]

So $not(A => B)  equiv  not(not A or B)  equiv  A and not B$


=== Practice

$((A or B) => C)  equiv  (A => C) and (B => C)$

#align(center)[
  #table(
    columns: 8,
    align: (center, center, center, center, center, center, center, center),
    stroke: 0.5pt,
    inset: 6pt,
    [*A*], [*B*], [*C*], [*A or B*], [*(A or B) => C*], [*A => C*], [*B => C*], [*(A => C) and (B => C)*],
    [T],   [T],   [T],   [T],        [T],               [T],        [T],        [T],
    [T],   [T],   [F],   [T],        [F],               [F],        [T],        [F],
    [T],   [F],   [T],   [T],        [T],               [T],        [T],        [T],
    [T],   [F],   [F],   [T],        [F],               [F],        [F],        [F],
    [F],   [T],   [T],   [T],        [T],               [T],        [T],        [T],
    [F],   [T],   [F],   [T],        [F],               [T],        [F],        [F],
    [F],   [F],   [T],   [F],        [T],               [T],        [T],        [T],
    [F],   [F],   [F],   [F],        [T],               [T],        [T],        [T],
  )
]


== Converse

$B => A$ is the converse of $A => B$


== Contrapositive

$(not B) => (not A)$ is the contrapositive of $A => B$

#align(center)[
  #table(
    columns: 7,
    align: (center, center, center, center, center, center, center),
    stroke: 0.5pt,
    inset: 6pt,
    [*A*], [*B*], [*A => B*], [*B => A*], [*not A*], [*not B*], [*(not B) => (not A)*],
    [T],   [T],   [T],        [T],        [F],       [F],       [T],
    [T],   [F],   [F],        [T],        [F],       [T],       [F],
    [F],   [T],   [T],        [F],        [T],       [F],       [T],
    [F],   [F],   [T],        [T],        [T],       [T],       [T],
  )
]

Examples

1. If $x > y$ then $x >= y$
2. Converse  If $x >= y$ then $x > y$
3. Contrapositive  If $x < y$ then $x <= y$


== If and Only If

$<=>$ means if and only if

#align(center)[
  #table(
    columns: 6,
    align: (center, center, center, center, center, center),
    stroke: 0.5pt,
    inset: 6pt,
    [*A*], [*B*], [*A => B*], [*B => A*], [*A <=> B*], [*(A => B) and (B => A)*],
    [T],   [T],   [T],        [T],        [T],         [T],
    [T],   [F],   [F],        [T],        [F],         [F],
    [F],   [T],   [T],        [F],        [F],         [F],
    [F],   [F],   [T],        [T],        [T],         [T],
  )
]

What is $not(A <=> B)$?\
Solution: \
$equiv not((A => B) and (B => A))$

$equiv not(A => B) or not(B => A)$

$equiv not(not A or B) or not(A or not B)$

$equiv (A and not B) or (not A and B)$

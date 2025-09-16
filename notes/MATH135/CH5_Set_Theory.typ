#import "../../preamble.typ": *

#let Title = "CH 5- Set Theory"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== Empty Set
$#sym.nothing = {}$ but ${#sym.nothing} != #sym.nothing$ \
\
== Cardinality
The number of elements in a finite set is $S$ called the cardinality of $S$, denoted by $|S|$
\
\
== Set Notation
=== Set Builder Noataion - Type 1
The notation *${x in cal(U):P(x)}$*\
Describes the set consisting of all objects $x$ such that $x$ is an element of $cal(U)$, and $P(x)$ is true

Example:
$A = {n in NN: n divides 12} = {1, 2, 3, 4, 6, 12}$

=== Set Builder Notation -Type 2
The notation *$f(x):x in cal(U)$* \
Describes the set consisting of all objects of the form $f(x)$ such that $x$ is an element of $cal(U)$

Example: $B = {2k:k in ZZ} = $ all even numbers

=== Set Builder Notation - Type 3
The notation *$f(x):x in cal(U), P(x)$* or *$f(x): P(x) , x in cal(U)$*
Both describes the set consisting of all objects of the form $f(x)$ such that $x$ is an element $cal(U)$ and $P(x)$ is true

Example: $C = {a/b: a, b in ZZ, b != 0}$

Practices:
1. All multiple of $7$: ${x in NN: 7 divides x}$
2. All odd perfect square: ${(2x+1)^2: x in ZZ}$
3. All points on a circle of radius $8$ centered at origin: ${(x, y): x, y in RR, x^2+y^2 = 64:}$
4. All sets of three integers which are the side lengths of a triangle: \
${(x, y, z): x, y, z in NN, x < y < z, x + y < z}$

== Union and Intersection
The *union* of two sets $S$ and $T$, denoted, $S union T$, is the set of all elements belonging to either set $S$ or set $T$.

The *intersection* of two sets $S$ and $T$, denoted, $S inter T$, is the set of all elements belonging to either set $S$ and set $T$.

 
Practice: \
Let $C = {3, 5, 7, 10}, D= {1, 3, 6, 7, 8}$
1. $C union D = {1, 3, 5, 6, 7, 8, 10}$
2. $C inter D = {3, 7}$ 
\
Let $A = {m in ZZ: 2 divides m}, B = {2k+1:k in ZZ}$
1. $A union B = ZZ$
2. $A inter B = #sym.nothing$

For non empty sets $A$ and $B$
1. If $|A| = 12, |B| = 4, |A inter B | = 2, |A union B| = 14$
2. If $|A| = 10, |B| = 20, |A union B| = 25, |A inter B|= 5$


== Set Difference
The *set difference* of two sets $S$ and $T$, written $S - T$ or $ S without T$ is the set of all elements belonging to $S$ but not $T$.
\
Symbolically: $S - T = {x:(x in S) and x( in.not TT)}$

== Complement
The *complement* of a set $S$ whose elements belong to $cal(U)$, written $S$, is the set of all elements in $cal(U)$ but not in $S$. 
\
Symbolically: ${x in cal(U) in.not S}$ \ 

== Disjoin Set
Two sets $S$ and $T$ are said to be disjoint when $S inter T = #sym.nothing$
\

Practice: \
1. Let $cal(U) = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}, C = {3, 5, 7, 10}, D = {1, 3, 6, 7, 8}$ \
Find $|C-D^complement| = 2$


2. Let $A = {x:x in NN, x$ is even $}$, $B = {x:x in NN, x$ is not a prime$}$

$A union B = {1, 2, 4, 6, 8, 9, ...}$
$A inter B = {2}$


3. If $A inter B = #sym.nothing$ and $B inter C = #sym.nothing$, then $A inter C = #sym.nothing$: False

4. If $|A inter B| = |A|$ and $B inter C = #sym.nothing$, then $A inter C = #sym.nothing$: True

5. If $|A inter B| = |A|$ and $|A inter C| = |A|$, then $B inter C = #sym.nothing$: False
#import "../../preamble.typ": *

#let Title = "HW 3"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

Q1 \ 
a) $D^complement union E = {1, 2, 4, 6, 7} union {1, 2, 5, 8, 9, 10} = {1, 2, 4, 5, 6, 7, 8, 9, 10}$  

b) $C union (D inter E) = {2, 3, 7, 9} union ({3, 5, 8, 9, 10} inter {1, 2, 5, 8, 9, 10} = {2, 3, 5, 8, 9, 10}$

c) $(C inter E)^complement = {2, 9}^complement = {1, 3, 4, 5, 6, 7, 8, 10}$

d) $C union E - D = {1, 2, 3, 5, 8, 9, 10} - {3, 5, 8, 9, 10} = {1, 2}$

Q2
Prove for all integers $x, y, z$, if $7x^2-3y-z+5x y+y^2x$ is odd, then $y$ is odd or $x-z$ is odd

#proof[
Let $x, y, z$ be arbitrary integers. \

$7x^2-3y-z+5x y+y^2x = x(7x-1)+4x y+ y z(y+1) + y + (x-z)(1+y)$

Notice that $x(7x-1)+4x y+ y z(y+1)$ will always be even.\
$x(7x-1)$ is always even: \

$"If "x" is odd, then" 7x "is odd and" 7x-1 "is even". \ "An even number multiply by any number remains even." $
$"If" x "is even, then the similar applies, the product remains even"$

$4x y$ is even and the proof is trivial and left as an exercise to the reader.

$y z(y+1)$ is always even. If $y$ is even, then the product is even. If $y$ is odd, then $(y+1)$ is even, and the product remains even.

Hence the parity of the entire expression relies on the parity of $y + (x-z)(1+y)$.
If $y$ is even, then $y+1$ is odd. If $x-z$ is even, then an even number multiply by an odd number is even number. The sum of even numbers is an even number. So if $y$ is even $x-z$ must be odd.

If $x-z$ is even, then $y$ must be odd, since the product of two numbers remains even as long as one of its product is even. The sum of an even number and an odd number is an odd number. 

Hence, in order for the expression $7x^2-3y-z+5x y+y^2x$ be odd, either $y$ must be odd, or $x-z$ must be odd.
]

Q3
Uses DIC?
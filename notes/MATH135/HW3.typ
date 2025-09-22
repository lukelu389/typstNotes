#import "../../preamble.typ": *

#let Title = "HW 3"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

Q1 \
a) $D^complement union E = {1, 2, 4, 6, 7} union {1, 2, 5, 8, 9, 10} = {1, 2, 4, 5, 6, 7, 8, 9, 10}$

b) $C union (D inter E) = {2, 3, 7, 9} union ({3, 5, 8, 9, 10} inter {1, 2, 5, 8, 9, 10} = {2, 3, 5, 7, 8, 9, 10}$

c) $(C inter E)^complement = {2, 9}^complement = {1, 3, 4, 5, 6, 7, 8, 10}$

d) $C union E - D = {1, 2, 3, 5, 7, 8, 9, 10} - {3, 5, 8, 9, 10} = {1, 2, 7}$

Q2
Prove for all integers $x, y, z$, if $7x^2-3y-z+5x y+y^2x$ is odd, then $y$ is odd or $x-z$ is odd

#proof[
  Let $x, y, z$ be arbitrary integers. \

  $7x^2-3y-z+5x y+y^2x = x(7x-1)+4x y+ y z(y+1) + y + (x-z)(1+y)$

  Notice that $x(7x-1)+4x y+ y z(y+1)$ will always be even.\
  $x(7x-1)$ is always even: \

  $"If "x" is odd, then" 7x "is odd and" 7x-1 "is even". \ "An even number multiply by any number remains even."$
  $"If" x "is even, then the similar applies, the product remains even"$

  $4x y$ is even and the proof is trivial and left as an exercise to the reader.

  $y z(y+1)$ is always even. If $y$ is even, then the product is even. If $y$ is odd, then $(y+1)$ is even, and the product remains even.

  Hence the parity of the entire expression relies on the parity of $y + (x-z)(1+y)$.
  If $y$ is even, then $y+1$ is odd. If $x-z$ is even, then an even number multiply by an odd number is even number. The sum of even numbers is an even number. So if $y$ is even $x-z$ must be odd.

  If $x-z$ is even, then $y$ must be odd, since the product of two numbers remains even as long as one of its product is even. The sum of an even number and an odd number is an odd number.

  Hence, in order for the expression $7x^2-3y-z+5x y+y^2x$ be odd, either $y$ must be odd, or $x-z$ must be odd.
]

Q3 \
Let $r, s in ZZ$
Given the expression:
$7 divides (3r^2(r-5)+15s^2)$ \

$(3r^2(r-5)+15s^2) = 3r^3 - 15r^2 + 15s^2 = 3r^3+15[(r+s)^2-2s(r+s)]$

By the Transivity of Divisibility, $7 divides (r+s)$ and $7 divides r^3$
By the Divisibility of Integer Combination, since $7 divides (r+s)$ and $7 divides r^3$, $7 divides 3r^3+15[(r+s)^2-2s(r+s)]$

#align(right)[$square$]
Q4
\
Let $x in ZZ$ \
Consider the contrapositive of the implication: \
$exists z in ZZ, forall y in ZZ, x-7 = (z-y+5)(z^2+1)-4 => 2x=6$ \
is same as $x-3 = (z-y+5)(z^2+1) => 2x = 6$ \

Choose $y = z + 5, => x-3 = (z-(y+5)-5)((y+5)^2+1) "becomes" x-3 = 0 dot ((y+5)^2+1) = 0$ \
Therefore, $x = 3 => 2x=6$ is true\
Since the contrapositive is true, thus the implication is true, \
$therefore forall x in ZZ, [(2x!=6) =>forall z in ZZ, exists y in ZZ, x-7 != (z-y+5)(z^2+1)-4]$ is true has been proven to be true
#align(right)[$square$]



Q5 \
a) False \


b) True \
Let $x in ZZ$. \
We assume $h = 24(x-8)$, and we have $h = g = f$ since if $x in H, x in F inter G$
We know that $h = 24(x-8) => 3 divides (h-1) <=> 3 divides (24(x-9))$
Similarily, $4 divides 24(x-8)$.
Thus we have proven that $forall x in ZZ, "if" x in H "then" x in F inter G$.
#align(right)[$square$]

Q6) \
a) $forall x, y in RR, P(x, y)$ with domain $K : {7k:k in ZZ}$ and open sentence $P_3(x, y) : x+ y in S$ \
b) $forall x in RR, exists y in RR, P(x, y)$ with domain $J : {j in ZZ: 4 divides.not j^2}$ and open sentence $P_4(x, y):x>y$ \
c) $exists x in RR, forall y in RR, P(x, y)$ with domain $L : {l in RR: |l-7|<1}$ and open sentence $P_1(x, y) : y <= x$ \
d) $exists x, y in RR, P(x, y)$ with domain $M: {m in NN: 10 divides m-2 }$and open sentence $P_2(x, y)$ \

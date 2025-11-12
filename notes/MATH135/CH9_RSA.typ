#import "../../preamble.typ": *

#let Title = "CH 9 - RSA Public-Key Encryption Scheme"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

== Implementing RSA Scheme

#info[*RSA*\

*Setting up RSA*\

  1. Randomly choose two large, distinct primes $p$ and $q$ and let $n= p q$.
  2. Select an arbitrary integer $e$ so that $gcd(e, (p-1)(q-1)) = 1$ and $1<e<(p-1)(q-1)$ 
  3. Solve the congruence $ e d equiv 1 space (mod (p-1)(q-1)) $
    for an integer $d$ where $1<d<(p-1)(q-1)$
  4. Publish the public key $(e, n)$
  5. Keep secret of the private key $(d, n)$, and the primes $p "and" q$


*Encryption of RSA*

  1. Obtain a copy of public key $(e, n)$
  2. Construct the plain text message $M$ where $0 <= M < n$
  3. Encrypt $M$ as the ciphertext $C$ given by $ C equiv M^e space (mod n) $ where $0<=C<n$
  4. Send $C$

*Decryption of RSA*

  1. Use the private key $(d,n)$ to decrypt the ciphertext $C$ as the received message $R$, given by $ R equiv C^d space (mod n) $ where $0<=R<n$
  2. Claim: $R = M$
]
\
Examples:

1. If $p=2, q = 11, e = 3$, compute $n "and" d$\

  $n = p q = 2 dot 11 = 22$, $e$ is already prime, thus coprime to any other number.\

  $1<=3<10$

  Solve $3d equiv 1 space (mod 10) ==> d equiv 7 space (mod 10)$\

  ANS: the public key is $(3, 22)$ and private key is $(7, 22)$

2. If $M = 8$, from (1), compute $C$\

  Given public key is $(3, 22)$ and $0<= 8 < 22$\

  $C equiv 8^3 equiv 512 equiv 6 space (mod 22) ==> C = 6$
  
3. If $C = 6$, from (2), compute $R$
  
  $R equiv C^d equiv 6^7 space (mod 22)$\

  $R equiv 6^7 space (mod 2) and R equiv 6^7 space (mod 11)$ by Splitting Modulus Theorem\

  $R equiv 0 space (mod 2) and R equiv (6^2)^3 dot 6  equiv 3^3 dot 6 equiv 81 dot 2 equiv 4 dot 2 equiv 8 space (mod 11) ==> R = 8$\

  $R = M = 8$\

4. Given $p=11, q = 13, e = 23$ find public and private keys\
  Public Key: (47, 143)\
  Private Key: (23, 143)
  
5. From (4), find $C$ if $M=25$\
  $C = 38$

6. Find $R$ from (4) and (5)\
  $R = 25$
\
== Why RSA Works
\
#info[*RSA Works*\

For all integers $p, q, n, e, d, M, C, R$ if 
1. $p, q$ are distinct
2. $n = p q$
3. $e$ and $d$ are positive integers s.t. $e d equiv 1 space (mod (p-1)(q-1))$ and $1<e, d<(p-1)(q-1)$
4. $0<=M<n$
5. $M^c equiv C space (mod n)$ where $0<=C<n$
6. $C^c equiv R space (mod n)$ where $0<=R<n$
then $R = M$
]

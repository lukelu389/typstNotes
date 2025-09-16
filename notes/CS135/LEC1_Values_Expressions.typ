#import "../../preamble.typ": *

#let Title = "CS 135 — Racket Quick Notes"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

Website: #link("student.cs.uwaterloo.ca/~cs135")

#v(8pt)

== Prefix Notation

```racket
(* (/ 6 2) (+ 1 2))
```

Racket uses *prefix notation*.  
A substitution step evaluates the leftmost / innermost sub-expression (i.e., the one that closes first).

#v(8pt)

== Arithmetic Operators

```racket
+ - \* /
```



These operators can take *two or more arguments* and associate left-to-right.

#v(4pt)

*Negation (unary `-`):*
```racket
(- 144) ; = -144
(- -21) ; = 21```



This is an *error* (needs ≥ 2 args for `+`):
```racket```
(+ 72)


#v(8pt)

== Practice Questions

```racket
(+ 3 (* 5 2))
(/ (- 10 4) 2)
(* 7 (+ 3 1))
(- (- (- 10 100)) (- -10 -15) (- -20))```



#v(8pt)

== Number Types (CS 135)

- *Nat* — natural numbers (includes 0)  
- *Int* — integers (includes Nat)  
- *Rat* — rationals (includes Int)

#v(8pt)

== Useful Functions

```racket
(quotient 43 7)   ; Int → takes Ints only
(remainder 43 7)  ; Nat → takes Ints only

(max 1 2 3 4) ; = 4
(min 1 2 3 4) ; = 1
(max 9)       ; = 9
(min 9)       ; = 9

(sqr 12)      ; = 144
(expt 3 4)    ; = 81  ; 3^4```



#v(8pt)

== Constant Definitions

*Constants cannot be redefined* after their initial definition.

```racket
(define x 7)
(define y (+ x 4)) ; x = 7, y = 11


Example:
```racket```
(define cost-per-pizza 12)
(define cost-per-drink 3)
(define pizzas-needed 8)
(define drinks-needed 15)

(+ (* cost-per-pizza pizzas-needed)
   (* cost-per-drink drinks-needed))```



#v(8pt)

== Boolean Expressions

- Relational operators: `<  >  <=  >=  =` → return *Bool* (`#true` or `#false`).  
- Logical operators: `and`, `or`, `not`.

*Short-circuit evaluation*
- `and` → returns `#false` immediately if any argument is false.  
- `or`  → returns `#true` immediately if any argument is true.

(DML/design recipe ideas can help keep expressions simple and readable.)
\
Example:
```racket
(+ (= 6 7) 8) ; false (0) + 8 = 8```



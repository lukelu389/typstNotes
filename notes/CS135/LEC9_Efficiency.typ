#import "../../preamble.typ": *

#let Title = "CS 135 — L09: Efficiency Patterns"
#set-title(Title)
#meta(title: Title, author: "Luke Lu")

Website: #link("student.cs.uwaterloo.ca/~cs135")

#v(8pt)

== Linear (one recursive call)

```racket
(define (appnd xs ys)
  (cond [(empty? xs) ys]
        [else (cons (first xs) (appnd (rest xs) ys))]))
```

== Quadratic (linear helper inside linear recursion)
Insertion sort:
```racket
(define (insert n xs)
  (cond [(empty? xs) (list n)]
        [(< n (first xs)) (cons n xs)]
        [else (cons (first xs) (insert n (rest xs)))]))

(define (sort xs)
  (cond [(empty? xs) empty]
        [else (insert (first xs) (sort (rest xs)))]))
```
`insert` is linear; called once per element → *O(n²) *.

== Avoid Exponential Branching
```racket
(define (larger a b) (if (> a b) a b))
(define (largest lst)
  (cond [(empty? (rest lst)) (first lst)]
        [else (larger (first lst) (largest (rest lst)))]))
```
#warn[Exponential growth often appears when you make *two recursive call* on *overlappinh* sublists.]

== Practice
- Identify linear/quadratic parts of your own code; refactor quadratic patterns using accumulators.

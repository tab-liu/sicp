; Demo of sqrt-iter
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqroot x)
  (sqrt-iter 1.0 x))

(sqroot 9)
(sqroot 4)
(sqroot 2)

; Exercise 1.6
; --- Question ---
; Alyssa P.Hacker doesn't see why if needs to be provided as a special form.
; "Why can't I juse define it as an ordinary procedure in terms of cond?" she
; asks. Alyssa's friend Eva Lu Ator claims this can indeed be done, and she
; defines a new version of if:

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
       (else else-clause)))

; Eva demonstrates the program for Alyssa:

(new-if (= 2 3) 0 5)
; => 5
(new-if (= 1 1) 0 5)
; => 0

; Delighted, Alyssa uses new-if to rewrite the square-root program:

(define (new-sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (new-sqrt-iter (improve guess x) x)))

; What happens when Alyssa attempts to use this to compute square roots? Explain.

; --- Answer ---
; https://sicp.readthedocs.io/en/latest/chp1/6.html

(new-if #t (display "true") (display "false-"))
; => false-true
; This means the `new-if` will evaluate both `then-clause` and `else-clause`
; But `if` will **return** one of the clause directly.

; See `if`
; (if <predicate> <consequent> <alternative>)
; To evaluate an `if` expression, the interpreter starts by evaluating the
; <predicate> part of the expression, If the <predicate> evaluates to a true
; value, the interpreter then evaluates the <consequent> and **returns** its
; value. Otherwise it evaluates the <alternative> and **returns** its value.

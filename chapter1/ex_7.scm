; Exercise 1.7
; --- Question ---
; The `good-enough?` test used in computing square roots will not be very
; effective for finding the square roots of very small numbers. Also, in real
; computers, arithmetic operations are almost always performed with limited
; precision. This makes our test inadequate for very large numbers. Explain
; these statements, with examples showing how the test fails for small and large
; numbers. An alternative strategy for implementing `good-enough?` is to watch
; how 'guess' changes form one iteration to the next and to stop when the change
; is a very small fraction of the 'guess'. Design a `square-root` procdure that
; uses this kind of end test. Does this work better for small and large numbers?

; --- Answer ---

; https://sicp.readthedocs.io/en/latest/chp1/7.html
; Heron func
(define (good-enough? old-guess new-guess)
  (> 0.01
     (/ (abs (- new-guess old-guess))
        old-guess)))

(define (improve guess x)
  (/ (+ guess
        (/ x guess))
     2))
; Exercise 1.4
; --- Question ---
; Observe that our model of evaluation allows for combinations whose operatiors
; are compound expressions. Use this observation to describe the behavior of the
; following prodedure:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; --- Answer ---

; meas a + |b|

; test
(= (a-plus-abs-b 1 2) 3)
(= (a-plus-abs-b 1 -2) 3)

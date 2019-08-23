; Exercise 1.18
(define (double x) (* x 2))
(define (halve x) (/ x 2))

(define (mul a b)
  (define (iter s a b)
    (cond ((= b 0) s)
          ((even? b) (iter s (double a) (halve b)))
          (else (iter (+ s a) a (-1+ b)))))
  (iter 0 a b))

; test
(= (mul 2 32) 64)
(= (mul 1 30) 30)
(= (mul 12 13) 156)
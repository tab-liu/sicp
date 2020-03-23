; Exercise 1.17
(define (double x) (* x 2))
(define (halve x) (/ x 2))

(define (mul a b)
    (cond ((= b 0) 0)
          ((even? b) (double (mul a (halve b))))
          (else (+ a (mul a (-1+ b))))))

; test
(= (mul 2 32) 64)
(= (mul 1 30) 30)
(= (mul 12 13) 156)

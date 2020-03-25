(load "ex_37.scm")

(define (D i)
    (if (= 2 (modulo i 3))
        (* 2 (/ (+ i 1) 3))
        1))

(display "hello")
(newline)

(cf (lambda (i) 1.0)
    D
    100)

(cf-iter (lambda (i) 1.0)
         D
         100)

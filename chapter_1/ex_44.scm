(load "ex_43.scm")

(define dx 0.00001)

(define (smooth f)
    (lambda (x) (/ (+ (f (- x dx))
                      (f x)
                      (f (+ x dx)))
                3)))

(define (n-fold f n)
    (repeated smooth n) f)

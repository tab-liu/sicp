(load "ex_37.scm")

(define (tan-cf x k)
    (define (N i)
        (if (= i 1)
            x
            (- (* x x))))

    (define (D i)
        (- (* 2 i) 1))

    (cf-iter N D k))

(tan 10)
(tan-cf 10 100)

;;; better
(define (tan-f x k)
    (let ((x2 (- (* x x))))
        (cf-iter (lambda (i) (if (= i 1) x x2))
                 (lambda (i) (- (* 2 i ) 1))
                 k)))

(tan-f 10 100)

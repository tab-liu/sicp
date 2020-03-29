(define (product term a next b)
    (if (> a b)
        1
        (* (term a)
           (product term (next a) next b))))

; factorial
(define (factorial n)
    (product (lambda (x) x)
             1
             (lambda (i) (+ i 1))
             n))

(factorial 10)

(define (product term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a)
                  (* result (term a)))))
    (iter a 1))

(factorial 10)

;;; pi
(define (pi n)
    (define (term k)
        (if (odd? k)
            (/ (+ k 1) (+ k 2))
            (/ (+ k 2) (+ k 1))))
    (exact->inexact
        (* 4
           (product term 1 (lambda (x) (+ x 1)) n))))

(pi 1)
(pi 100)
(pi 10000)

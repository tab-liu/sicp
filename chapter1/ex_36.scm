(define tolerance 0.00001)
(define (fixed-point f first-guess)
    (define (close-enough? v1 v2)
        (< (abs (- v1 v2))
           tolerance))
    (define (try guess)
        (display guess)
        (newline)
        (let ((next (f guess)))
            (if (close-enough? guess next)
                next
                (try next))))
    (try first-guess))

(define (fnd x)
    (fixed-point (lambda (y) (/ (log x) (log y))) 10.0))

(fnd 1000)

(define (average a b) (/ (+ a b) 2))

(define (average-dump f)
    (lambda (x) (/ (+ x (f x)) 2)))

(define (find-a x)
    (fixed-point (average-dump (lambda (y) (/ (log x) (log y)))) 10.0))

(find-a 1000)

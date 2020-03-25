(define (next x) (+ x 1))

(define (accumulate combiner null-value term a next b)
    (if (> a b)
        null-value
        (combiner (term a)
                  (accumulate combiner null-value term (next a) next b))))

(define (sum term a next b)
    (accumulate + 0 term a next b))

(define (produce term a next b)
    (accumulate * 1 term a next b))

; test
(sum (lambda (x) x)
     0
     (lambda (i) (+ i 1))
     10)

(produce (lambda (x) x)
         1
         (lambda (i) (+ i 1))
         10)

; iterative
(define (accumulate-iter combiner null-value term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a)
                  (combiner result (term a)))))
    (iter a null-value))

(define (sum-iter term a next b)
    (accumulate-iter + 0 term a next b))

(define (produce-iter term a next b)
    (accumulate-iter * 1 term a next b))

; test
(sum-iter (lambda (x) x)
     0
     (lambda (i) (+ i 1))
     10)

(produce-iter (lambda (x) x)
         1
         (lambda (i) (+ i 1))
         10)

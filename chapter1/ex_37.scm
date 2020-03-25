(define (cf n d k)
    (define (rec i)
        (if (> i k)
            0
            (/ (n i) (+ (d i) (rec (+ i 1))))))
    (rec 1))

(cf (lambda (i) 1.0)
    (lambda (i) 1.0)
    100)

(define (cf-iter n d k)
    (define (iter i result)
        (if (= i 0)
            result
            (iter (- i 1)
                  (/ (n i) (+ (d i) result)))))
    (iter k 0.0))

(cf-iter (lambda (i) 1.0)
         (lambda (i) 1.0)
         100)

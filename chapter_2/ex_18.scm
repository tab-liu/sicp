(define (reverse lst)
    (if (null? lst)
        '()
        (append (reverse (cdr lst)) (list (car lst)))))

(define (reverse-iter lst)
    (define (iter lst result)
        (if (null? lst)
            result
            (iter (cdr lst)
                  (append (list (car lst)) result))))
    (iter lst '()))

(reverse '(1 2 3))
(reverse '())

(reverse-iter '(1 2 3))
(reverse-iter '())

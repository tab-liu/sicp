(define (same-parity a . b)
  (define (make f lst result)
    (if (null? lst)
        result
        (make f
              (cdr lst)
              (append result
                      (if (f (car lst))
                             (list (car lst))
                             '())))))
  (if (even? a)
      (make even? b (list a))
      (make odd? b (list a))))

(same-parity 1 2 3 4 5 6 7)

(define (same-parity1 a . b)
  (filter (if (odd? a)
              odd?
              even?)
          (cons a b)))

(same-parity1 1 2 3 4 5 6 7)

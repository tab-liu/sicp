(define x (list (list 1 2 3) (list 4 5 6)))
(define y (list (list 1 2 3 (list 7 8 9) 0) (list 4 5 6)))
(define (leaf? x) (not (pair? x)))

(define (deep-reverse x)
  (if (null? x) x
      (append
        (deep-reverse (cdr x))
        (let ((a (car x)))
             (list (if (leaf? a) a (deep-reverse a)))))))

(deep-reverse x)
(deep-reverse y)
(deep-reverse (list 1 2 3 4))

(define (for-each1 fn lst)
  (if (not (null? lst))
      (begin (fn (car lst))
             (for-each1 fn (cdr lst)))))

(for-each1 (lambda (x)
             (newline)
             (display x))
           (list 1 2 3 4))

(define (for-each2 fn lst)
  (cond ((not (null? lst))
          (fn (car lst))
          (for-each2 fn (cdr lst)))))

(for-each2 (lambda (x)
             (newline)
             (display x))
           (list 11 12 13 14))

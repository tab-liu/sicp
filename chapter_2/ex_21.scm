(define (square-list items)
  (if (null? items)
    '()
    (cons (square (car items)) (square-list (cdr items)))))

(square-list '(1 2 3 4))

(define (square-list1 items)
  (map square items))

(square-list1 '(1 2 3 4 5))

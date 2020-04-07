(define nil '())

(define (subsets s)
  (if (null? s)
      (list nil)
      (let ((reset (subsets (cdr s))))
        (append reset (map (lambda (x)
                             (cons (car s) x))
                      reset)))))

(subsets (list 1 2 3))

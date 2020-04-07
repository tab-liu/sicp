(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (count-leaves tree)
  (accumulate +
              0
              (map (lambda (subtree)
                     (if (pair? subtree)
                       (count-leaves subtree)
                       1))
                    tree)))

(define x (list (list 1 2 (list 3 4) 5) (list 6 7) 8 9))

(count-leaves x)

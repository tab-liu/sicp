(define (fringe tree)
  (if (null? tree) tree
    (append (if (not (pair? (car tree)))
            (list (car tree))
            (fringe (car tree)))
          (fringe (cdr tree)))))

(define x (list (list 1 2 (list 3 4)) (list 5 6)))
(define y (list (list 1 2 ) (list 3 4)))

(fringe x)
(fringe y)

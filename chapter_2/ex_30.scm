(define (square-tree tree)
  (cond ((null? tree) tree)
        ((not (pair? tree)) (square tree))
        (else (cons (square-tree (car tree))
                    (square-tree (cdr tree))))))

(define x (list (list 1 2 (list 3 4)) (list 5 6) 7 8))
(square-tree x)

(define (square-tree-map tree)
  (map (lambda (sub-tree)
        (if (pair? sub-tree)
          (square-tree-map sub-tree)
          (square sub-tree)))
  tree))

(square-tree-map x)

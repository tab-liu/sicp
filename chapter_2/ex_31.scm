(define (tree-map fn tree)
  (map (lambda (sub-tree)
        (if (pair? sub-tree)
          (tree-map fn sub-tree)
          (fn sub-tree)))
  tree))

(define (square-tree tree)
  (tree-map square tree))

(define x (list (list 1 2 (list 3 4)) (list 5 6) 7 8))
(square-tree x)

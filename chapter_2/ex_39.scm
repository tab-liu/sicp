(load "ex_38.scm")

(define (reverse1 sequence)
  (fold-left (lambda (x y) (cons y x)) '() sequence))

(define (reverse2 sequence)
  (fold-right (lambda (x y) (append y (list x))) '() sequence))

(reverse1 (list 1 2 3 4))
(reverse2 (list 2 3 4 5))

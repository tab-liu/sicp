(define (make-accumulator num)
  (lambda (add_num)
    (set! num (+ num add_num))
    num))

(define A (make-accumulator 15))
(A 10)
(A 12)
